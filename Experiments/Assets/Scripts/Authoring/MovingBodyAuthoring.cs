using System;
using Unity.Collections;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Physics;
using Unity.Transforms;
using UnityEngine;

[Flags]
public enum CollisionLayers : uint
{
    Player = 1 << 0,
    Enemy = 1 << 1,
    Ground = 1 << 2
}

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

public partial struct MovingBodySystem : ISystem
{
    public void OnCreate(ref SystemState state) { }

    public void OnDestroy(ref SystemState state) { }

    public void OnUpdate(ref SystemState state)
    {
        foreach (var (target, transform, moving, velocity) in SystemAPI.Query<RefRO<Target>, RefRW<LocalTransform>, RefRW<MovingBody>, RefRW<PhysicsVelocity>>().WithAll<MovingBody>())
        {
            var targetPosition = SystemAPI.GetComponent<LocalTransform>(target.ValueRO.TargetEntity).Position;
            targetPosition.y = 0;
            var direction = math.normalize(targetPosition - transform.ValueRO.Position);

            if (math.distance(targetPosition, transform.ValueRO.Position) < target.ValueRO.MaxDistance)
            {
                velocity.ValueRW.Linear = moving.ValueRO.Velocity * direction;
                transform.ValueRW.Rotation = quaternion.LookRotation(targetPosition, math.up());
            }
            else
                velocity.ValueRW.Linear = new float3(0, 0, 0);
        }
    }
}