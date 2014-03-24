using UnityEngine;
using System.Collections;

public class TitleSoundCommands : MonoBehaviour
{
	public AudioClip StartMusic;
	void Start(){
		//StartCoroutine(PlayTitleMusic());
	}

	IEnumerator PlayTitleMusic(){
		//yield return new WaitForSeconds(.25f);
		//SoundManager.instance.PlayMusic(StartMusic);
		yield return null;
	}
}

