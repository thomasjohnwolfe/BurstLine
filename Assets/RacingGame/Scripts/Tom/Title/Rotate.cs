using UnityEngine;
using System.Collections;

public class Rotate : MonoBehaviour {

	public Vector3 rotateSpeed;
	
	void Start ()
	{
	
	}
	
	
	void Update ()
	{
		this.transform.rotation *= Quaternion.Euler(rotateSpeed*Time.deltaTime);
	}
}
