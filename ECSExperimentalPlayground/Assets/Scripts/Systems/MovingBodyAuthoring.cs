using Unity.Entities;
using Unity.Mathematics;
using Unity.Physics;
using Unity.Transforms;
using UnityEngine;

public struct MovingBody : IComponentData
{
    public float Velocity;
    public float TurningAngle;
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

public partial struct MovingBodySystem : ISystem
{
    public void OnCreate(ref SystemState state) { }

    public void OnDestroy(ref SystemState state) { }

    public void OnUpdate(ref SystemState state)
    {
        foreach (var (target, transform, moving, velocity) in SystemAPI.Query<RefRO<Target>, RefRO<LocalTransform>, RefRW<MovingBody>, RefRW<PhysicsVelocity>>().WithAll<MovingBody>())
        {
            float3 targetPosition = SystemAPI.GetComponent<LocalTransform>(target.ValueRO.TargetEntity).Position;     
            float3 direction = math.normalize(targetPosition - transform.ValueRO.Position);
            
            if (math.distance(targetPosition, transform.ValueRO.Position) < target.ValueRO.MaxDistance)
            {
                velocity.ValueRW.Linear = moving.ValueRO.Velocity * direction;

                quaternion targetRotation = SystemAPI.GetComponent<LocalTransform>(target.ValueRO.TargetEntity).Rotation;
                //velocity.ValueRW.Angular.y = targetRotation.value.y;

                quaternion rotation = quaternion.LookRotationSafe(direction, math.up());
               velocity.ValueRW.Angular = new float3(transform.ValueRO.Rotation.value.x, rotation.value.y, transform.ValueRO.Rotation.value.z);
            }
            //else
            //    velocity.ValueRW.Linear = new float3(0, 0, 0);
        }
    }
}