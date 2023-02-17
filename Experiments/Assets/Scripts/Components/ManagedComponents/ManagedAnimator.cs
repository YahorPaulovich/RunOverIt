using System;
using Unity.Entities;
using Unity.Mathematics;
using UnityEngine;

public class ManagedAnimator : IComponentData, IDisposable, ICloneable
{
    public Animator Animator;

    public void Dispose()
    {
        if (Animator != null)
        {
            UnityEngine.Object.Destroy(Animator);
        }
    }

    public object Clone()
    {
        return new ManagedAnimator { Animator = UnityEngine.Object.Instantiate(Animator) };
    }
}
