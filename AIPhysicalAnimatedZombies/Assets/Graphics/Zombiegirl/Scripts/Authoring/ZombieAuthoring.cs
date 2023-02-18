using System.Collections.Generic;
using Unity.Entities;
using UnityEngine;

public class ZombieAuthoring : MonoBehaviour
{ 
    public GameObject Prefab;
    public float Speed;
}

public class ZombieBaker : Baker<ZombieAuthoring>
{
    public override void Bake(ZombieAuthoring authoring)
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
