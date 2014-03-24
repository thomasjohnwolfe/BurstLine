using UnityEngine;
using System.Collections;

public class LightEnabler : MonoBehaviour {

	public 	string 			lightTagName 	= "PointLight";
	public 	string 			playerName 		= "Player";
	public 	float 			enableDistance	= 150f;
	public	float			forwardDistance	= 50f;
			Transform 		player;
			GameObject[] 	pointLights;
			GameObject		g;

	void Start () {
		pointLights = GameObject.FindGameObjectsWithTag (lightTagName);
	}
	

	void Update () {
	
	}

	void FixedUpdate(){

		if (player != null) {
			foreach(GameObject light in pointLights){
				light.SetActive(Vector3.Distance(player.position+player.transform.forward*forwardDistance,light.transform.position)<enableDistance);
			}
		}
		else
			player = (g = GameObject.FindGameObjectWithTag (playerName))==null? null: g.transform;
	}
}
