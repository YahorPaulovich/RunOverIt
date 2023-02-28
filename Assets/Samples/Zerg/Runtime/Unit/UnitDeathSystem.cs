using Unity.Entities;
using UnityEngine;

namespace ProjectDawn.Navigation.Sample.Zerg
{
    [RequireMatchingQueriesForUpdate]
    public partial class UnitDeathSystem : SystemBase
    {
        protected override void OnUpdate()
        {
            Entities.ForEach((Entity entity, Transform transform, in UnitDead unitDead) =>
            {
                var unitBrainState = EntityManager.GetComponentData<UnitBrain>(entity).State;
                unitBrainState = UnitBrainState.Death;

                // GameObject.Destroy(transform.gameObject);
                // EntityManager.DestroyEntity(entity);
            }).WithStructuralChanges().WithoutBurst().Run();
        }
    }
}
