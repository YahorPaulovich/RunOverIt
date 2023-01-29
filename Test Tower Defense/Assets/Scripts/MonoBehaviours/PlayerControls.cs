using UnityEngine;
using UnityEngine.InputSystem;

using Unity.Entities;
using Unity.Physics;
using Unity.Physics.Authoring;

public class PlayerControls : MonoBehaviour
{
    public InputAction Input;
    public Camera Camera;
    public int TowerIndex;

    public PhysicsCategoryTags BelongsTo;
    public PhysicsCategoryTags CollidesWith;

    private Entity _entity;
    private World _world;

    private void OnEnable()
    {
        Input.started += MouseClicked;
        Input.Enable();

        Camera = Camera == null ? Camera.main : Camera;

        _world = World.DefaultGameObjectInjectionWorld;
    }

    private void MouseClicked(InputAction.CallbackContext context)
    {
        Vector2 screenPosition = context.ReadValue<Vector2>();
        UnityEngine.Ray ray = Camera.ScreenPointToRay(screenPosition);

        //Debug.Log(ray.GetPoint(Camera.farClipPlane));

        if (_world.IsCreated && !_world.EntityManager.Exists(_entity))
        {
            _entity = _world.EntityManager.CreateEntity();
            _world.EntityManager.AddBuffer<TowerPlacementInput>(_entity);
        }

        CollisionFilter collisionFilter = CollisionFilter.Default;
        collisionFilter.BelongsTo = BelongsTo.Value;
        collisionFilter.CollidesWith = CollidesWith.Value;

        var input = new RaycastInput
        {
            Start = ray.origin,
            Filter = collisionFilter,
            End = ray.GetPoint(Camera.farClipPlane)
        };

        _world.EntityManager.GetBuffer<TowerPlacementInput>(_entity).Add(new TowerPlacementInput { Value = input, Index = TowerIndex });
    }

    private void OnDisable()
    {
        Input.started -= MouseClicked;
        Input.Disable();

        if (_world.IsCreated && _world.EntityManager.Exists(_entity))
        {
            _world.EntityManager.DestroyEntity(_entity);
        }
    }
}

public struct TowerPlacementInput : IBufferElementData
{
    public RaycastInput Value;
    public int Index;
}
