using System;
using Unity.Entities;
using Unity.Mathematics;
using UnityEngine;

public class ManagedParticleSystem : IComponentData, IDisposable, ICloneable
{
    public ParticleSystem ParticleSystem;

    public void Dispose()
    {
        if (ParticleSystem != null)
        {
            UnityEngine.Object.Destroy(ParticleSystem);
        }      
    }

    public object Clone()
    {
        return new ManagedParticleSystem { ParticleSystem = UnityEngine.Object.Instantiate(ParticleSystem) };
    }
}
