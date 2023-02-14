using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Unity.Entities;
using Random = Unity.Mathematics.Random;

public class SpawnerAuthoring : MonoBehaviour
{
    public GameObject Prefab;
    public float Timer;   
}

public class SpawnerBaker : Baker<SpawnerAuthoring>
{
    public override void Bake(SpawnerAuthoring authoring)
    {     
        SpawnData sd = default;
        sd.Prefab = GetEntity(authoring.Prefab);
        sd.Timer = authoring.Timer;
        sd.TimeToNextSpawn = authoring.Timer;
        AddComponent(sd);
    }
}
