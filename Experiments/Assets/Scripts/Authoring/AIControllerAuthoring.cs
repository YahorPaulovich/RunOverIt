using UnityEngine;
using Unity.Entities;

public class AIControllerAuthoring : MonoBehaviour
{
    public AIController AIController;

    class AIControllerBaker : Baker<AIControllerAuthoring>
    {
        public override void Bake(AIControllerAuthoring authoring)
        {
            AddComponent(authoring.AIController);
        }
    }
}