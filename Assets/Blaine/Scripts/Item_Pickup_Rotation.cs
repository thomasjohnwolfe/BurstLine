using UnityEngine;
using System.Collections;

public class Item_Pickup_Rotation : MonoBehaviour {
	public float speed;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		this.transform.eulerAngles = new Vector3(Time.time*speed,Time.time*speed,Time.time*speed);
	}
}
