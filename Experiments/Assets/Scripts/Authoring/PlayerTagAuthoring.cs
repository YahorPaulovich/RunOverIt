using UnityEngine;
using Unity.Entities;

public class PlayerTagAuthoring : MonoBehaviour { }

public class PlayerTagBaker : Baker<PlayerTagAuthoring>
{
    public override void Bake(PlayerTagAuthoring authoring)
    {
        AddComponent(new PlayerTag());
    }
}
