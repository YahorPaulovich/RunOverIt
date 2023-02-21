using Unity.Burst;
using Unity.Collections;
using Unity.Entities;
using Unity.Physics.Systems;
using Unity.Physics;

[UpdateInGroup(typeof(FixedStepSimulationSystemGroup))]
[UpdateBefore(typeof(PhysicsSimulationGroup))] // We are updating before `PhysicsSimulationGroup` - this means that we will get the events of the previous frame
[BurstCompile]
public partial struct CollisionEventSystem : ISystem
{
    [BurstCompile]
    public void OnCreate(ref SystemState state) { }

    [BurstCompile]
    public void OnDestroy(ref SystemState state) { }

    [BurstCompile]
    public partial struct CollisionEventJob : ICollisionEventsJob
    {
        public void Execute(CollisionEvent collisionEvent)
        {
            if (collisionEvent.BodyIndexA == (uint)CollisionLayers.Ground
                && collisionEvent.BodyIndexB == (uint)CollisionLayers.Enemy)
            {
                UnityEngine.Debug.Log($"The enemy is grounded"); // Grounded
            }
            //UnityEngine.Debug.Log($"Collision between entities {collisionEvent.EntityA.Index} and {collisionEvent.EntityB.Index}");
        }
    }

    [BurstCompile]
    public void OnUpdate(ref SystemState state)
    {
        state.Dependency = new CollisionEventJob
        {
        }.Schedule(SystemAPI.GetSingleton<SimulationSingleton>(), state.Dependency);

        // ...
    }
}

//using Unity.Entities;
//using Unity.Mathematics;
//using Unity.Physics.Systems;
//using Unity.Physics;
//using Unity.Rendering;
//using Unity.Transforms;
//using Unity.Burst;
//using Unity.VisualScripting;
//using Unity.Jobs;
//using Unity.Collections;

//[UpdateInGroup(typeof(FixedStepSimulationSystemGroup))]
//[UpdateAfter(typeof(PhysicsSystemGroup))]
//[BurstCompile]
//public partial class CollisionEventSystem : ISystem
//{
//    [BurstCompile]
//    public void OnCreate(ref SystemState state)
//    {

//    }

//    [BurstCompile]
//    public void OnDestroy(ref SystemState state)
//    {

//    }

//    [BurstCompile]
//    public void OnUpdate(ref SystemState state)
//    {
//        EntityCommandBuffer ecb = SystemAPI.GetSingleton<BeginSimulationEntityCommandBufferSystem.Singleton>().
//CreateCommandBuffer(state.World.Unmanaged);
//        PhysicsWorld physicsWorld = SystemAPI.GetSingleton<PhysicsWorldSingleton>().PhysicsWorld;

//        state.Dependency = new CollisionEventJob().Schedule(state.Dependency);

//        foreach (var (target, transform) in SystemAPI.Query<RefRO<Target>, RefRW<LocalTransform>>())
//        {
//            var targetPosition = SystemAPI.GetComponent<LocalTransform>(target.ValueRO.TargetEntity).Position;
//            targetPosition.y = 0;
//            var direction = math.normalize(targetPosition - transform.ValueRO.Position);

//            if (math.distance(targetPosition, transform.ValueRO.Position) < target.ValueRO.MaxDistance)
//            {
//                //if (physicsWorld.OverlapSphere(transform.ValueRO.Position + math.up(), CollisionFilter.Default))
//                //{

//                //}
//            }
//        }
//    }

//    [BurstCompile]
//    public partial struct CollisionEventJob : ICollisionEventsJob
//    {
//        public void Execute(CollisionEvent collisionEvent)
//        {
//            UnityEngine.Debug.Log($"Collision between entities {collisionEvent.EntityA.Index} and {collisionEvent.EntityB.Index}");
//        }
//    }

//}
