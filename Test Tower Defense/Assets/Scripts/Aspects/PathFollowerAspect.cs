using Unity.Collections;
using Unity.Entities;
using Unity.Mathematics;
using Unity.Transforms;

public readonly partial struct PathFollowerAspect : IAspect
{
    [Optional]
    private readonly RefRO<Speed> _speed;
    private readonly RefRW<NextPathIndex> _pathIndex;
    [ReadOnly]
    private readonly DynamicBuffer<Waypoints> _path;
    private readonly TransformAspect _transform;

    public void FollowPath(float time)
    {
        float3 direction = _path[_pathIndex.ValueRO.Value].Value - _transform.Position;
        if (math.distance(_transform.Position, _path[_pathIndex.ValueRO.Value].Value) < 0.1f)
        {
            _pathIndex.ValueRW.Value = (_pathIndex.ValueRO.Value + 1) % _path.Length;
        }
        float movementSpeed = _speed.IsValid ? _speed.ValueRO.Value : 1;
        _transform.Position += math.normalize(direction) * time * movementSpeed;
        _transform.LookAt(_path[_pathIndex.ValueRO.Value].Value);
    }

    public bool HasReachedEndOfPath()
    {
        return math.distance(_transform.Position, _path[_path.Length - 1].Value) < 0.1f;
    }
}
