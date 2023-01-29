using Unity.Burst;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Physics;
using Unity.Physics.Systems;
using Unity.Transforms;

[UpdateInGroup(typeof(FixedStepSimulationSystemGroup))]
[UpdateAfter(typeof(PhysicsSystemGroup))]
[BurstCompile]
public partial struct ProjectileSystem : ISystem
{
    private ComponentLookup<LocalToWorld> _positionLookup;
    private ComponentLookup<Health> _health;

    [BurstCompile]
    public void OnCreate(ref SystemState state)
    {
        _positionLookup = SystemAPI.GetComponentLookup<LocalToWorld>(true);
        _health = SystemAPI.GetComponentLookup<Health>(false);
    }

    [BurstCompile]
    public void OnDestroy(ref SystemState state)
    {
    }

    [BurstCompile]
    public void OnUpdate(ref SystemState state)
    {
        var ecbBOS = SystemAPI.GetSingleton<BeginSimulationEntityCommandBufferSystem.Singleton>().CreateCommandBuffer(state.WorldUnmanaged);
        PhysicsWorldSingleton physicsWorld = SystemAPI.GetSingleton<PhysicsWorldSingleton>();
        foreach (var (towerData, transform) in SystemAPI.Query<RefRW<TowerData>, TransformAspect>())
        {
            towerData.ValueRW.TimeToNextSpawn -= SystemAPI.Time.DeltaTime;
            if (towerData.ValueRO.TimeToNextSpawn < 0)
            {
                ClosestHitCollector<DistanceHit> closestHitCollector = new ClosestHitCollector<DistanceHit>(towerData.ValueRO.Range);
                if (physicsWorld.OverlapSphereCustom(transform.WorldPosition, towerData.ValueRO.Range, ref closestHitCollector, towerData.ValueRO.Filter))
                {
                    towerData.ValueRW.TimeToNextSpawn = towerData.ValueRO.Timer;
                    Entity entity = ecbBOS.Instantiate(towerData.ValueRO.Prefab);
                    ecbBOS.SetComponent(entity, 
                        LocalTransform.FromMatrix(
                            float4x4.LookAt(transform.WorldPosition,
                            closestHitCollector.ClosestHit.Position,
                            transform.Up)));
                    ecbBOS.AddComponent(entity, new Target() { Value = closestHitCollector.ClosestHit.Entity });
                }

            }
        }

        _positionLookup.Update(ref state);

        foreach (var (speed, target, transform, entity) in SystemAPI.Query<RefRO<Speed>, RefRO<Target>, TransformAspect>().WithEntityAccess())
        {
            if (_positionLookup.HasComponent(target.ValueRO.Value))
            {
                transform.LookAt(_positionLookup[target.ValueRO.Value].Position);
                transform.WorldPosition = transform.WorldPosition + speed.ValueRO.Value * SystemAPI.Time.DeltaTime * transform.Forward;
            }
            else
            {
                ecbBOS.DestroyEntity(entity);
            }
        }

        _positionLookup.Update(ref state);

        _health.Update(ref state);

        foreach (var (target, transform, /*impact,*/ entity) in SystemAPI.Query<RefRO<Target>, TransformAspect/*, RefRO<Impact>*/>().WithEntityAccess())
        {
            if (_positionLookup.HasComponent(target.ValueRO.Value))
            {
                if (math.distance(_positionLookup[target.ValueRO.Value].Position, transform.WorldPosition) < 0.1f)
                {
                    Health health = _health[target.ValueRO.Value];
                    health.Value -= 5;
                    _health[target.ValueRO.Value] = health;

                    //Entity impactEntity = ecbBOS.Instantiate(impact.ValueRO.Value);
                    //ecbBOS.SetComponent(impactEntity,
                    //    LocalTransform.FromPosition(_positionLookup[target.ValueRO.Value].Position));

                    if (health.Value < 0)
                    {
                        ecbBOS.DestroyEntity(target.ValueRO.Value);
                    }
                    ecbBOS.DestroyEntity(entity);
                }
            }
        }


    }
}