using System.Collections;
using System.Collections.Generic;
using Unity.Entities;
using UnityEngine;
     
public class TowerRegisterAuthoring : MonoBehaviour
{
    public List<GameObject> Towers;

	class TowerRegisterBaker : Baker<TowerRegisterAuthoring>
    {
        public override void Bake(TowerRegisterAuthoring authoring)
        {
            var buffer = AddBuffer<Towers>();
            foreach (var tower in authoring.Towers)
            {
                buffer.Add(new Towers { Prefab = GetEntity(tower) });
            }
        }
    }
}

public struct Towers : IBufferElementData
{
    public Entity Prefab;
}
