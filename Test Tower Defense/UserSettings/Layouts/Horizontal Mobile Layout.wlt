%YAML 1.1
%TAG !u! tag:unity3d.com,2011:
--- !u!114 &1
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12004, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_PixelRect:
    serializedVersion: 2
    x: 0
    y: 43
    width: 1920
    height: 997
  m_ShowMode: 4
  m_Title: Simulator
  m_RootView: {fileID: 9}
  m_MinSize: {x: 875, y: 300}
  m_MaxSize: {x: 10000, y: 10000}
  m_Maximized: 1
--- !u!114 &2
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12006, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: SimulatorWindow
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 0
    y: 471
    width: 945
    height: 476
  m_MinSize: {x: 202, y: 221}
  m_MaxSize: {x: 4002, y: 4021}
  m_ActualView: {fileID: 19}
  m_Panes:
  - {fileID: 19}
  - {fileID: 13}
  m_Selected: 0
  m_LastSelected: 1
--- !u!114 &3
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12010, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children:
  - {fileID: 12}
  - {fileID: 2}
  m_Position:
    serializedVersion: 2
    x: 547
    y: 0
    width: 945
    height: 947
  m_MinSize: {x: 100, y: 200}
  m_MaxSize: {x: 8096, y: 16192}
  vertical: 1
  controlID: 5522
--- !u!114 &4
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12006, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: ProjectBrowser
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 0
    y: 408
    width: 547
    height: 539
  m_MinSize: {x: 231, y: 271}
  m_MaxSize: {x: 10001, y: 10021}
  m_ActualView: {fileID: 20}
  m_Panes:
  - {fileID: 20}
  - {fileID: 15}
  m_Selected: 0
  m_LastSelected: 1
--- !u!114 &5
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12010, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children:
  - {fileID: 8}
  - {fileID: 4}
  m_Position:
    serializedVersion: 2
    x: 0
    y: 0
    width: 547
    height: 947
  m_MinSize: {x: 100, y: 200}
  m_MaxSize: {x: 8096, y: 16192}
  vertical: 1
  controlID: 5531
--- !u!114 &6
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12010, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children:
  - {fileID: 5}
  - {fileID: 3}
  - {fileID: 7}
  m_Position:
    serializedVersion: 2
    x: 0
    y: 30
    width: 1920
    height: 947
  m_MinSize: {x: 300, y: 200}
  m_MaxSize: {x: 24288, y: 16192}
  vertical: 0
  controlID: 5509
--- !u!114 &7
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12006, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: InspectorWindow
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 1492
    y: 0
    width: 428
    height: 947
  m_MinSize: {x: 276, y: 71}
  m_MaxSize: {x: 4001, y: 4021}
  m_ActualView: {fileID: 21}
  m_Panes:
  - {fileID: 21}
  - {fileID: 16}
  m_Selected: 0
  m_LastSelected: 1
--- !u!114 &8
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12006, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 0
    y: 0
    width: 547
    height: 408
  m_MinSize: {x: 201, y: 221}
  m_MaxSize: {x: 4001, y: 4021}
  m_ActualView: {fileID: 22}
  m_Panes:
  - {fileID: 22}
  m_Selected: 0
  m_LastSelected: 0
--- !u!114 &9
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12008, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children:
  - {fileID: 10}
  - {fileID: 6}
  - {fileID: 11}
  m_Position:
    serializedVersion: 2
    x: 0
    y: 0
    width: 1920
    height: 997
  m_MinSize: {x: 875, y: 300}
  m_MaxSize: {x: 10000, y: 10000}
  m_UseTopView: 1
  m_TopViewHeight: 30
  m_UseBottomView: 1
  m_BottomViewHeight: 20
--- !u!114 &10
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12011, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 0
    y: 0
    width: 1920
    height: 30
  m_MinSize: {x: 0, y: 0}
  m_MaxSize: {x: 0, y: 0}
  m_LastLoadedLayoutName: Horizontal Mobile Layout
--- !u!114 &11
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12042, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 0
    y: 977
    width: 1920
    height: 20
  m_MinSize: {x: 0, y: 0}
  m_MaxSize: {x: 0, y: 0}
--- !u!114 &12
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12006, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: SceneView
  m_EditorClassIdentifier: 
  m_Children: []
  m_Position:
    serializedVersion: 2
    x: 0
    y: 0
    width: 945
    height: 471
  m_MinSize: {x: 202, y: 221}
  m_MaxSize: {x: 4002, y: 4021}
  m_ActualView: {fileID: 23}
  m_Panes:
  - {fileID: 23}
  - {fileID: 24}
  - {fileID: 18}
  - {fileID: 17}
  - {fileID: 14}
  m_Selected: 0
  m_LastSelected: 1
