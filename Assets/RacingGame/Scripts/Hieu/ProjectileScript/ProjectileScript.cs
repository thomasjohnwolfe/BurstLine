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

	static GameObject particle1,particle2;
	public string particle1name = "BladeParticle1";
	public string particle2name = "BladeParticle2";

	// Use this for initialization
	void Awake () {
		particle1 = particle1==null? GameObject.Find(particle1name):particle1;
		particle2 = particle2==null? GameObject.Find(particle2name):particle2;
		particle1.SetActive(false);
		particle2.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void DestroyGameObject(){
		Network.RemoveRPCs(this.networkView.viewID);
		Network.Destroy(this.networkView.viewID);
	}

	GameObject GetFreeParticle(){
		return particle1.activeSelf ? particle2 : particle1;
	}
	
	IEnumerator CoActivateParticle(GameObject particle){
		particle.SetActive(true);
		particle.transform.position = transform.position;
		particle.transform.rotation = transform.rotation;
		yield return new WaitForSeconds(2f);
		particle.SetActive(false);
	}

	protected void ActivateParticle(){
		StartCoroutine(CoActivateParticle(GetFreeParticle()));
	}
}
