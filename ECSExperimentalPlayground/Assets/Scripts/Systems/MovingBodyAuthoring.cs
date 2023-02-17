using Unity.Burst;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Physics;
using Unity.Transforms;
using UnityEngine;

public struct MovingBody : IComponentData
{
    public float Velocity;
}

public class MovingBodyAuthoring : MonoBehaviour
{
    public float Velocity;
}

class MovingBodyAuthoringBaker : Baker<MovingBodyAuthoring>
{
    public override void Bake(MovingBodyAuthoring authoring)
    {
        var component = new MovingBody
        {
            Velocity = authoring.Velocity
        };
        AddComponent(component);
    }
}

[BurstCompile]
public partial struct MovingBodySystem : ISystem
{
    [BurstCompile]
    public void OnCreate(ref SystemState state) { }

    [BurstCompile]
    public void OnDestroy(ref SystemState state) { }

    [BurstCompile]
    public void OnUpdate(ref SystemState state)
    {
        foreach (var (target, transform, moving, velocity) in SystemAPI.Query<RefRO<Target>, RefRW<LocalTransform>, RefRW<MovingBody>, RefRW<PhysicsVelocity>>().WithAll<MovingBody>())
        {
            float3 targetPosition = SystemAPI.GetComponent<LocalTransform>(target.ValueRO.TargetEntity).Position;     
            float3 direction = math.normalize(targetPosition - transform.ValueRO.Position);
            
            if (math.distance(targetPosition, transform.ValueRO.Position) < target.ValueRO.MaxDistance)
            {
                // quaternion.AxisAngle(math.up(), math.PI * 0.5f)
                //quaternion rotation = quaternion.LookRotation(direction, math.up());
                //transform.ValueRW.Rotation = quaternion.LookRotation(direction, math.up());

                velocity.ValueRW.Linear = moving.ValueRO.Velocity * direction;
            }
            else
                velocity.ValueRW.Linear = new float3(0, 0, 0);
        }
    }
}