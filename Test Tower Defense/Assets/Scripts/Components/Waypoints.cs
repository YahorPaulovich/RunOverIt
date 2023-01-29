using System;
using Unity.Entities;
using Unity.Mathematics;

[Serializable]
public struct Waypoints : IBufferElementData
{
    public float3 Value;
}
