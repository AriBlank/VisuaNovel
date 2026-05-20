using UnityEngine;
using UnityEngine.SceneManagement;
public class MenuScript : MonoBehaviour
{
    [SerializeField] private GameObject SettingsPanel;
    private bool isSettingsPanel = false;
    void Start()
    {
        SettingsPanel.SetActive(isSettingsPanel);
    }
    public void QuitGame()
    {
        #if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false; 
        #else
            Application.Quit(); 
        #endif
    }
    public void StartNewGame()
    {
        SceneManager.LoadScene("test");
    }
    void Update()
    {
        
    }
}
