using UnityEngine;
using System.Collections;

public class UV_Randomizer : MonoBehaviour
{
	public Material m;
	public float 	repeatRate = .1f;
	public float 	Vrate=1f;
	public float 	Usmooth=0.2f;

	void Start (){
		InvokeRepeating("Animate",0,repeatRate);
	}

	IEnumerator Animate (){
		float timer =0;
		while(true)
		{
			timer+=repeatRate*Usmooth;
			m.SetTextureOffset("_MainTex",new Vector2(timer<=1?0:timer,Random.Range(0f,Vrate)));
			yield return new WaitForSeconds(repeatRate);
		}
	}
}

