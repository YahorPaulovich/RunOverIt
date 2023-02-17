using System.Collections.Generic;
using Unity.Entities;
using UnityEngine;

public class EnemyAuthoring : MonoBehaviour
{ 
    public GameObject Prefab;
    public float Speed;
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

        ManagedGameObject pgo = new ManagedGameObject();
        pgo.Prefab = authoring.Prefab;
        AddComponentObject(pgo);
    }
}
