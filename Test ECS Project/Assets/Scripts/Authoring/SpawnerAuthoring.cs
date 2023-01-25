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

    public List<Transform> Path => GetComponentsInChildren<Transform>().Where(go => go.gameObject != gameObject).ToList();
}

public class SpawnerBaker : Baker<SpawnerAuthoring>
{
    public override void Bake(SpawnerAuthoring authoring)
    {
        DynamicBuffer<Waypoints> path = AddBuffer<Waypoints>();
        foreach (var point in authoring.Path)
        {
            Waypoints wps = default;
            wps.Value = point.position;
            path.Add(wps);
        }

        SpawnData sd = default;
        sd.Prefab = GetEntity(authoring.Prefab);
        sd.Timer = authoring.Timer;
        sd.TimeToNextSpawn = authoring.Timer;
        AddComponent(sd);
    }
}
