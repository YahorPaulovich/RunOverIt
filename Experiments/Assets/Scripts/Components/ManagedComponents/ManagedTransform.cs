using System;
using Unity.Entities;
using Unity.Mathematics;
using UnityEngine;

public class ManagedTransform : ICleanupComponentData, IDisposable, ICloneable
{
    public Transform Transform;

    public void Dispose()
    {
        if (Transform != null)
        {
            UnityEngine.Object.Destroy(Transform.gameObject);
        }
    }

    public object Clone()
    {
        return new ManagedTransform { Transform = UnityEngine.Object.Instantiate(Transform) };
    }
}
