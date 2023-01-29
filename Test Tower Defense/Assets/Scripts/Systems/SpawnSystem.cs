using Unity.Burst;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Rendering;
using Unity.Transforms;

[BurstCompile]
public partial struct SpawnSystem : ISystem
{
    [BurstCompile]
    public void OnCreate(ref SystemState state)
    {
        
    }

    [BurstCompile]
    public void OnDestroy(ref SystemState state)
    {
        
    }

    [BurstCompile]
    public void OnUpdate(ref SystemState state)
    {
        var ecb = SystemAPI.GetSingleton<BeginFixedStepSimulationEntityCommandBufferSystem.Singleton>()
            .CreateCommandBuffer(state.WorldUnmanaged);

        foreach (var (spawner, path, position) in SystemAPI.Query<RefRW<SpawnData>, DynamicBuffer<Waypoints>, TransformAspect>())
        {
            spawner.ValueRW.TimeToNextSpawn -= SystemAPI.Time.DeltaTime;
            if (spawner.ValueRO.TimeToNextSpawn < 0)
            {
                spawner.ValueRW.TimeToNextSpawn = spawner.ValueRO.Timer;
                Entity entity = ecb.Instantiate(spawner.ValueRO.Prefab);
                var localTransform = LocalTransform.Identity;
                localTransform.Position = position.WorldPosition;
                ecb.SetComponent(entity, localTransform);

                var buffer = ecb.AddBuffer<Waypoints>(entity);
                buffer.AddRange(path.AsNativeArray());
                ecb.AddComponent<NextPathIndex>(entity);
            }
        }
    }
}
