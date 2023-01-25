using Unity.Entities;
using Unity.Mathematics;
using Unity.Rendering;
using Unity.Transforms;

public partial class Movement : SystemBase
{
    protected override void OnUpdate()
    {
        float deltaTime = SystemAPI.Time.DeltaTime;

        Entities.WithAll<RenderBounds>().ForEach((ref TransformAspect transform, ref NextPathIndex pathIndex,
            in DynamicBuffer<Waypoints> path, in Speed speed) =>
        {
            float3 direction = path[pathIndex.Value].Value - transform.Position;
            if (math.distance(transform.Position, path[pathIndex.Value].Value) < 0.1f)
            {
                pathIndex.Value = (pathIndex.Value + 1) % path.Length;
            }
            transform.Position += math.normalize(direction) * deltaTime * speed.Value;
        }).Schedule();
    }
}
