using UnityEngine;
using System.Collections;

public class GameSoundCommands : MonoBehaviour {

	public static 	GameSoundCommands 	instance;
	public 			AudioClip 			StartMusic,StartSound,BoostStart,BoostStop,BoostRun,
										Shoot,bulletHit;
					AudioSource			BoostEngine;

					string				lastServerState;
	void Awake	(){instance=this;}

	void Start () {
		SoundManager.instance.PlayMusic(StartMusic);
	}
	

	void Update () {
		if(Input.GetKeyDown(KeyCode.Return))PlayStartSound();
	}

	public void PlayStartSound(){SoundManager.instance.PlaySFX(StartSound);print ("playing start sound");}
	public void PlayBoostStart(){SoundManager.instance.PlaySFX(BoostStart);print ("playing booststart sound");}
	public void PlayBoostStop(){SoundManager.instance.PlaySFX(BoostStop);print ("playing booststop sound");}
	public void PlayBoostEngine(float time){BoostEngine = SoundManager.instance.AddAudioLoopingSource(BoostRun,time);print ("adding EngineLoop");}
	public void StopBoostEngine(){SoundManager.instance.PlaySFX(StartSound);print ("playing boostStop sound");}
	public void PlayShoot(){SoundManager.instance.PlaySFX(Shoot);print("playing SHOOT sound");}
	public void PlayShootHit(float volume){SoundManager.instance.PlaySFX(bulletHit,volume);print("playing bulletHit");}

	void ListenToNetWorkManager(){
		print (networkManager._instance.state);
		switch (networkManager._instance.state) {
		case ("serverWait"):
			if(lastServerState=="waiting")
				PlayStartSound();
			break;
		default:
			break;
		}
		lastServerState = networkManager._instance.state;
	}

}
