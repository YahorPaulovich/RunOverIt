using Unity.Burst;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Rendering;
using Unity.Transforms;
using UnityEngine;

[BurstCompile]
public partial struct UnmanagedComponentSystem : ISystem
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
        var ecbBOS = SystemAPI.GetSingleton<BeginSimulationEntityCommandBufferSystem.Singleton>().CreateCommandBuffer(state.WorldUnmanaged);

        foreach (var (pgo, entity) in SystemAPI.Query<UnmanagedGameObject>().WithEntityAccess())
        {
            GameObject go = GameObject.Instantiate(pgo.Prefab);
            go.AddComponent<GameObjectEntity>().AssignEntity(entity, state.World);

            ecbBOS.AddComponent(entity, new UnmanagedTransform() { Transform = go.transform });
            ecbBOS.AddComponent(entity, new UnmanagedAnimator() { Animator = go.GetComponent<Animator>() });

            ecbBOS.RemoveComponent<UnmanagedGameObject>(entity);
        }

        var ecbEOS = SystemAPI.GetSingleton<EndSimulationEntityCommandBufferSystem.Singleton>().CreateCommandBuffer(state.WorldUnmanaged);

        foreach (var (goTransform, goAnimator, transform, speed) in SystemAPI.Query<UnmanagedTransform, UnmanagedAnimator, TransformAspect, RefRO<Speed>>())
        {
            goTransform.Transform.position = transform.Position;
            goTransform.Transform.rotation = transform.Rotation;

            goAnimator.Animator.SetFloat("Speed", speed.ValueRO.Value);
        }

        foreach (var (goTransform, entity) in SystemAPI.Query<UnmanagedTransform>().WithNone<LocalToWorld>().WithEntityAccess())
        {
            if (goTransform.Transform != null)
            {
                GameObject.Destroy(goTransform.Transform.gameObject);
            }         
            ecbEOS.RemoveComponent<UnmanagedTransform>(entity);
        }
    }
}
