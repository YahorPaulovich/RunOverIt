using UnityEngine;
using UnityEditor;

namespace ProjectDawn.Navigation.Hybrid.Editor
{
    [CustomEditor(typeof(SpatialPartitioningSettingsAuthoring))]
    class AgentPartitioningSettingsEditor : UnityEditor.Editor
    {
        static class Styles
        {
            public static readonly GUIContent CellSize = EditorGUIUtility.TrTextContent("Cell Size", "The size of single partition.");
        }

        SerializedProperty m_CellSize;

        public override void OnInspectorGUI()
        {
            serializedObject.Update();

            EditorGUI.BeginChangeCheck();
            EditorGUILayout.PropertyField(m_CellSize, Styles.CellSize);
            if (EditorGUI.EndChangeCheck())
            {
                var authoring = target as SpatialPartitioningSettingsAuthoring;
                if (authoring.HasEntitySettings)
                    authoring.EntitySettings = authoring.DefaultSettings;
            }

            serializedObject.ApplyModifiedProperties();
        }

        void OnEnable()
        {
            m_CellSize = serializedObject.FindProperty("CellSize");
        }
    }
}
