using System.Collections.Generic;
using Unity.Entities;
using UnityEngine;

public class EnemyAuthoring : MonoBehaviour
{
    public float Speed;
    public GameObject Prefab;
}

public class EnemyBaker : Baker<EnemyAuthoring>
{
    public override void Bake(EnemyAuthoring authoring)
    {
        if (authoring.Speed > 0f)
        {
            Speed speed = default;
            speed.Value = authoring.Speed;
            AddComponent(speed);
        }

        UnmanagedGameObject pgo = new UnmanagedGameObject();
        pgo.Prefab = authoring.Prefab;
        AddComponentObject(pgo);
    }
}
