using UnityEngine;
using System.Collections;

public class DrawGizmo : MonoBehaviour
{
	public Color gizmoColor = Color.white;
	public float sphereRadius = 1f;
	public float lineSize = 3f;
	void OnDrawGizmos(){
		Gizmos.color = gizmoColor;
		Gizmos.DrawSphere (this.transform.position, sphereRadius);
		Gizmos.color = Color.blue;
		Gizmos.DrawLine(this.transform.position,this.transform.position+this.transform.forward * lineSize);
		Gizmos.color = Color.green;
		Gizmos.DrawLine(this.transform.position,this.transform.position+this.transform.up * lineSize/2f);
		Gizmos.color = Color.red;
		Gizmos.DrawLine(this.transform.position,this.transform.position+this.transform.right * lineSize/2f);
	}
}

