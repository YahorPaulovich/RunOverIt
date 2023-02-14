using Unity.Entities;
using UnityEngine;

public class DamageableAuthoring : MonoBehaviour
{
    public float Health;

    class DamageableBaker : Baker<DamageableAuthoring>
    {
        public override void Bake(DamageableAuthoring authoring)
        {
            AddComponent(new Health() { Value = authoring.Health });
        }
    }
}
