#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using System.IO;
using System.Text;
//using System;
//using static Codice.Client.BaseCommands.Import.Commit;
//using Unity.VisualScripting;
//using System.Collections;
//using System.Threading.Tasks;

public class NewCSharpDOTSFileProducer : MonoBehaviour
{
    private const string _path = "Assets\\Editor\\Incredible C# File Producer\\New CSharp DOTS File Producer\\FileTemplates\\";

    private const string _componentStructTemplateName = "NewComponentStructTemplate.cs.txt";
    private const string _aspectStructTemplateName = "NewAspectStructTemplate.cs.txt";
    private const string _iSystemStructTemplateName = "NewISystemStructTemplate.cs.txt";
    private const string _systemBaseClassTemplateName = "NewSystemBaseClassTemplate.cs.txt";

    //public static BinaryScriptDataSaver Saver = new BinaryScriptDataSaver();

    //[SerializeField, HideInInspector]
    //public static string ClassName;

    //public static bool WaitForCompile = false;

    //public static GameObject ActiveGameObject;

    //[MenuItem(itemName: "Assets/Create/ECS C# File/C# Component Struct with C# Authoring Script | Test", isValidateFunction: false, priority: -1)]
    //public static void CreateNewComponentStructWithNewCSharpAuthoringScript()
    //{
    //    string fullPathToTemplate = _path + _componentStructTemplateName;
    //    ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewComponentStruct.cs");

    //    var selectionGUIDs = Selection.assetGUIDs;
    //    if (selectionGUIDs.Length == 0)
    //    {
    //        return;
    //    }

    //    var path = AssetDatabase.GUIDToAssetPath(selectionGUIDs[0]);
    //    if (!path.Contains(".cs"))
    //    {
    //        Debug.LogWarning("C# Component Struct is not selected!");
    //        return;
    //    }

    //    Debug.Log(path);
    //}

    [MenuItem(itemName: "Assets/Create/ECS C# File/C# Component Struct", isValidateFunction: false, priority: -1)]
    public static void CreateNewComponentStructFromTemplateFile()
    {
        string fullPathToTemplate = _path + _componentStructTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewComponentStruct.cs"); 
    }

    [MenuItem(itemName: "Assets/Create/ECS C# File/C# Authoring Script By Component Struct Name", isValidateFunction: false, priority: -1)]
    public static void CreateNewCSharpAuthoringScriptByComponentStructName()
    {
        var selected = Selection.activeObject;
        if (selected == null || selected.name.Length == 0)
        {
            Debug.LogWarning("Selected object not Valid");
            return;
        }

        var selectionGUIDs = Selection.assetGUIDs;
        if (selectionGUIDs.Length == 0)
        {
            return;
        }

        var path = AssetDatabase.GUIDToAssetPath(selectionGUIDs[0]);
        if (!path.Contains(".cs"))
        {
            Debug.LogWarning("C# Component Struct is not selected!");
            return;
        }

        string name = selected.name;
        path = path.Replace("/"+name+".cs", "");

        StringBuilder content = new StringBuilder();
        content.Append("using System.Collections;\n");
        content.Append("using System.Collections.Generic;\n");
        content.Append("using UnityEngine;\n");
        content.Append("using Unity.Entities;\n");       
        content.Append("using Random = Unity.Mathematics.Random;\n");
        content.Append("\n");
        content.Append($"public class {name}Authoring : MonoBehaviour\n");
        content.Append("{\n");
        content.Append("    public float Value;\n");
        content.Append("}\n");
        content.Append("\n");
        content.Append($"public class {name}Baker : Baker<{name}Authoring>\n");
        content.Append("{\n");
        content.Append($"    public override void Bake({name}Authoring authoring)\n");
        content.Append("    {\n");
        content.Append($"        AddComponent(new {name}\n");
        content.Append("        {\n");
        content.Append("            Value = authoring.Value\n");
        content.Append("        });\n");
        content.Append("    }\n");
        content.Append("}\n");
        var fullPath = path + "/"+name+"Authoring.cs";

        File.WriteAllText(fullPath, content.ToString());
        AssetDatabase.ImportAsset(fullPath);
    }

