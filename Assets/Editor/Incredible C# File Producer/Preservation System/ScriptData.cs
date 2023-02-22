using System;
using UnityEngine;

[Serializable]
public class ScriptData
{
    public string ClassName { get; set; }
    public bool WaitForCompile { get; set; }
    public GameObject ActiveGameObject { get; set; }

    public ScriptData()
    {
        ClassName = string.Empty;
        WaitForCompile = false;
        ActiveGameObject = null;
    }

    public ScriptData(string className, bool waitForCompile, GameObject activeGameObject)
    {
        ClassName = className;
        WaitForCompile = waitForCompile;
        ActiveGameObject = activeGameObject;
    }
}
