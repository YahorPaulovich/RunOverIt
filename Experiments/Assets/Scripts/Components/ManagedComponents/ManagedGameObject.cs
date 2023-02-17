using System;
using Unity.Entities;
using Unity.Mathematics;
using UnityEngine;

public class ManagedGameObject : IComponentData, IDisposable, ICloneable
{
    public GameObject Prefab;

    public void Dispose()
    {
        if (Prefab != null)
        {
            UnityEngine.Object.Destroy(Prefab);
        }
    }

    public object Clone()
    {
        return new ManagedGameObject { Prefab = UnityEngine.Object.Instantiate(Prefab) };
    }
}
