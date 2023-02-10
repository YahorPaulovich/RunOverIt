#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

public class NewCSharpScriptProducer : MonoBehaviour
{
    private const string _path = "Assets\\Editor\\Incredible C# File Producer\\New CSharp Script Producer\\FileTemplates\\";

    private const string _emptyScriptTemplateName = "NewEmptyScriptTemplate.cs.txt";
    private const string _singletonScriptTemplateName = "NewEmptySingletonScriptTemplate.cs.txt";
    private const string _scriptableObjectClassTemplateName = "NewScriptableObjectClassTemplate.cs.txt";
    private const string _serializableClassTemplateName = "NewSerializableClassTemplate.cs.txt";

    [MenuItem("Assets/Create/C# Empty Script", false, 75)]
    public static void CreateNewCSharpEmptyScriptFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _emptyScriptTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewEmptyScript.cs");
    }

    [MenuItem("Assets/Create/C# Script By Object Name", false, 75)]
    public static void CreateNewCSharpScriptByObjectNameAndFromTemplateFile()
    {
        GameObject selected = Selection.activeObject as GameObject;
        if (selected == null || selected.name.Length == 0)
        {
            Debug.LogWarning("Selected object not Valid!");
            return;
        }
        string name = selected.name.Replace(" ", "_");
        name = name.Replace("-", "_");

        const string fullPathToTemplate = _path + _emptyScriptTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, name + ".cs");
    }

    [MenuItem("Assets/Create/C# Singleton Script", false, 75)]
    public static void CreateNewCSharpSingletonScriptFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _singletonScriptTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewEmptySingletonScript.cs");
    }

    [MenuItem("Assets/Create/C# Scriptable Object Class", false, 75)]
    public static void CreateNewCSharpScriptableObjectClassFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _scriptableObjectClassTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewScriptableObjectClass.cs");
    }

    [MenuItem("Assets/Create/C# Serializable Class", false, 75)]
    public static void CreateNewCSharpSerializableClassFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _serializableClassTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewSerializableClass.cs");
    }
}
#endif