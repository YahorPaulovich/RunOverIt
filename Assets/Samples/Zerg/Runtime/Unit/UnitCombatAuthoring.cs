using Unity.Entities;
using UnityEngine;
using ProjectDawn.Navigation.Hybrid;

namespace ProjectDawn.Navigation.Sample.Zerg
{
    [RequireComponent(typeof(UnitAuthoring))]
    public class UnitCombatAuthoring : MonoBehaviour
    {
        public float Damage = 10;
        public float AttackRange = 0.3f;

        public float AggressionRadius = 3f;
        public float Cooldown = 0.2f;
        public float Speed = 0.5f;

        Entity m_Entity;

        void Awake()
        {
            var world = World.DefaultGameObjectInjectionWorld;
            m_Entity = GetComponent<AgentAuthoring>().GetOrCreateEntity();
            world.EntityManager.AddComponentData(m_Entity, new UnitCombat
            {
                Range = AttackRange,
                AggressionRadius = AggressionRadius,
                Cooldown = Cooldown,
                Speed = Speed,
                Damage = Damage,
            });
            world.EntityManager.AddComponentData(m_Entity, new UnitFollow
            {
            });
        }

        void OnDestroy()
        {
            var world = World.DefaultGameObjectInjectionWorld;
            if (world != null)
            {
                world.EntityManager.RemoveComponent<UnitCombat>(m_Entity);
                world.EntityManager.RemoveComponent<UnitFollow>(m_Entity);
            }
        }
    }
}
