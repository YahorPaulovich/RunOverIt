using System;
using System.Threading.Tasks;
using UnityEditor;
using UnityEngine;

public class ScriptPostprocessor : AssetPostprocessor
{
    //public static BinaryScriptDataSaver Saver = new BinaryScriptDataSaver();

    //private static ScriptData _scriptData = Saver.Load();
    //private static string _className = _scriptData.ClassName;
    //private static bool _waitForCompile = _scriptData.WaitForCompile;
    //private static GameObject _activeGameObject = _scriptData.ActiveGameObject;

    //[InitializeOnLoadMethod]
    //private static void OnInitialized()
    //{
    //    if (EditorPrefs.GetBool("HasNew"))
    //    {
    //        EditorPrefs.DeleteKey("HasNew");
    //        AssemblyReloadEvents.afterAssemblyReload += AddScripToSelectedObject;
    //    }
    //}

    //[UnityEditor.Callbacks.DidReloadScripts]
    //private static void OnScriptsReloaded()
    //{
    //    if (EditorApplication.isCompiling || EditorApplication.isUpdating)
    //    {
    //        Wait(5000f);
    //        EditorApplication.delayCall += AddScripToSelectedObject;
    //        return;
    //    }
    //}

    //private static async void Wait(float duration)
    //{
    //    await Task.Delay((int)(duration * 1000));
    //}

    //private static void AddScripToSelectedObject()
    //{
    //    Wait(10000f);

    //    Debug.Log("Attempting to add " + _className);
    //    _activeGameObject.AddComponent(Type.GetType(_className));
    //}

    //protected void OnPreprocessAsset()
    //{
    //    Debug.Log("className: " + _className + "; waitForCompile: " + _waitForCompile + "; activeGameObject: " + _activeGameObject);
    //    Debug.Log("assetPath: " + assetPath);

    //    if (assetPath.Contains(_className) ||
    //        assetPath.EndsWith(".cs", StringComparison.OrdinalIgnoreCase) ||
    //        assetPath.EndsWith(".dll", StringComparison.OrdinalIgnoreCase))
    //    {
    //        Debug.Log("Contains!");
    //        // do your thing        
    //        if (string.IsNullOrEmpty(_className))
    //            return;

    //        Debug.Log("Is not null or empty!");
    //        if (_waitForCompile && EditorApplication.isCompiling)
    //            _waitForCompile = false;
    //        Debug.Log("waitForCompile = false;");
    //    }
    //}
}