--- !u!114 &13
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12071, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 100, y: 100}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Animation
    m_Image: {fileID: -8166618308981325432, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 547
    y: 544
    width: 943
    height: 455
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_LockTracker:
    m_IsLocked: 0
  m_LastSelectedObjectID: 0
--- !u!114 &14
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12914, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 100, y: 100}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Animator
    m_Image: {fileID: -1673928668082335149, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 418
    y: 73
    width: 708
    height: 610
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_ViewTransforms:
    m_KeySerializationHelper:
    - {fileID: 8524281878890152394, guid: 65ed09bcd6506484292fa1a1927cef9a, type: 2}
    m_ValueSerializationHelper:
    - e00: 1
      e01: 0
      e02: 0
      e03: 0
      e10: 0
      e11: 1
      e12: 0
      e13: 0
      e20: 0
      e21: 0
      e22: 1
      e23: 0
      e30: 0
      e31: 0
      e32: 0
      e33: 1
  m_PreviewAnimator: {fileID: 0}
  m_AnimatorController: {fileID: 9100000, guid: 65ed09bcd6506484292fa1a1927cef9a,
    type: 2}
  m_BreadCrumbs:
  - m_Target: {fileID: 8524281878890152394, guid: 65ed09bcd6506484292fa1a1927cef9a,
      type: 2}
    m_ScrollPosition: {x: 0, y: 0}
  stateMachineGraph: {fileID: 0}
  stateMachineGraphGUI: {fileID: 0}
  blendTreeGraph: {fileID: 0}
  blendTreeGraphGUI: {fileID: 0}
  m_AutoLiveLink: 1
  m_MiniTool: 0
  m_LockTracker:
    m_IsLocked: 0
  m_CurrentEditor: 0
  m_LayerEditor:
    m_SelectedLayerIndex: 0
--- !u!114 &15
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12373, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 100, y: 100}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Audio Mixer
    m_Image: {fileID: 2344599766593239149, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 0
    y: 481
    width: 463
    height: 518
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_MixersTreeState:
    scrollPos: {x: 0, y: 0}
    m_SelectedIDs: 
    m_LastClickedID: 0
    m_ExpandedIDs: 12eb343c
    m_RenameOverlay:
      m_UserAcceptedRename: 0
      m_Name: 
      m_OriginalName: 
      m_EditFieldRect:
        serializedVersion: 2
        x: 0
        y: 0
        width: 0
        height: 0
      m_UserData: 0
      m_IsWaitingForDelay: 0
      m_IsRenaming: 0
      m_OriginalEventType: 11
      m_IsRenamingFilename: 0
      m_ClientGUIView: {fileID: 0}
    m_SearchString: 
    m_CreateAssetUtility:
      m_EndAction: {fileID: 0}
      m_InstanceID: 0
      m_Path: 
      m_Icon: {fileID: 0}
      m_ResourceFile: 
  m_LayoutStripsOnTop:
    m_VerticalSplitter:
      ID: 0
      splitterInitialOffset: 0
      currentActiveSplitter: -1
      realSizes:
      - 65
      - 35
      relativeSizes:
      - 0.65
      - 0.35000002
      minSizes:
      - 85
      - 105
      maxSizes:
      - 0
      - 0
      lastTotalSize: 0
      splitSize: 6
      xOffset: 0
      m_Version: 1
      oldRealSizes: 
      oldMinSizes: 
      oldMaxSizes: 
      oldSplitSize: 0
    m_HorizontalSplitter:
      ID: 0
      splitterInitialOffset: 0
      currentActiveSplitter: -1
      realSizes:
      - 60
      - 60
      - 60
      - 60
      relativeSizes:
      - 0.25
      - 0.25
      - 0.25
      - 0.25
      minSizes:
      - 85
      - 85
      - 85
      - 85
      maxSizes:
      - 0
      - 0
      - 0
      - 0
      lastTotalSize: 0
      splitSize: 6
      xOffset: 0
      m_Version: 1
      oldRealSizes: 
      oldMinSizes: 
      oldMaxSizes: 
      oldSplitSize: 0
  m_LayoutStripsOnRight:
    m_VerticalSplitter:
      ID: 0
      splitterInitialOffset: 0
      currentActiveSplitter: -1
      realSizes:
      - 60
      - 60
      - 60
      - 60
      relativeSizes:
      - 0.25
      - 0.25
      - 0.25
      - 0.25
      minSizes:
      - 100
      - 85
      - 85
      - 85
      maxSizes:
      - 0
      - 0
      - 0
      - 0
      lastTotalSize: 0
      splitSize: 6
      xOffset: 0
      m_Version: 1
      oldRealSizes: 
      oldMinSizes: 
      oldMaxSizes: 
      oldSplitSize: 0
    m_HorizontalSplitter:
      ID: 14836
      splitterInitialOffset: 0
      currentActiveSplitter: -1
      realSizes:
      - 160
      - 303
      relativeSizes:
      - 0.3
      - 0.7
      minSizes:
      - 160
      - 160
      maxSizes:
      - 0
      - 0
      lastTotalSize: 463
      splitSize: 6
      xOffset: 0
      m_Version: 1
      oldRealSizes: 
      oldMinSizes: 
      oldMaxSizes: 
      oldSplitSize: 0
  m_SectionOrder: 00000000030000000100000002000000
  m_LayoutMode: 1
  m_SortGroupsAlphabetically: 0
  m_ShowReferencedBuses: 1
  m_ShowBusConnections: 0
  m_ShowBusConnectionsOfSelection: 0
--- !u!114 &16
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12079, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 390, y: 390}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Lighting
    m_Image: {fileID: -1347227620855488341, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 1546
    y: 73
    width: 373
    height: 926
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
--- !u!114 &17
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12096, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 100, y: 100}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Physics Debug
    m_Image: {fileID: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 464
    y: 73
    width: 498
    height: 926
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_MainScrollPos: {x: 0, y: 0}
--- !u!114 &18
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 12070, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 880, y: 216}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Profiler
    m_Image: {fileID: -1089619856830078684, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 464
    y: 73
    width: 498
    height: 926
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_Recording: 1
  m_ActiveNativePlatformSupportModuleName: 
  m_AllModules:
  - rid: 8225542368299581440
  - rid: 8225542368299581441
  - rid: 8225542368299581442
  - rid: 8225542368299581443
  - rid: 8225542368299581444
  - rid: 8225542368299581445
  - rid: 8225542368299581446
  - rid: 8225542368299581447
  - rid: 8225542368299581448
  - rid: 8225542368299581449
  - rid: 8225542368299581450
  - rid: 8225542368299581451
  - rid: 8225542368299581452
  - rid: 8225542368299581453
  - rid: 8225542368299581454
  - rid: 8225542368299581455
  m_CallstackRecordMode: 1
  m_ClearOnPlay: 0
  references:
    version: 2
    RefIds:
    - rid: 8225542368299581440
      type: {class: CPUProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.CPUProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
        m_ViewType: 1
        updateViewLive: 0
        m_CurrentFrameIndex: -1
        m_HierarchyOverruledThreadFromSelection: 0
        m_ProfilerViewFilteringOptions: 1
        m_FrameDataHierarchyView:
          m_Serialized: 0
          m_TreeViewState:
            scrollPos: {x: 0, y: 0}
            m_SelectedIDs: 
            m_LastClickedID: 0
            m_ExpandedIDs: 
            m_RenameOverlay:
              m_UserAcceptedRename: 0
              m_Name: 
              m_OriginalName: 
              m_EditFieldRect:
                serializedVersion: 2
                x: 0
                y: 0
                width: 0
                height: 0
              m_UserData: 0
              m_IsWaitingForDelay: 0
              m_IsRenaming: 0
              m_OriginalEventType: 11
              m_IsRenamingFilename: 0
              m_ClientGUIView: {fileID: 0}
            m_SearchString: 
          m_MultiColumnHeaderState:
            m_Columns: []
            m_VisibleColumns: 
            m_SortedColumns: 
          m_ThreadIndexInThreadNames: 0
          m_DetailedViewType: 0
          m_DetailedViewSpliterState:
            ID: 0
            splitterInitialOffset: 0
            currentActiveSplitter: 0
            realSizes: []
            relativeSizes: []
            minSizes: []
            maxSizes: []
            lastTotalSize: 0
            splitSize: 0
            xOffset: 0
            m_Version: 1
            oldRealSizes: 
            oldMinSizes: 
            oldMaxSizes: 
            oldSplitSize: 0
          m_DetailedObjectsView:
            m_SelectedID: 0
            m_TreeViewState:
              scrollPos: {x: 0, y: 0}
              m_SelectedIDs: 
              m_LastClickedID: 0
              m_ExpandedIDs: 
              m_RenameOverlay:
                m_UserAcceptedRename: 0
                m_Name: 
                m_OriginalName: 
                m_EditFieldRect:
                  serializedVersion: 2
                  x: 0
                  y: 0
                  width: 0
                  height: 0
                m_UserData: 0
                m_IsWaitingForDelay: 0
                m_IsRenaming: 0
                m_OriginalEventType: 11
                m_IsRenamingFilename: 0
                m_ClientGUIView: {fileID: 0}
              m_SearchString: 
            m_MultiColumnHeaderState:
              m_Columns: []
              m_VisibleColumns: 
              m_SortedColumns: 
            m_VertSplit:
              ID: 0
              splitterInitialOffset: 0
              currentActiveSplitter: 0
              realSizes: []
              relativeSizes: []
              minSizes: []
              maxSizes: []
              lastTotalSize: 0
              splitSize: 0
              xOffset: 0
              m_Version: 1
              oldRealSizes: 
              oldMinSizes: 
              oldMaxSizes: 
              oldSplitSize: 0
          m_DetailedCallsView:
            m_SelectedID: -1
            m_VertSplit:
              ID: 0
              splitterInitialOffset: 0
              currentActiveSplitter: 0
              realSizes: []
              relativeSizes: []
              minSizes: []
              maxSizes: []
              lastTotalSize: 0
              splitSize: 0
              xOffset: 0
              m_Version: 1
              oldRealSizes: 
              oldMinSizes: 
              oldMaxSizes: 
              oldSplitSize: 0
            m_CalleesTreeView:
              m_ViewState:
                scrollPos: {x: 0, y: 0}
                m_SelectedIDs: 
                m_LastClickedID: 0
                m_ExpandedIDs: 
                m_RenameOverlay:
                  m_UserAcceptedRename: 0
                  m_Name: 
                  m_OriginalName: 
                  m_EditFieldRect:
                    serializedVersion: 2
                    x: 0
                    y: 0
                    width: 0
                    height: 0
                  m_UserData: 0
                  m_IsWaitingForDelay: 0
                  m_IsRenaming: 0
                  m_OriginalEventType: 11
                  m_IsRenamingFilename: 0
                  m_ClientGUIView: {fileID: 0}
                m_SearchString: 
              m_ViewHeaderState:
                m_Columns:
                - width: 150
                  sortedAscending: 1
                  headerContent:
                    m_Text: Called From
                    m_Image: {fileID: 0}
                    m_Tooltip: 'Parents the selected function is called from


                      (Press
                      ''F'' for frame selection)'
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 150
                  maxWidth: 1000000
                  autoResize: 1
                  allowToggleVisibility: 0
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Calls
                    m_Image: {fileID: 0}
                    m_Tooltip: Total number of calls in a selected frame
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: GC Alloc
                    m_Image: {fileID: 0}
                    m_Tooltip: 
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time ms
                    m_Image: {fileID: 0}
                    m_Tooltip: Total time the selected function spends within a parent
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time %
                    m_Image: {fileID: 0}
                    m_Tooltip: Shows how often the selected function was called from
                      the parent call
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                m_VisibleColumns: 0000000001000000020000000300000004000000
                m_SortedColumns: 03000000
            m_CallersTreeView:
              m_ViewState:
                scrollPos: {x: 0, y: 0}
                m_SelectedIDs: 
                m_LastClickedID: 0
                m_ExpandedIDs: 
                m_RenameOverlay:
                  m_UserAcceptedRename: 0
                  m_Name: 
                  m_OriginalName: 
                  m_EditFieldRect:
                    serializedVersion: 2
                    x: 0
                    y: 0
                    width: 0
                    height: 0
                  m_UserData: 0
                  m_IsWaitingForDelay: 0
                  m_IsRenaming: 0
                  m_OriginalEventType: 11
                  m_IsRenamingFilename: 0
                  m_ClientGUIView: {fileID: 0}
                m_SearchString: 
              m_ViewHeaderState:
                m_Columns:
                - width: 150
                  sortedAscending: 1
                  headerContent:
                    m_Text: Called From
                    m_Image: {fileID: 0}
                    m_Tooltip: 'Parents the selected function is called from


                      (Press
                      ''F'' for frame selection)'
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 150
                  maxWidth: 1000000
                  autoResize: 1
                  allowToggleVisibility: 0
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Calls
                    m_Image: {fileID: 0}
                    m_Tooltip: Total number of calls in a selected frame
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: GC Alloc
                    m_Image: {fileID: 0}
                    m_Tooltip: 
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time ms
                    m_Image: {fileID: 0}
                    m_Tooltip: Total time the selected function spends within a parent
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time %
                    m_Image: {fileID: 0}
                    m_Tooltip: Shows how often the selected function was called from
                      the parent call
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                m_VisibleColumns: 0000000001000000020000000300000004000000
                m_SortedColumns: 03000000
          m_FullThreadName: Main Thread
          m_ThreadName: Main Thread
          <threadId>k__BackingField: 0
          <threadIndex>k__BackingField: -1
          m_GroupName: 
    - rid: 8225542368299581441
      type: {class: GPUProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.GPUProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
        m_ViewType: 0
        updateViewLive: 0
        m_CurrentFrameIndex: -1
        m_HierarchyOverruledThreadFromSelection: 0
        m_ProfilerViewFilteringOptions: 1
        m_FrameDataHierarchyView:
          m_Serialized: 0
          m_TreeViewState:
            scrollPos: {x: 0, y: 0}
            m_SelectedIDs: 
            m_LastClickedID: 0
            m_ExpandedIDs: 
            m_RenameOverlay:
              m_UserAcceptedRename: 0
              m_Name: 
              m_OriginalName: 
              m_EditFieldRect:
                serializedVersion: 2
                x: 0
                y: 0
                width: 0
                height: 0
              m_UserData: 0
              m_IsWaitingForDelay: 0
              m_IsRenaming: 0
              m_OriginalEventType: 11
              m_IsRenamingFilename: 0
              m_ClientGUIView: {fileID: 0}
            m_SearchString: 
          m_MultiColumnHeaderState:
            m_Columns: []
            m_VisibleColumns: 
            m_SortedColumns: 
          m_ThreadIndexInThreadNames: 0
          m_DetailedViewType: 0
          m_DetailedViewSpliterState:
            ID: 0
            splitterInitialOffset: 0
            currentActiveSplitter: 0
            realSizes: []
            relativeSizes: []
            minSizes: []
            maxSizes: []
            lastTotalSize: 0
            splitSize: 0
            xOffset: 0
            m_Version: 1
            oldRealSizes: 
            oldMinSizes: 
            oldMaxSizes: 
            oldSplitSize: 0
          m_DetailedObjectsView:
            m_SelectedID: 0
            m_TreeViewState:
              scrollPos: {x: 0, y: 0}
              m_SelectedIDs: 
              m_LastClickedID: 0
              m_ExpandedIDs: 
              m_RenameOverlay:
                m_UserAcceptedRename: 0
                m_Name: 
                m_OriginalName: 
                m_EditFieldRect:
                  serializedVersion: 2
                  x: 0
                  y: 0
                  width: 0
                  height: 0
                m_UserData: 0
                m_IsWaitingForDelay: 0
                m_IsRenaming: 0
                m_OriginalEventType: 11
                m_IsRenamingFilename: 0
                m_ClientGUIView: {fileID: 0}
              m_SearchString: 
            m_MultiColumnHeaderState:
              m_Columns: []
              m_VisibleColumns: 
              m_SortedColumns: 
            m_VertSplit:
              ID: 0
              splitterInitialOffset: 0
              currentActiveSplitter: 0
              realSizes: []
              relativeSizes: []
              minSizes: []
              maxSizes: []
              lastTotalSize: 0
              splitSize: 0
              xOffset: 0
              m_Version: 1
              oldRealSizes: 
              oldMinSizes: 
              oldMaxSizes: 
              oldSplitSize: 0
          m_DetailedCallsView:
            m_SelectedID: -1
            m_VertSplit:
              ID: 0
              splitterInitialOffset: 0
              currentActiveSplitter: 0
              realSizes: []
              relativeSizes: []
              minSizes: []
              maxSizes: []
              lastTotalSize: 0
              splitSize: 0
              xOffset: 0
              m_Version: 1
              oldRealSizes: 
              oldMinSizes: 
              oldMaxSizes: 
              oldSplitSize: 0
            m_CalleesTreeView:
              m_ViewState:
                scrollPos: {x: 0, y: 0}
                m_SelectedIDs: 
                m_LastClickedID: 0
                m_ExpandedIDs: 
                m_RenameOverlay:
                  m_UserAcceptedRename: 0
                  m_Name: 
                  m_OriginalName: 
                  m_EditFieldRect:
                    serializedVersion: 2
                    x: 0
                    y: 0
                    width: 0
                    height: 0
                  m_UserData: 0
                  m_IsWaitingForDelay: 0
                  m_IsRenaming: 0
                  m_OriginalEventType: 11
                  m_IsRenamingFilename: 0
                  m_ClientGUIView: {fileID: 0}
                m_SearchString: 
              m_ViewHeaderState:
                m_Columns:
                - width: 150
                  sortedAscending: 1
                  headerContent:
                    m_Text: Called From
                    m_Image: {fileID: 0}
                    m_Tooltip: 'Parents the selected function is called from


                      (Press
                      ''F'' for frame selection)'
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 150
                  maxWidth: 1000000
                  autoResize: 1
                  allowToggleVisibility: 0
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Calls
                    m_Image: {fileID: 0}
                    m_Tooltip: Total number of calls in a selected frame
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: GC Alloc
                    m_Image: {fileID: 0}
                    m_Tooltip: 
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time ms
                    m_Image: {fileID: 0}
                    m_Tooltip: Total time the selected function spends within a parent
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time %
                    m_Image: {fileID: 0}
                    m_Tooltip: Shows how often the selected function was called from
                      the parent call
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                m_VisibleColumns: 0000000001000000020000000300000004000000
                m_SortedColumns: 03000000
            m_CallersTreeView:
              m_ViewState:
                scrollPos: {x: 0, y: 0}
                m_SelectedIDs: 
                m_LastClickedID: 0
                m_ExpandedIDs: 
                m_RenameOverlay:
                  m_UserAcceptedRename: 0
                  m_Name: 
                  m_OriginalName: 
                  m_EditFieldRect:
                    serializedVersion: 2
                    x: 0
                    y: 0
                    width: 0
                    height: 0
                  m_UserData: 0
                  m_IsWaitingForDelay: 0
                  m_IsRenaming: 0
                  m_OriginalEventType: 11
                  m_IsRenamingFilename: 0
                  m_ClientGUIView: {fileID: 0}
                m_SearchString: 
              m_ViewHeaderState:
                m_Columns:
                - width: 150
                  sortedAscending: 1
                  headerContent:
                    m_Text: Called From
                    m_Image: {fileID: 0}
                    m_Tooltip: 'Parents the selected function is called from


                      (Press
                      ''F'' for frame selection)'
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 150
                  maxWidth: 1000000
                  autoResize: 1
                  allowToggleVisibility: 0
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Calls
                    m_Image: {fileID: 0}
                    m_Tooltip: Total number of calls in a selected frame
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: GC Alloc
                    m_Image: {fileID: 0}
                    m_Tooltip: 
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time ms
                    m_Image: {fileID: 0}
                    m_Tooltip: Total time the selected function spends within a parent
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                - width: 60
                  sortedAscending: 0
                  headerContent:
                    m_Text: Time %
                    m_Image: {fileID: 0}
                    m_Tooltip: Shows how often the selected function was called from
                      the parent call
                  contextMenuText: 
                  headerTextAlignment: 0
                  sortingArrowAlignment: 2
                  minWidth: 60
                  maxWidth: 1000000
                  autoResize: 0
                  allowToggleVisibility: 1
                  canSort: 1
                  userData: 0
                m_VisibleColumns: 0000000001000000020000000300000004000000
                m_SortedColumns: 03000000
          m_FullThreadName: Main Thread
          m_ThreadName: Main Thread
          <threadId>k__BackingField: 0
          <threadIndex>k__BackingField: -1
          m_GroupName: 
    - rid: 8225542368299581442
      type: {class: RenderingProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.RenderingProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581443
      type: {class: MemoryProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.MemoryProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
        m_ViewSplit:
          ID: 0
          splitterInitialOffset: 0
          currentActiveSplitter: -1
          realSizes:
          - 0
          - 0
          relativeSizes:
          - 0.7
          - 0.3
          minSizes:
          - 450
          - 50
          maxSizes:
          - 0
          - 0
          lastTotalSize: 0
          splitSize: 6
          xOffset: 0
          m_Version: 1
          oldRealSizes: 
          oldMinSizes: 
          oldMaxSizes: 
          oldSplitSize: 0
    - rid: 8225542368299581444
      type: {class: AudioProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.AudioProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
        m_ShowInactiveDSPChains: 0
        m_HighlightAudibleDSPChains: 1
        m_DSPGraphZoomFactor: 1
    - rid: 8225542368299581445
      type: {class: VideoProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.VideoProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581446
      type: {class: PhysicsProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.PhysicsProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581447
      type: {class: Physics2DProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.Physics2DProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581448
      type: {class: NetworkingMessagesProfilerModule, ns: UnityEditorInternal.Profiling,
        asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.NetworkingMessagesProfilerModule,
          UnityEditor.CoreModule, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581449
      type: {class: NetworkingOperationsProfilerModule, ns: UnityEditorInternal.Profiling,
        asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.NetworkingOperationsProfilerModule,
          UnityEditor.CoreModule, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
        m_NetworkSplit:
          ID: 0
          splitterInitialOffset: 0
          currentActiveSplitter: -1
          realSizes:
          - 0
          - 0
          relativeSizes:
          - 0.2
          - 0.8
          minSizes:
          - 100
          - 100
          maxSizes:
          - 0
          - 0
          lastTotalSize: 0
          splitSize: 6
          xOffset: 0
          m_Version: 1
          oldRealSizes: 
          oldMinSizes: 
          oldMaxSizes: 
          oldSplitSize: 0
        msgNames:
        - UserMessage
        - ObjectDestroy
        - ClientRpc
        - ObjectSpawn
        - Owner
        - Command
        - LocalPlayerTransform
        - SyncEvent
        - SyncVars
        - SyncList
        - ObjectSpawnScene
        - NetworkInfo
        - SpawnFinished
        - ObjectHide
        - CRC
        - ClientAuthority
    - rid: 8225542368299581450
      type: {class: UIProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.UIProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581451
      type: {class: UIDetailsProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.UIDetailsProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581452
      type: {class: GlobalIlluminationProfilerModule, ns: UnityEditorInternal.Profiling,
        asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.GlobalIlluminationProfilerModule,
          UnityEditor.CoreModule, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581453
      type: {class: VirtualTexturingProfilerModule, ns: UnityEditorInternal.Profiling,
        asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.VirtualTexturingProfilerModule,
          UnityEditor.CoreModule, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
        m_VTProfilerView:
          rid: 8225542368299581456
    - rid: 8225542368299581454
      type: {class: FileIOProfilerModule, ns: UnityEditorInternal.Profiling, asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.FileIOProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581455
      type: {class: AssetLoadingProfilerModule, ns: UnityEditorInternal.Profiling,
        asm: UnityEditor.CoreModule}
      data:
        m_Identifier: UnityEditorInternal.Profiling.AssetLoadingProfilerModule, UnityEditor.CoreModule,
          Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
        m_PaneScroll: {x: 0, y: 0}
    - rid: 8225542368299581456
      type: {class: VirtualTexturingProfilerView, ns: UnityEditor, asm: UnityEditor.CoreModule}
      data:
        m_SortAscending: 0
        m_SortedColumn: -1
--- !u!114 &19
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 13974, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 200, y: 200}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Simulator
    m_Image: {fileID: 8720083202187608617, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 547
    y: 544
    width: 943
    height: 455
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_SerializedViewNames:
  - UnityEditor.GameView
  m_SerializedViewValues:
  - D:\George\Projects\Unity Projects\TermsOfReferenceForLoppiPoppiCompany\Library\PlayModeViewStates\4c3d0c8aee8fa7b4687ca02654eb3d15
  m_PlayModeViewName: Device Simulator
  m_ShowGizmos: 0
  m_TargetDisplay: 0
  m_ClearColor: {r: 0, g: 0, b: 0, a: 1}
  m_TargetSize: {x: 2256, y: 1080}
  m_TextureFilterMode: 0
  m_TextureHideFlags: 61
  m_RenderIMGUI: 1
  m_EnterPlayModeBehavior: 2
  m_UseMipMap: 0
  m_SimulatorState:
    controlPanelVisible: 0
    controlPanelWidth: 0
    controlPanelFoldoutKeys:
    - UnityEditor.DeviceSimulation.ApplicationSettingsPlugin
    controlPanelFoldoutValues: 00
    pluginNames:
    - UnityEditor.DeviceSimulation.ApplicationSettingsPlugin
    - UnityEngine.InputSystem.Editor.InputSystemPlugin
    pluginStates:
    - '{}'
    - '{}'
    scale: 39
    fitToScreenEnabled: 1
    rotationDegree: 90
    highlightSafeAreaEnabled: 0
    friendlyName: vivo NEX 3 5G
    networkReachability: 1
    systemLanguage: 10
--- !u!114 &20
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12014, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 230, y: 250}
  m_MaxSize: {x: 10000, y: 10000}
  m_TitleContent:
    m_Text: Project
    m_Image: {fileID: -5467254957812901981, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 0
    y: 481
    width: 546
    height: 518
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_SearchFilter:
    m_NameFilter: 
    m_ClassNames: []
    m_AssetLabels: []
    m_AssetBundleNames: []
    m_VersionControlStates: []
    m_SoftLockControlStates: []
    m_ReferencingInstanceIDs: 
    m_SceneHandles: 
    m_ShowAllHits: 0
    m_SkipHidden: 0
    m_SearchArea: 1
    m_Folders:
    - Assets
    m_Globs: []
    m_OriginalText: 
  m_ViewMode: 1
  m_StartGridSize: 16
  m_LastFolders:
  - Assets/Assets
  m_LastFoldersGridSize: 16
  m_LastProjectPath: D:\George\Projects\Unity Projects\Fruit Ninja-VR
  m_LockTracker:
    m_IsLocked: 0
  m_FolderTreeState:
    scrollPos: {x: 0, y: 0}
    m_SelectedIDs: fc620000
    m_LastClickedID: 25340
    m_ExpandedIDs: 00000000fc62000000630000026300000463000006630000086300000a6300000c6300002e630000f875000000ca9a3b
    m_RenameOverlay:
      m_UserAcceptedRename: 0
      m_Name: 
      m_OriginalName: 
      m_EditFieldRect:
        serializedVersion: 2
        x: 0
        y: 0
        width: 0
        height: 0
      m_UserData: 0
      m_IsWaitingForDelay: 0
      m_IsRenaming: 0
      m_OriginalEventType: 11
      m_IsRenamingFilename: 1
      m_ClientGUIView: {fileID: 4}
    m_SearchString: 
    m_CreateAssetUtility:
      m_EndAction: {fileID: 0}
      m_InstanceID: 0
      m_Path: 
      m_Icon: {fileID: 0}
      m_ResourceFile: 
  m_AssetTreeState:
    scrollPos: {x: 0, y: 0}
    m_SelectedIDs: 
    m_LastClickedID: 0
    m_ExpandedIDs: 00000000fc62000000630000026300000463000006630000086300000a6300000c6300002e630000f875000000ca9a3b
    m_RenameOverlay:
      m_UserAcceptedRename: 0
      m_Name: 
      m_OriginalName: 
      m_EditFieldRect:
        serializedVersion: 2
        x: 0
        y: 0
        width: 0
        height: 0
      m_UserData: 0
      m_IsWaitingForDelay: 0
      m_IsRenaming: 0
      m_OriginalEventType: 11
      m_IsRenamingFilename: 1
      m_ClientGUIView: {fileID: 0}
    m_SearchString: 
    m_CreateAssetUtility:
      m_EndAction: {fileID: 0}
      m_InstanceID: 0
      m_Path: 
      m_Icon: {fileID: 0}
      m_ResourceFile: 
  m_ListAreaState:
    m_SelectedInstanceIDs: 
    m_LastClickedInstanceID: 0
    m_HadKeyboardFocusLastEvent: 0
    m_ExpandedInstanceIDs: c6230000d698fffff2750000
    m_RenameOverlay:
      m_UserAcceptedRename: 0
      m_Name: 
      m_OriginalName: 
      m_EditFieldRect:
        serializedVersion: 2
        x: 0
        y: 0
        width: 0
        height: 0
      m_UserData: 0
      m_IsWaitingForDelay: 0
      m_IsRenaming: 0
      m_OriginalEventType: 11
      m_IsRenamingFilename: 1
      m_ClientGUIView: {fileID: 4}
    m_CreateAssetUtility:
      m_EndAction: {fileID: 0}
      m_InstanceID: 0
      m_Path: 
      m_Icon: {fileID: 0}
      m_ResourceFile: 
    m_NewAssetIndexInList: -1
    m_ScrollPosition: {x: 0, y: 0}
    m_GridSize: 16
  m_SkipHiddenPackages: 0
  m_DirectoriesAreaWidth: 224
--- !u!114 &21
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12019, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 275, y: 50}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Inspector
    m_Image: {fileID: -2667387946076563598, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 1492
    y: 73
    width: 427
    height: 926
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_ObjectsLockedBeforeSerialization: []
  m_InstanceIDsLockedBeforeSerialization: 
  m_PreviewResizer:
    m_CachedPref: 160
    m_ControlHash: -371814159
    m_PrefName: Preview_InspectorPreview
  m_LastInspectedObjectInstanceID: -1
  m_LastVerticalScrollValue: 0
  m_GlobalObjectId: 
  m_InspectorMode: 0
  m_LockTracker:
    m_IsLocked: 0
  m_PreviewWindow: {fileID: 0}
--- !u!114 &22
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12061, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 200, y: 200}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Hierarchy
    m_Image: {fileID: 7966133145522015247, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 0
    y: 73
    width: 546
    height: 387
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
  m_SceneHierarchy:
    m_TreeViewState:
      scrollPos: {x: 0, y: 0}
      m_SelectedIDs: 
      m_LastClickedID: 0
      m_ExpandedIDs: 02fbffff786100008061000084610000
      m_RenameOverlay:
        m_UserAcceptedRename: 0
        m_Name: 
        m_OriginalName: 
        m_EditFieldRect:
          serializedVersion: 2
          x: 0
          y: 0
          width: 0
          height: 0
        m_UserData: 0
        m_IsWaitingForDelay: 0
        m_IsRenaming: 0
        m_OriginalEventType: 11
        m_IsRenamingFilename: 0
        m_ClientGUIView: {fileID: 8}
      m_SearchString: 
    m_ExpandedScenes: []
    m_CurrenRootInstanceID: 0
    m_LockTracker:
      m_IsLocked: 0
    m_CurrentSortingName: TransformSorting
  m_WindowGUID: 4c969a2b90040154d917609493e03593
--- !u!114 &23
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12013, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 200, y: 200}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Scene
    m_Image: {fileID: 2593428753322112591, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 547
    y: 73
    width: 943
    height: 450
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData:
    - dockPosition: 0
      containerId: overlay-toolbar__top
      floating: 0
      collapsed: 0
      displayed: 1
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Tool Settings
      index: 0
      layout: 1
    - dockPosition: 0
      containerId: overlay-toolbar__top
      floating: 0
      collapsed: 0
      displayed: 1
      snapOffset: {x: -141, y: 149}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 1
      id: unity-grid-and-snap-toolbar
      index: 1
      layout: 1
    - dockPosition: 1
      containerId: overlay-toolbar__top
      floating: 0
      collapsed: 0
      displayed: 1
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: unity-scene-view-toolbar
      index: 0
      layout: 1
    - dockPosition: 1
      containerId: overlay-toolbar__top
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 1
      id: unity-search-toolbar
      index: 1
      layout: 1
    - dockPosition: 1
      containerId: overlay-toolbar__top
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Open Tile Palette
      index: 2
      layout: 4
    - dockPosition: 1
      containerId: overlay-toolbar__top
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Tilemap Focus
      index: 3
      layout: 4
    - dockPosition: 0
      containerId: overlay-container--left
      floating: 0
      collapsed: 0
      displayed: 1
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: unity-transform-toolbar
      index: 0
      layout: 2
    - dockPosition: 0
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 1
      snapOffset: {x: 67.5, y: 86}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Orientation
      index: 0
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Light Settings
      index: 0
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Camera
      index: 1
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Cloth Constraints
      index: 2
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Cloth Collisions
      index: 3
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Navmesh Display
      index: 4
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Agent Display
      index: 5
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Obstacle Display
      index: 6
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Occlusion Culling
      index: 7
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Physics Debugger
      index: 8
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Scene Visibility
      index: 9
      layout: 4
    - dockPosition: 1
      containerId: overlay-container--right
      floating: 0
      collapsed: 0
      displayed: 0
      snapOffset: {x: 0, y: 0}
      snapOffsetDelta: {x: 0, y: 0}
      snapCorner: 0
      id: Scene View/Particles
      index: 10
      layout: 4
  m_WindowGUID: cc27987af1a868c49b0894db9c0f5429
  m_Gizmos: 1
  m_OverrideSceneCullingMask: 6917529027641081856
  m_SceneIsLit: 1
  m_SceneLighting: 1
  m_2DMode: 0
  m_isRotationLocked: 0
  m_PlayAudio: 0
  m_AudioPlay: 0
  m_Position:
    m_Target: {x: -2.7942595, y: -3.6783493, z: 15.138671}
    speed: 2
    m_Value: {x: -2.7942595, y: -3.6783493, z: 15.138671}
  m_RenderMode: 0
  m_CameraMode:
    drawMode: 0
    name: Shaded
    section: Shading Mode
  m_ValidateTrueMetals: 0
  m_DoValidateTrueMetals: 0
  m_ExposureSliderValue: 0
  m_SceneViewState:
    m_AlwaysRefresh: 0
    showFog: 1
    showSkybox: 1
    showFlares: 1
    showImageEffects: 1
    showParticleSystems: 1
    showVisualEffectGraphs: 1
    m_FxEnabled: 1
  m_Grid:
    xGrid:
      m_Fade:
        m_Target: 0
        speed: 2
        m_Value: 0
      m_Color: {r: 0.5, g: 0.5, b: 0.5, a: 0.4}
      m_Pivot: {x: 0, y: 0, z: 0}
      m_Size: {x: 0, y: 0}
    yGrid:
      m_Fade:
        m_Target: 1
        speed: 2
        m_Value: 1
      m_Color: {r: 0.5, g: 0.5, b: 0.5, a: 0.4}
      m_Pivot: {x: 0, y: 0, z: 0}
      m_Size: {x: 1, y: 1}
    zGrid:
      m_Fade:
        m_Target: 0
        speed: 2
        m_Value: 0
      m_Color: {r: 0.5, g: 0.5, b: 0.5, a: 0.4}
      m_Pivot: {x: 0, y: 0, z: 0}
      m_Size: {x: 1, y: 1}
    m_ShowGrid: 1
    m_GridAxis: 1
    m_gridOpacity: 0.5
  m_Rotation:
    m_Target: {x: -0.16742077, y: 0.13503252, z: -0.02309961, w: -0.9764026}
    speed: 2
    m_Value: {x: -0.16742076, y: 0.13503252, z: -0.023099609, w: -0.9764025}
  m_Size:
    m_Target: 10
    speed: 2
    m_Value: 10
  m_Ortho:
    m_Target: 0
    speed: 2
    m_Value: 0
  m_CameraSettings:
    m_Speed: 1
    m_SpeedNormalized: 0.5
    m_SpeedMin: 0.001
    m_SpeedMax: 2
    m_EasingEnabled: 1
    m_EasingDuration: 0.4
    m_AccelerationEnabled: 1
    m_FieldOfViewHorizontalOrVertical: 60
    m_NearClip: 0.03
    m_FarClip: 10000
    m_DynamicClip: 1
    m_OcclusionCulling: 0
  m_LastSceneViewRotation: {x: -0.08717229, y: 0.89959055, z: -0.21045254, w: -0.3726226}
  m_LastSceneViewOrtho: 0
  m_ReplacementShader: {fileID: 0}
  m_ReplacementString: 
  m_SceneVisActive: 1
  m_LastLockedObject: {fileID: 0}
  m_ViewIsLockedToObject: 0
--- !u!114 &24
MonoBehaviour:
  m_ObjectHideFlags: 52
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 1
  m_Script: {fileID: 12003, guid: 0000000000000000e000000000000000, type: 0}
  m_Name: 
  m_EditorClassIdentifier: 
  m_MinSize: {x: 100, y: 100}
  m_MaxSize: {x: 4000, y: 4000}
  m_TitleContent:
    m_Text: Console
    m_Image: {fileID: -4327648978806127646, guid: 0000000000000000d000000000000000,
      type: 0}
    m_Tooltip: 
  m_Pos:
    serializedVersion: 2
    x: 418
    y: 73
    width: 1072
    height: 450
  m_ViewDataDictionary: {fileID: 0}
  m_OverlayCanvas:
    m_LastAppliedPresetName: Default
    m_SaveData: []
