using UnityEngine;

public class CameraFollow : MonoBehaviour 
{
	public Transform VehicleTransform;
	[Range(1, 10)]
	public float FollowSpeed = 2f;
	[Range(1, 10)]
	public float LookSpeed = 5f;
	private Vector3 _initialCameraPosition;
    private Vector3 _initialVehiclePosition;
    private Vector3 _absoluteInitCameraPosition;

	private void Start()
	{
		_initialCameraPosition = gameObject.transform.position;
		_initialVehiclePosition = VehicleTransform.position;
		_absoluteInitCameraPosition = _initialCameraPosition - _initialVehiclePosition;
	}

    private void FixedUpdate()
	{
        // Look at vehicle
        Vector3 lookDirection = (new Vector3(VehicleTransform.position.x, VehicleTransform.position.y, VehicleTransform.position.z)) - transform.position;
		Quaternion rotation = Quaternion.LookRotation(lookDirection, Vector3.up);
		transform.rotation = Quaternion.Lerp(transform.rotation, rotation, LookSpeed * Time.deltaTime);

        // Move to vehicle
        Vector3 targetPosition = _absoluteInitCameraPosition + VehicleTransform.transform.position;
		transform.position = Vector3.Lerp(transform.position, targetPosition, FollowSpeed * Time.deltaTime);
	}
}
