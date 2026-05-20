using UnityEngine;
using UnityEngine.SceneManagement;
public class GameMenuScript : MonoBehaviour
{
    [SerializeField] private GameObject pausePanel;
    [SerializeField] private SettingsScript settingsManager;
        
    private bool isPausePanel = false;
    void Start()
    {
        pausePanel.SetActive(isPausePanel);
    }

    public void PauseGame()
    {
        isPausePanel = true;
        pausePanel.SetActive(true);
        Time.timeScale = 0f;
    }

    public void ResumeGame()
    {
        isPausePanel =false;
        pausePanel.SetActive(false);
        Time.timeScale = 1f;
    }

    public void QuiiToMainMenu()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene("Menu");

    }
    void Update()
    {
        
    }
}
