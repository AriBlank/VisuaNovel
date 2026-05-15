using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class ScriptsReader: MonoBehaviour
{

    [SerializeField] private TextAsset InkJSONAsset;
    [SerializeField] private TMP_Text CharacterName;
    [SerializeField] private TMP_Text DialogueBox;
    [SerializeField] private GameObject TutorialPanel;

    private bool IsTutorial = false;
    private bool isTutorialOpen = false;
    public Story story;
    void Start()
    {
        story = new Story(InkJSONAsset.text);
        story.ChoosePathString("begining");
        ShowNextLine();
        TutorialPanel.SetActive(IsTutorial);
    }               
    public void ShowNextLine()
    {
        if (isTutorialOpen) return;
        if (!story.canContinue)
        {
            DialogueBox.text = "the end";
            return;
        }
        string line = story.Continue();
        CurrentTag(story.currentTags);
        ShowOutput(line);
    }

    public void ShowOutput(string line)
    {
        DialogueBox.text = line;
    }
    public void CurrentTag(List<string> tags)
    {
        foreach (string tag in tags)
        {
            string[] split = tag.Split(':');
            if (split.Length == 1)
            {
                if (tag.Trim() == "tutorial")
                {
                    TutorialPanel.SetActive(true);
                    DialogueBox.text = "";
                    CharacterName.text = "";
                    isTutorialOpen = true;
                }

                continue;
            }

            string key = split[0].Trim();
            string value = split[1].Trim();

            if (key == "name")
            {
                CharacterName.text = value;
            }
        }
    }
    public void CloseTutorial()
    {
        TutorialPanel.SetActive(false);
        isTutorialOpen = false;
    }
    void Update()
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame) 
        {
            ShowNextLine(); 
        }
    }  
}
