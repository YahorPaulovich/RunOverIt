using Unity.Entities;
using Unity.Mathematics;

public struct SpawnData : IComponentData
{
    public Entity Prefab;
    public float Timer;
    public float TimeToNextSpawn;
}
