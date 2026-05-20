using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class ScriptsReader : MonoBehaviour
{

    [SerializeField] private TextAsset InkJSONAsset;
    [SerializeField] private TMP_Text CharacterName;
    [SerializeField] private TMP_Text DialogueBox;
    [SerializeField] private GameObject TutorialPanel;
    [SerializeField] private GameObject CockPanel;
    [Header("Параметри коктейля")]
    private int strength = 0;
    private int sweetness = 0;
    private int sourness = 0;
    private int bitterness = 0;
    private int spiciness = 0;
    private bool ice = false;
    private int totalIngredientsPoints = 0;


    [Header("UI елементи")]
    public TMP_Text pointsCount;
    public TMP_Text strengthCount;
    public TMP_Text sweetnessCount;
    public TMP_Text sournessCount;
    public TMP_Text bitternessCount;
    public TMP_Text spicinessCount;
    public TMP_Text iceStatusText;
    public Button serveButton;
    public Button resetButton;

    private bool isTutorialOpen = false;
    private bool isMixing = false;
    public Story story;
    void Start()
    {
        story = new Story(InkJSONAsset.text);
        story.ChoosePathString("begining");
        ShowNextLine();
        TutorialPanel.SetActive(isTutorialOpen);
        CockPanel.SetActive(isMixing);
        UpdateUI();
    }

    public void ShowNextLine()
    {
        if (isTutorialOpen) return;
        if (isMixing) return;

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
                if (tag.Trim() == "start_making_cock")
                {
                    StartCocktailMaking();
                }
                if(tag.Trim() == "clear_name")
                {
                    CharacterName.text = "";
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
    public void StartCocktailMaking()
    {
        isMixing = true;
        CockPanel.SetActive(true);
        DialogueBox.text = "";
        CharacterName.text = "";

    }
    public void StrengthIncrease()
    {
        if (strength < 5)
        {
            strength++;
            UpdateUI();
        }
    }
    public void SweetnessIncrease()
    {
        if (totalIngredientsPoints < 5)
        {
            sweetness++;
            totalIngredientsPoints++;
            UpdateUI();
        }
    }
    public void SournessIncrease()
    {
        if(totalIngredientsPoints < 5)
        {
            sourness++;
            totalIngredientsPoints++;
            UpdateUI();
        }
    }
    public void BitternessIncrease()
    {
        if(totalIngredientsPoints < 5)
        {
            bitterness++;
            totalIngredientsPoints++ ;
            UpdateUI();
        }
    }
    public void SpicinessIncrease()
    {
        if(totalIngredientsPoints < 5 && spiciness < 3)
        {
            spiciness++;
            totalIngredientsPoints++;
            UpdateUI();
        }
    }
    public void IsIceExist()
    {
        ice = !ice;
        UpdateUI();
    }
    public void ServeCock()
    {
        if (GetTotalPoints() == 0) return;
        CocktailData cocktail = new CocktailData
        {
            strength = strength,
            sweetness = sweetness,
            sourness = sourness,
            bitterness = bitterness,
            spiciness = spiciness,
            ice = ice
        };
        isMixing = false;
        OnCocktailServed( cocktail );
        CockPanel.SetActive(false);
        ResetCock();
    }
    private int GetTotalPoints()
    {
        return strength + totalIngredientsPoints;
    }
    public void ResetCock()
    {
        strength = 0;
        sweetness = 0;
        sourness = 0;
        bitterness = 0;
        spiciness = 0;
        ice = false;
        totalIngredientsPoints = 0;

        UpdateUI();
    }
    public void OnCocktailServed(CocktailData cocktail)
    {
        story.variablesState["cocktail_strength"] = cocktail.strength;
        story.variablesState["cocktail_sweetness"] = cocktail.sweetness;
        story.variablesState["cocktail_sourness"] = cocktail.sourness;
        story.variablesState["cocktail_bitterness"] = cocktail.bitterness;
        story.variablesState["cocktail_spiciness"] = cocktail.spiciness;
        story.variablesState["cocktail_ice"] = cocktail.ice;

        ShowNextLine();
    }

    private void UpdateUI()
    {
        strengthCount.text = strength.ToString();
        sweetnessCount.text = sweetness.ToString();
        sournessCount.text = sourness.ToString();
        bitternessCount.text = bitterness.ToString();
        spicinessCount.text = spiciness.ToString();
        pointsCount.text = $"{GetTotalPoints()}/10";
        iceStatusText.text = ice ? "Added" : "None";
    }

    void Update()
    {

    }  
}

[System.Serializable]
public class CocktailData
{
    public int strength;
    public int sweetness;
    public int sourness;
    public int bitterness;
    public int spiciness;
    public bool ice;
}
