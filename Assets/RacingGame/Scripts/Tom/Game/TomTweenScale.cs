using UnityEngine;
using System.Collections;

public class TomTweenScale : MonoBehaviour
{

	public void Play(){
		StopCoroutine("CoPlay");
		StartCoroutine(CoPlay(2));
	}

	IEnumerator CoPlay(int numTimes){
		float timer=0;
		for(int i=0;i<numTimes;i++)
		{
			float scaleInit = 1f;
			float targetScale = 1.5f;
			float smooth = 2f;
			while(timer <=1.0f)
			{
				timer+=Time.deltaTime*smooth;
				transform.localScale = Mathf.Lerp(scaleInit, targetScale,timer)*Vector3.one;
				yield return null;
			}
			timer = 1f;
			print ("scaling out");
			while(timer >=0.0f)
			{
				timer-=Time.deltaTime*smooth;
				transform.localScale = Mathf.Lerp(scaleInit,targetScale,timer)*Vector3.one;
				yield return null;
			}
		}
		yield return null;
	}


	public void Reverse(){
		StopCoroutine("CoRev");
		StartCoroutine(CoRev(1));
	}

	IEnumerator CoRev(int numTimes){
		float timer=0;
		for(int i=0;i<numTimes;i++)
		{
			float scaleInit = .25f;
			float targetScale = 1f;
			float smooth = 2f;

			timer = 1f;
			print ("scaling out");
			while(timer >=0.0f)
			{
				timer-=Time.deltaTime*smooth;
				transform.localScale = Mathf.Lerp(scaleInit,targetScale,timer)*Vector3.one;
				yield return null;
			}
		}
		yield return null;
	}
}

