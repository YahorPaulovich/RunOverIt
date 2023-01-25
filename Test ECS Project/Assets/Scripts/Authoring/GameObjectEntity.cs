using Unity.Entities;
using UnityEngine;
     
public class GameObjectEntity : MonoBehaviour
{
    private Entity _entity;
    private EntityManager _entityManager;

    public void AssignEntity(Entity entity, EntityManager entityManager)
    {
        _entity = entity;
        _entityManager = entityManager;
    }

    private void OnDestroy()
    {
        if (_entityManager != null)
        {
            _entityManager.DestroyEntity(_entity);
        }
    }
}
