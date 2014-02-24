using UnityEngine;
using System.Collections;

public class SyncMovement : MonoBehaviour {
	float speed;
	float lastSynchronizationTime = 0f;
	float syncDelay = 0f;
	float syncTime = 0f;
	Vector3 syncStartPosition = Vector3.zero;
	Vector3 syncEndPosition = Vector3.zero;
	// Use this for initialization
	void Awake()
	{
		lastSynchronizationTime = Time.time;
	}

	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (networkView.isMine) {
			speed = this.rigidbody.velocity.magnitude;
			//networkView.RPC ("getSpeed",RPCMode.OthersBuffered);
			//Debug.Log ("Speed................." + speed);
		} 
		else {
			SyncedMovement();	
		}

	}
	
	private void SyncedMovement()
	{
		syncTime += Time.deltaTime;
		rigidbody.position = Vector3.Lerp(syncStartPosition, syncEndPosition, syncTime / syncDelay);
	}

	void OnSerializeNetworkView(BitStream stream, NetworkMessageInfo info)
	{
		Vector3 syncPosition = Vector3.zero;
		Vector3 syncVelocity = Vector3.zero;
		Quaternion syncRotation = Quaternion.identity;
		if (stream.isWriting)
		{
			syncPosition = rigidbody.position;
			stream.Serialize(ref syncPosition);
			
			syncVelocity = rigidbody.velocity;
			stream.Serialize(ref syncVelocity);

			syncRotation = rigidbody.rotation;
			stream.Serialize(ref syncRotation);
		}
		else
		{
			stream.Serialize(ref syncPosition);
			stream.Serialize(ref syncVelocity);
			stream.Serialize(ref syncRotation);
			
			syncTime = 0f;
			syncDelay = Time.time - lastSynchronizationTime;
			lastSynchronizationTime = Time.time;
			
			syncEndPosition = syncPosition + syncVelocity * syncDelay;
			syncStartPosition = rigidbody.position;
		}
	}
	/*
	[RPC] void getSpeed(){
		speed = this.rigidbody.velocity.magnitude;
	}
	*/

}
