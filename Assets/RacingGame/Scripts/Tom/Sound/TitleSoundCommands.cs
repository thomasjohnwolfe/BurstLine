using UnityEngine;
using System.Collections;

public class TitleSoundCommands : MonoBehaviour
{
	public AudioClip StartMusic;
	void Start(){
		SoundManager.instance.PlayMusic(StartMusic);
	}
}

