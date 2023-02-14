using System.Runtime.Serialization;
using UnityEditor;
using UnityEngine;

public class GameObjectSerializer : ISerializationSurrogate
{
    public void GetObjectData(object obj, SerializationInfo info, StreamingContext context)
    {
        GameObject target = (GameObject)obj;
        info.AddValue("InstanceID", target.GetInstanceID());
    }

    public object SetObjectData(object obj, SerializationInfo info, StreamingContext context, ISurrogateSelector selector)
    {
        //GameObject target = (GameObject)obj;
        UnityEngine.Object gameObject = EditorUtility.InstanceIDToObject((int)info.GetValue("InstanceID", typeof(int)));
        return (GameObject)gameObject;
    }
}
