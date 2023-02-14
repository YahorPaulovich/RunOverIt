using Unity.Entities;
using UnityEngine;

public struct Target : IComponentData
{
    public Entity TargetEntity;
    public float MaxDistance;
}

public class TargetAuthoring : MonoBehaviour
{
    public GameObject TargetPrefab;
    public float MaxDistance;
}

public class TargetAuthoringBaker : Baker<TargetAuthoring>
{
    public override void Bake(TargetAuthoring authoring)
    {
        var component = new Target
        {
            MaxDistance = authoring.MaxDistance,
            TargetEntity = GetEntity(authoring.TargetPrefab)
        };
        AddComponent(component);
    }
}