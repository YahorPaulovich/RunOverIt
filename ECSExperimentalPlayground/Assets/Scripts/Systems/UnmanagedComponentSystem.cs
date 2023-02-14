using Unity.Burst;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Rendering;
using Unity.Transforms;
using UnityEngine;

[BurstCompile]
public partial struct ManagedComponentSystem : ISystem
{
    [BurstCompile]
    public void OnCreate(ref SystemState state) { }

    [BurstCompile]
    public void OnDestroy(ref SystemState state) { }

    [BurstCompile]
    public void OnUpdate(ref SystemState state)
    {
        var ecbBOS = SystemAPI.GetSingleton<BeginSimulationEntityCommandBufferSystem.Singleton>().CreateCommandBuffer(state.WorldUnmanaged);

        foreach (var (pgo, entity) in SystemAPI.Query<ManagedGameObject>().WithEntityAccess())
        {
            GameObject go = GameObject.Instantiate(pgo.Prefab);
            go.AddComponent<GameObjectEntity>().AssignEntity(entity, state.World);

            ecbBOS.AddComponent(entity, new ManagedTransform() { Transform = go.transform });
            ecbBOS.AddComponent(entity, new ManagedAnimator() { Animator = go.GetComponent<Animator>() });

            ecbBOS.RemoveComponent<ManagedGameObject>(entity);
        }

        var ecbEOS = SystemAPI.GetSingleton<EndSimulationEntityCommandBufferSystem.Singleton>().CreateCommandBuffer(state.WorldUnmanaged);

        foreach (var (goTransform, goAnimator, transform, speed) in SystemAPI.Query<ManagedTransform, ManagedAnimator, TransformAspect, RefRO<Speed>>())
        {
            goTransform.Transform.position = transform.LocalPosition;
            goTransform.Transform.rotation = transform.LocalRotation;

            goAnimator.Animator.SetFloat("Speed", speed.ValueRO.Value);
        }

        foreach (var (goTransform, entity) in SystemAPI.Query<ManagedTransform>().WithNone<LocalToWorld>().WithEntityAccess())
        {
            if (goTransform.Transform != null)
            {
                UnityEngine.Object.Destroy(goTransform.Transform.gameObject);
            }         
            ecbEOS.RemoveComponent<ManagedTransform>(entity);
        }
    }
}