    [MenuItem(itemName: "GameObject/Create C# File/ECS C# File/C# Component Struct with C# Authoring Script By GameObject Name", isValidateFunction: false, priority: 10)]
    public static void CreateNewComponentStructWithNewCSharpAuthoringScriptByGameObjectName()
    {
        var selected = Selection.activeGameObject;
        if (selected == null || selected.name.Length == 0)
        {
            Debug.LogWarning("Selected object not Valid");
            return;
        }
        string name = selected.name;

        StringBuilder content = new StringBuilder();
        content.Append("using Unity.Entities;\n");
        content.Append("using Unity.Mathematics;\n");
        content.Append("\n");
        content.Append($"public struct {name}Data : IComponentData\n");
        content.Append("{\n");
        content.Append("    public Entity Prefab;\n");
        content.Append("}\n");
        content.ToString();

        string fullPath = "Assets/Scripts/Components/" + name + "Data.cs";
        File.WriteAllText(fullPath, content.ToString());
        AssetDatabase.ImportAsset(fullPath, ImportAssetOptions.ForceSynchronousImport | ImportAssetOptions.ForceUpdate);

        content = new StringBuilder();
        content.Append("using System.Collections;\n");
        content.Append("using System.Collections.Generic;\n");
        content.Append("using System.Linq;\n");
        content.Append("using UnityEngine;\n");
        content.Append("using Unity.Entities;\n");
        content.Append("using Random = Unity.Mathematics.Random;\n");
        content.Append("\n");
        content.Append($"public class {name}Authoring : MonoBehaviour\n");
        content.Append("{\n");
        content.Append("    public GameObject Prefab;\n");
        content.Append("}\n");
        content.Append("\n");
        content.Append($"public class {name}Baker : Baker<{name}Authoring>\n");
        content.Append("{\n");
        content.Append($"    public override void Bake({name}Authoring authoring)\n");
        content.Append("    {\n");
        content.Append("        \n");
        content.Append("    }\n");
        content.Append("}\n");

        fullPath = "Assets/Scripts/Authoring/" + name + "Authoring.cs";
        File.WriteAllText(fullPath, content.ToString());
        AssetDatabase.ImportAsset(fullPath, ImportAssetOptions.ForceSynchronousImport | ImportAssetOptions.ForceUpdate);
        AssetDatabase.Refresh(ImportAssetOptions.ForceUpdate);

        //        string contentTemplate = @"using UnityEngine;

        //public class {0} : MonoBehaviour
        //{{
        //}}
        //";   
        //        ClassName = name + "Authoring";      
        //        var path = "Assets/Scripts/Tests/" + ClassName + ".cs";

        //        var scriptFile = new StreamWriter(path);
        //        scriptFile.Write(string.Format(contentTemplate, ClassName));
        //        scriptFile.Close();

        //        AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceSynchronousImport);
        //        AssetDatabase.Refresh();

        //        WaitForCompile = true;
        //        ActiveGameObject = selected;

        //        Saver.Save(new ScriptData(ClassName, WaitForCompile, ActiveGameObject));
    }

    [MenuItem(itemName: "Assets/Create/ECS C# File/C# Aspect Struct", isValidateFunction: false, priority: -1)]
    public static void CreateNewCSharpAspectStructFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _aspectStructTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewAspectStruct.cs");
    }

    [MenuItem(itemName: "Assets/Create/ECS C# File/C# ISystem Struct", isValidateFunction: false, priority: -1)]
    public static void CreateNewCSharpISystemStructFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _iSystemStructTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewISystemStruct.cs");
    }

    [MenuItem(itemName: "Assets/Create/ECS C# File/C# SystemBase Class", isValidateFunction: false, priority: -1)]
    public static void CreateNewCSharpSystemBaseClassFromTemplateFile()
    {
        const string fullPathToTemplate = _path + _systemBaseClassTemplateName;
        ProjectWindowUtil.CreateScriptAssetFromTemplateFile(fullPathToTemplate, "NewSystemBaseClass.cs");
    }
}

internal class MyClass : EditorWindow
{
    private void OnGUI()
    {
        Debug.Log(Selection.activeGameObject.name);
        using (var scope = new EditorGUI.DisabledGroupScope(Selection.activeGameObject == null))
        {
            if (GUILayout.Button("Expand Recursive"))
            {
                var type = typeof(EditorWindow).Assembly.GetType("UnityEditor.SceneHierarchyWindow");
                var window = GetWindow(type);
                var exprec = type.GetMethod("SetExpandedRecursive");
                exprec!.Invoke(window, new object[] { Selection.activeGameObject.GetInstanceID(), true });
            }
        }
    }

    [MenuItem("TEST/TEST")]
    private static void Init()
    {
        GetWindow<MyClass>();
    }
}
public class MyTest
{
    //You can see this under GameObject/UI
    //Grouped together with the UI components
    //[MenuItem("GameObject/UI/Text Area", false, 10)]
    //public static void CreateTextArea()
    //{
    //    GameObject go = new GameObject("Name");
    //}
    //You can see this under GameObject
    [MenuItem("GameObject/My Custom Contex Menu Item 1/Subitem 1", false, 10)]
    public static void CreateTextArea2()
    {
        GameObject go = new GameObject("Name");
    }

    [MenuItem("GameObject/My Custom Contex Menu Item 1/Subitem 2", false, 10)]
    public static void CreateTextArea3()
    {
        GameObject go = new GameObject("Name");
    }

    [MenuItem("GameObject/My Custom Contex Menu Item 2", false, 10)]
    public static void CreateTextArea5()
    {
        GameObject go = new GameObject("Name");
    }
}
#endif