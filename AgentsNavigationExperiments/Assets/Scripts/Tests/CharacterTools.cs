using UnityEngine;
using System.Collections;
using UnityEditor;
using System.IO;
using System;

[ExecuteInEditMode]
public class CharacterTools : MonoBehaviour
{
    [SerializeField, HideInInspector]
    private string className;

    private bool waitForCompile = false;

    //[System.Obsolete]
    private void Update()
    {
        if (string.IsNullOrEmpty(className))
            return;

        if (waitForCompile && EditorApplication.isCompiling)
            waitForCompile = false;

        if (!waitForCompile && !EditorApplication.isCompiling)
        {
            var gameObject = new GameObject(className);
            Debug.Log("Attempting to add " + className);
            gameObject.AddComponent(Type.GetType(className));
            //var c = UnityEngineInternal.APIUpdaterRuntimeServices.AddComponent(gameObject, "Assets/Scripts/Tests/CharacterTools.cs (26,21)", className);

            className = null;
        }
    }

    [ContextMenu("Create character")]
    private void CreateCharacter()
    {
        string name = "Number" + UnityEngine.Random.Range(0, 100).ToString();

        string nameTemplate = "{0}Character";
        string contentTemplate = @"using UnityEngine;

public class {0} : MonoBehaviour
{{
}}
";

        var className = string.Format(nameTemplate, name);
        var path = Application.dataPath + "/" + className + ".cs";

        var scriptFile = new StreamWriter(path);
        scriptFile.Write(string.Format(contentTemplate, className));
        scriptFile.Close();

        AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceSynchronousImport);
        AssetDatabase.Refresh();

        this.className = className;
        this.waitForCompile = true;
    }
}