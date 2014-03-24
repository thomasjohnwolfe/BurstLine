using UnityEngine;
using System.Collections;

public class checkPointNode : MonoBehaviour {
	public int checkPoint = 0;
	public GameObject next;
	
	private GameObject WPM;
	
	// Use this for initialization
	void Start () {
		this.gameObject.renderer.enabled = false;
		WPM = GameObject.FindGameObjectWithTag("CheckPointManager");
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnDrawGizmos(){
		if (next != null){
			Gizmos.color = Color.green;
			Gizmos.DrawLine(this.transform.position,next.transform.position);
			Gizmos.color = Color.yellow;
			Gizmos.DrawSphere(Vector3.Lerp(this.transform.position,next.transform.position,(Time.time/2)%1),5f);
		}
	}
	
	void OnTriggerEnter(Collider collider){
		if (collider.gameObject.tag == "Player" || collider.gameObject.tag == "OtherPlayer"){
			Debug.Log("hit");
			GameObject.Find("ResetPosScript").GetComponent<ResetPos>().startPos = this.gameObject;
			WPM.SendMessage("addPlace",collider.gameObject.GetComponent<playerID>().ID);
		}
	}
	
	
}
