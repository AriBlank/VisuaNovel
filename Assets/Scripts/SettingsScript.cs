using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class SettingsScript : MonoBehaviour
{
    [Header("Audio Settings")]
    public AudioMixer audioMixer;
    public Slider musicSlider;
    public Toggle fullscreenToggle;
    public GameObject settingsPanel;

    void Start()
    {
        float savedVolume = PlayerPrefs.GetFloat("MusicVol", 0.5f);
        musicSlider.onValueChanged.RemoveListener(OnMusicVolumeChanged);
        musicSlider.value = savedVolume;
        musicSlider.onValueChanged.AddListener(OnMusicVolumeChanged);
        AudioManagerSc mp = FindAnyObjectByType<AudioManagerSc>();
        if (mp != null) mp.SetVolume(savedVolume);

        bool savedFullscreen = PlayerPrefs.GetInt("Fullscreen", 1) == 1;
        fullscreenToggle.isOn = savedFullscreen;
        SetFullscreen(savedFullscreen);
        fullscreenToggle.onValueChanged.AddListener(SetFullscreen);

        if (settingsPanel != null)
            settingsPanel.SetActive(false);
    }
    public void SetFullscreen(bool isFullscreen)
    {
        Screen.fullScreen = isFullscreen;
        PlayerPrefs.SetInt("Fullscreen", isFullscreen ? 1 : 0);
        PlayerPrefs.Save();
    } 
    void OnMusicVolumeChanged(float value)
    {
        AudioManagerSc mp = FindAnyObjectByType<AudioManagerSc>();
        if (mp != null) mp.SetVolume(value);
    }
    public void OpenSettings()
    {
        settingsPanel.SetActive(true);
    }

    public void CloseSettings()
    {
        settingsPanel.SetActive(false);
    }

    void Update()
    {
        
    }
}
