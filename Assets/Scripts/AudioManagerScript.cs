using UnityEngine;

public class AudioManagerSc : MonoBehaviour
{
    public static float musicVolume = 0.5f;
    private AudioSource source;
    [SerializeField] private AudioClip[] playlist;
    private int currentTrack = 0;

    void Start()
    {
        source = GetComponent<AudioSource>();
        if (source == null) source = gameObject.AddComponent<AudioSource>();

        musicVolume = PlayerPrefs.GetFloat("MusicVol", 0.5f);
        source.volume = musicVolume;
        source.loop = false;
        PlayTrack(0);
    }
    private void PlayTrack(int index)
    {
        if (index < 0 || index >= playlist.Length) return;
        currentTrack = index;
        source.clip = playlist[currentTrack];
        source.Play();
    }
    private void NextTrack()
    {

            int next = (currentTrack + 1) % playlist.Length;
        PlayTrack(next);
    }
    void Update()
    {
        if (source != null && !source.isPlaying && playlist.Length > 0)
        {
            NextTrack();
        }
    }
    public void SetVolume(float volume)
    {
        musicVolume = volume;
        if (source != null) source.volume = volume;
        PlayerPrefs.SetFloat("MusicVol", volume);
        PlayerPrefs.Save();
    }
}
