using UnityEngine;
using System.Collections;

public class ProjectileScript : MonoBehaviour {
	[HideInInspector]
	public float lifetime;
	public float damage;
	public float time;
	public float speed;
	public float range;

	public GameObject owner;
	public GameObject target;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
