using UnityEngine;
using UnityEngine.UI;
using CommandLine;

public class Launching : MonoBehaviour {

    private static string output; 

    [SerializeField]
    public Text outputText;

    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
    static void OnBeforeSceneLoadRuntimeMethod()
    {
        var line = System.Environment.CommandLine;
        var args = System.Environment.GetCommandLineArgs();
        var parsed = new Args(); 

        if(CommandLine.Parser.Default.ParseArguments(args, parsed))
        {
            output = parsed.Test;
        }
        else
        {
            output = "Parsing failed";
        }
    }

    void Start()
    {
        outputText.GetComponent<Text>().text = output;
    }
}

public class Args
{
    [Option('t', "test")]
    public string Test { get; set; }
}