using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SoundManager : MonoBehaviour {

	public static 	SoundManager 					instance;
	public 			GameObject 						audioSourceGOB;
	public 			AudioClip[] 					assignSoundsHere;
		 			Dictionary<string,AudioClip>	sounds 				= new Dictionary<string, AudioClip>();
					AudioSource 					sfxPlayer;
					AudioSource 					musicPlayer ;		
					AudioSource						boostPlayer;
	void Awake(){
		instance = this;
		AttachAudioPlayers(audioSourceGOB);
		PopulateAudioClipDictionary();
	}
	
	void Start () {}

	void Update () {}

	void PopulateAudioClipDictionary(){
		foreach(AudioClip a in assignSoundsHere){
			sounds.Add(a.name,a);
		}
	}

	void AttachAudioPlayers(GameObject gob){
		sfxPlayer	= audioSourceGOB.AddComponent(typeof(AudioSource))as AudioSource;
		musicPlayer = audioSourceGOB.AddComponent(typeof(AudioSource))as AudioSource;
	}

	public void PlaySFX(string audioClipName,float volumeLevel=1f){
		if(sounds.ContainsKey(audioClipName))
			sfxPlayer.PlayOneShot(sounds[audioClipName],volumeLevel);
		else print ("assign " + audioClipName + " in sound Manager");
	}
	public void PlaySFX(AudioClip clip,float volumeLevel=1f){
		sfxPlayer.PlayOneShot(clip,volumeLevel);
	}
	public void PlayMusic(string audioClipName,float volumeLevel=1f,bool looping=true){
		if(sounds.ContainsKey(audioClipName)){
			musicPlayer.clip	=	sounds[audioClipName];
			musicPlayer.volume 	= 	volumeLevel;
			musicPlayer.loop	=	looping;
			musicPlayer.Play();
		}
		else print ("assign " + audioClipName + " in sound Manager");
	}

	public void StopMusic(){
		musicPlayer.Stop();
	}

	public AudioSource AddAudioLoopingSource(AudioClip clip,float time){
		AudioSource a = audioSourceGOB.AddComponent(typeof(AudioSource))as AudioSource;
		a.clip = clip;
		a.loop = true;
		StartCoroutine(StartLoop(time,a));
		return a;
	}

	public void PlayMusic(AudioClip clip,float volumeLevel=1f,bool looping=true){
		print ("playing "+ clip.name);
		musicPlayer.clip	=	clip;
		musicPlayer.volume 	= 	volumeLevel;
		musicPlayer.loop	=	looping;
		musicPlayer.Play();
	}

	IEnumerator StartLoop(float time, AudioSource a){
		a.Play();
		yield return new WaitForSeconds(time);
		GameObject.Destroy(a);
	}
}
