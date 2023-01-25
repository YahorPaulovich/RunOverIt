#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

public class NewCSharpFileProducer : MonoBehaviour
{
    private const string _path = "Assets\\Editor\\Incredible C# File Producer\\New CSharp File Producer\\FileTemplates\\";

    private const string _emptyClassTemplateName = "NewEmptyClassTemplate.cs.txt";
    private const string _emptyEnumTemplatName = "NewEmptyEnumTemplate.cs.txt";
    private const string _emptyInterfaceTemplateName = "NewEmptyInterfaceTemplate.cs.txt";
    private const string _emptyStructTemplateName = "NewEmptyStructTemplate.cs.txt";

    [MenuItem("Assets/Create/C# File/C# Empty Class", false, 80)]
    public static void CreateNewCSharpEmptyClassFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _emptyClassTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewEmptyClass.cs");
    }

    [MenuItem("Assets/Create/C# File/C# Enum", false, 80)]
    public static void CreateNewCSharpEnumFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _emptyEnumTemplatName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewEmptyEnum.cs");
    }

    [MenuItem("Assets/Create/C# File/C# Interface", false, 80)]
    public static void CreateNewCSharpInterfaceFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _emptyInterfaceTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewEmptyInterface.cs");
    }

    [MenuItem("Assets/Create/C# File/C# Struct", false, 80)]
    public static void CreateNewCSharpStructFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _emptyStructTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewEmptyStruct.cs");
    }
}
#endif