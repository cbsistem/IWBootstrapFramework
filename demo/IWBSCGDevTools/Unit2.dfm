object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 1084
  Height = 1600
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '')
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  LayoutMgr = IWBSLayoutMgr1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  StyleSheet.URL = 'ui-themes/start/jquery-ui.css'
  ShowHint = True
  XPTheme = True
  KeepAlive = True
  DesignLeft = 8
  DesignTop = 8
  object IWBSRegion3: TIWBSCGJQRegion
    Left = 0
    Top = 0
    Width = 1084
    Height = 1600
    TabOrder = 0
    Version = '1.0'
    Align = alClient
    BSRegionType = bsrtContainer
    object IWBSRegion5: TIWBSCGJQRegion
      Left = 0
      Top = 61
      Width = 1084
      Height = 1539
      TabOrder = 1
      Version = '1.0'
      Align = alClient
      BSRegionType = bsrtRow
      object IWBSRegion8: TIWBSCGJQRegion
        Left = 0
        Top = 0
        Width = 1084
        Height = 1539
        RenderInvisibleControls = True
        TabOrder = 2
        Version = '1.0'
        Align = alClient
        BSRegionType = bsrtColumn
        object IWTabControl21: TIWBSTabControl
          Left = 0
          Top = 0
          Width = 1084
          Height = 1539
          RenderInvisibleControls = True
          ActiveTabFont.Color = clWebWHITE
          ActiveTabFont.FontFamily = 'Arial, Sans-Serif, Verdana'
          ActiveTabFont.Size = 10
          ActiveTabFont.Style = [fsBold]
          InactiveTabFont.Color = clWebBLACK
          InactiveTabFont.FontFamily = 'Arial, Sans-Serif, Verdana'
          InactiveTabFont.Size = 10
          InactiveTabFont.Style = []
          ActiveTabColor = clWebDARKGRAY
          InactiveTabColor = clWebLIGHTGRAY
          ActivePage = 0
          Align = alClient
          BorderOptions.NumericWidth = 0
          BorderOptions.BorderWidth = cbwNumeric
          BorderOptions.Style = cbsNone
          BorderOptions.Color = clNone
          Color = clWebSILVER
          ZIndex = 1000
          BSTabOptions.Pills = True
          DesignSize = (
            1084
            1539)
          object IWTabControl21Page6: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 4
            Title = 'Funtionality'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSButton37: TIWBSButton
              Left = 40
              Top = 40
              Width = 307
              Height = 25
              FriendlyName = 'IWBSButton37'
              TabOrder = -1
              OnAsyncClick = IWBSButton37AsyncClick
              Caption = 'Toggle Visibility'
            end
            object IWBSButton41: TIWBSButton
              Left = 44
              Top = 284
              Width = 249
              Height = 25
              FriendlyName = 'IWBSButton41'
              ScriptEvents = <
                item
                  EventCode.Strings = (
                    '$("#IWBSINPUT25").val("this text was setted with ScriptEvents");')
                  Event = 'onClick'
                end>
              TabOrder = -1
              Caption = 'Cap'
            end
            object IWBSRegion32: TIWBSCGJQRegion
              Left = 40
              Top = 90
              Width = 698
              Height = 60
              TabOrder = 12
              Version = '1.0'
              BSRegionType = bsrtWell
              object IWText11: TIWBSText
                Left = 20
                Top = 8
                Width = 540
                Height = 38
                FriendlyName = 'IWText11'
                TabOrder = -1
                Lines.Strings = (
                  '<h1>This is a Well</h1>'
                  '<h2>Example page header <small>Subtext for header</small></h2>')
                RawText = True
              end
            end
            object IWBSRegion33: TIWBSCGJQRegion
              Left = 38
              Top = 163
              Width = 700
              Height = 91
              TabOrder = 13
              Version = '1.0'
              BSRegionType = bsrtWell
              object IWBSInput25: TIWBSInput
                Left = 19
                Top = 35
                Width = 201
                Height = 25
                ExtraTagParams.Strings = (
                  '')
                FriendlyName = 'IWBSInput1'
                TabOrder = -1
                Caption = 'Input Type Text'
                Text = ''
                BSTextAlignment = bstaCenter
                PlaceHolder = 'Name'
              end
            end
          end
          object IWTabControl21Page5: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 4
            Title = 'Create components at runtime'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSRegion6: TIWBSCGJQRegion
              Left = 0
              Top = 0
              Width = 1084
              Height = 1519
              TabOrder = 14
              Version = '1.0'
              Align = alClient
              Style.Strings = (
                'margin: 1em')
              object IWBSInputForm4: TIWBSInputForm
                Left = 15
                Top = 12
                Width = 1020
                Height = 1029
                object IWBSRegion12: TIWBSCGJQRegion
                  Left = 27
                  Top = 12
                  Width = 538
                  Height = 60
                  TabOrder = 15
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton27: TIWBSButton
                    Left = 12
                    Top = 23
                    Width = 393
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    LockOnAsyncEvents = [aeClick]
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton27AsyncClick
                    Caption = 'Dinamically create modal dialog from TIWFrame'
                  end
                end
                object IWBSRegion26: TIWBSCGJQRegion
                  Left = 27
                  Top = 85
                  Width = 538
                  Height = 60
                  TabOrder = 16
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton28: TIWBSButton
                    Left = 12
                    Top = 24
                    Width = 393
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    LockOnAsyncEvents = [aeClick]
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton28AsyncClick
                    Caption = 'Dinamically create dialog from code'
                  end
                end
                object IWBSRegion13: TIWBSCGJQRegion
                  Left = 27
                  Top = 163
                  Width = 538
                  Height = 91
                  TabOrder = 17
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton31: TIWBSButton
                    Left = 12
                    Top = 16
                    Width = 393
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    LockOnAsyncEvents = [aeClick]
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton31AsyncClick
                    Caption = 'Dinamically create advanced dialog from code'
                  end
                  object IWBSInput23: TIWBSInput
                    Left = 12
                    Top = 47
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSInput6'
                    TabOrder = -1
                    Caption = ''
                    Text = ''
                    PlaceHolder = 'IWBSInput23'
                  end
                end
                object IWBSRegion17: TIWBSCGJQRegion
                  Left = 27
                  Top = 260
                  Width = 538
                  Height = 66
                  TabOrder = 18
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton26: TIWBSButton
                    Left = 12
                    Top = 13
                    Width = 265
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton26AsyncClick
                    Caption = 'Dinamically create frame with inputs'
                  end
                end
                object IWBSRegion11: TIWBSCGJQRegion
                  Left = 27
                  Top = 335
                  Width = 538
                  Height = 76
                  TabOrder = 19
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton21: TIWBSButton
                    Left = 12
                    Top = 7
                    Width = 397
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton21AsyncClick
                    Caption = 'Dinamically create button with anonymous proc'
                  end
                  object IWBSInput6: TIWBSInput
                    Left = 12
                    Top = 38
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSInput6'
                    TabOrder = -1
                    Caption = ''
                    Text = ''
                  end
                end
                object IWBSRegion27: TIWBSCGJQRegion
                  Left = 27
                  Top = 428
                  Width = 538
                  Height = 60
                  TabOrder = 20
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton32: TIWBSButton
                    Left = 9
                    Top = 20
                    Width = 393
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton32AsyncClick
                    Caption = 'Dinamically create Alert'
                  end
                end
                object IWBSRegion28: TIWBSCGJQRegion
                  Left = 27
                  Top = 505
                  Width = 538
                  Height = 104
                  TabOrder = 21
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton33: TIWBSButton
                    Left = 9
                    Top = 9
                    Width = 393
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton33AsyncClick
                    Caption = 'Dinamically create complex Alert'
                  end
                  object IWBSInput24: TIWBSInput
                    Left = 9
                    Top = 49
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSInput6'
                    TabOrder = -1
                    Caption = ''
                    Text = ''
                  end
                end
                object IWBSRegion31: TIWBSCGJQRegion
                  Left = 27
                  Top = 616
                  Width = 538
                  Height = 60
                  TabOrder = 22
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSButton34: TIWBSButton
                    Left = 9
                    Top = 20
                    Width = 393
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton26'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton34AsyncClick
                    Caption = 'Raise an exception'
                  end
                end
              end
            end
          end
          object IWTabControl21Page1: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 1
            Title = 'Input Group'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSRegion15: TIWBSCGJQRegion
              Left = 24
              Top = 13
              Width = 620
              Height = 574
              TabOrder = 9
              Version = '1.0'
              BSGridOptions.GridMDSpan = 6
              object IWBSInputGroup1: TIWBSInputGroup
                Left = 33
                Top = 119
                Width = 360
                Height = 43
                Caption = 'Button Left (large)'
                BSRelativeSize = bsrzLg
                object IWBSButton22: TIWBSButton
                  Left = 7
                  Top = 8
                  Width = 87
                  Height = 25
                  Hint = 'Press this button'
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton22'
                  TabOrder = -1
                  OnAsyncClick = IWBSButton22AsyncClick
                  Caption = 'IWBSButton22'
                end
                object IWBSInput8: TIWBSInput
                  Left = 101
                  Top = 12
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
              end
              object IWBSInputGroup2: TIWBSInputGroup
                Left = 33
                Top = 177
                Width = 360
                Height = 43
                Caption = 'Button Right'
                object IWBSButton23: TIWBSButton
                  Left = 231
                  Top = 8
                  Width = 98
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton22'
                  TabOrder = -1
                  Caption = 'IWBSButton22'
                end
                object IWBSInput9: TIWBSInput
                  Left = 99
                  Top = 8
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
              end
              object IWBSInputGroup3: TIWBSInputGroup
                Left = 33
                Top = 234
                Width = 360
                Height = 51
                Caption = 'Two Buttons (small)'
                BSRelativeSize = bsrzSm
                object IWBSButton24: TIWBSButton
                  Left = 242
                  Top = 8
                  Width = 91
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton22'
                  TabOrder = -1
                  BSGlyphicon = 'arrow-down'
                  Caption = 'IWBSButton22'
                end
                object IWBSInput10: TIWBSInput
                  Left = 101
                  Top = 13
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
                object IWBSButton25: TIWBSButton
                  Left = 11
                  Top = 8
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton22'
                  TabOrder = -1
                  BSGlyphicon = 'align-center'
                  Caption = 'IWBSButton22'
                end
              end
              object IWBSRegion16: TIWBSCGJQRegion
                Left = 33
                Top = 10
                Width = 532
                Height = 92
                TabOrder = 11
                Version = '1.0'
                BSRegionType = bsrtPageHeader
                object IWText5: TIWBSText
                  Left = 12
                  Top = 15
                  Width = 258
                  Height = 24
                  FriendlyName = 'IWText5'
                  TabOrder = -1
                  Lines.Strings = (
                    '<h2>This are input groups</h2>')
                  RawText = True
                end
              end
              object IWBSInputGroup4: TIWBSInputGroup
                Left = 33
                Top = 306
                Width = 360
                Height = 58
                Caption = 'CheckBox AddOn'
                object IWBSInput11: TIWBSInput
                  Left = 169
                  Top = 17
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
                object IWBSCheckBox3: TIWBSCheckBox
                  Left = 21
                  Top = 16
                  Width = 121
                  Height = 21
                  FriendlyName = 'IWBSCheckBox3'
                  TabOrder = -1
                  AutoEditable = False
                  Caption = 'IWBSCheckBox3'
                  Text = 'false'
                  ValueChecked = 'true'
                  ValueUnchecked = 'false'
                end
              end
              object IWBSInputGroup5: TIWBSInputGroup
                Left = 33
                Top = 379
                Width = 360
                Height = 58
                Caption = 'Radio AddOn'
                object IWBSInput12: TIWBSInput
                  Left = 169
                  Top = 17
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
                object IWBSRadioButton5: TIWBSRadioButton
                  Left = 21
                  Top = 16
                  Width = 121
                  Height = 21
                  FriendlyName = 'IWBSRadioButton5'
                  TabOrder = -1
                  Caption = 'IWBSRadioButton5'
                  Text = 'false'
                  Group = 'no group'
                  ValueChecked = 'true'
                  ValueUnchecked = 'false'
                end
              end
              object IWBSInputGroup6: TIWBSInputGroup
                Left = 33
                Top = 443
                Width = 360
                Height = 43
                Caption = 'Glyphicons'
                object IWBSInput4: TIWBSInput
                  Left = 101
                  Top = 12
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
                object IWBSGlyphicon1: TIWBSGlyphicon
                  Left = 12
                  Top = 12
                  Width = 29
                  Height = 21
                  FriendlyName = 'IWBSGlyphicon1'
                  TabOrder = -1
                  BSGlyphicon = 'align-center'
                end
                object IWBSGlyphicon2: TIWBSGlyphicon
                  Left = 292
                  Top = 12
                  Width = 21
                  Height = 21
                  FriendlyName = 'IWBSGlyphicon2'
                  TabOrder = -1
                end
              end
              object IWBSInputGroup7: TIWBSInputGroup
                Left = 33
                Top = 492
                Width = 360
                Height = 43
                Caption = 'Labels'
                object IWBSInput5: TIWBSInput
                  Left = 101
                  Top = 12
                  Width = 121
                  Height = 21
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSInput8'
                  TabOrder = -1
                  Caption = ''
                  Text = ''
                end
                object IWBSLabel1: TIWBSLabel
                  Left = 11
                  Top = 12
                  Width = 40
                  Height = 16
                  FriendlyName = 'IWBSLabel1'
                  TabOrder = -1
                  Caption = 'Before'
                end
                object IWBSLabel2: TIWBSLabel
                  Left = 248
                  Top = 12
                  Width = 30
                  Height = 16
                  FriendlyName = 'IWBSLabel2'
                  TabOrder = -1
                  Caption = 'After'
                end
              end
            end
          end
          object IWTabControl21Page3: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 2
            Title = 'Buttons'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSRegion10: TIWBSCGJQRegion
              Left = 16
              Top = 81
              Width = 1041
              Height = 361
              TabOrder = 3
              Version = '1.0'
              object IWBSBtnToolBar1: TIWBSCGJQRegion
                Left = 20
                Top = 9
                Width = 1018
                Height = 75
                TabOrder = 4
                Version = '1.0'
                Style.Strings = (
                  'margin: 2em')
                BSRegionType = bsrtButtonToolbar
                object IWBSBtnGroup1: TIWBSCGJQRegion
                  Left = 3
                  Top = 19
                  Width = 352
                  Height = 53
                  TabOrder = 5
                  Version = '1.0'
                  BSRegionType = bsrtButtonGroup
                  object IWBSButton1: TIWBSButton
                    Left = 3
                    Top = 17
                    Width = 82
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszLg
                    BSGlyphicon = 'align-left'
                    Caption = 'Left'
                  end
                  object IWBSButton2: TIWBSButton
                    Left = 91
                    Top = 17
                    Width = 85
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszMd
                    BSGlyphicon = 'align-center'
                    Caption = 'Center'
                  end
                  object IWBSButton3: TIWBSButton
                    Left = 182
                    Top = 18
                    Width = 75
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszSm
                    BSGlyphicon = 'align-right'
                    Caption = 'Rigth'
                  end
                  object IWBSButton4: TIWBSButton
                    Left = 267
                    Top = 17
                    Width = 82
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszXs
                    BSGlyphicon = 'align-justify'
                    Caption = 'Justify'
                  end
                end
                object IWBSBtnGroup2: TIWBSCGJQRegion
                  Left = 361
                  Top = 20
                  Width = 224
                  Height = 51
                  TabOrder = 6
                  Version = '1.0'
                  BSRegionType = bsrtButtonGroup
                  object IWBSButton5: TIWBSButton
                    Left = 17
                    Top = 20
                    Width = 36
                    Height = 27
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszLg
                    BSGlyphicon = 'align-left'
                  end
                  object IWBSButton6: TIWBSButton
                    Left = 65
                    Top = 22
                    Width = 36
                    Height = 25
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszMd
                    BSGlyphicon = 'align-center'
                  end
                  object IWBSButton7: TIWBSButton
                    Left = 107
                    Top = 21
                    Width = 46
                    Height = 25
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszSm
                    BSGlyphicon = 'align-right'
                  end
                  object IWBSButton8: TIWBSButton
                    Left = 159
                    Top = 20
                    Width = 34
                    Height = 28
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszXs
                    BSGlyphicon = 'align-justify'
                  end
                end
                object IWBSBtnGroup3: TIWBSCGJQRegion
                  Left = 632
                  Top = 22
                  Width = 367
                  Height = 50
                  TabOrder = 7
                  Version = '1.0'
                  BSButtonGroupOptions.Vertical = True
                  BSRegionType = bsrtButtonGroup
                  object IWBSButton9: TIWBSButton
                    Left = 9
                    Top = 17
                    Width = 76
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszLg
                    BSGlyphicon = 'align-left'
                    Caption = 'Left'
                  end
                  object IWBSButton10: TIWBSButton
                    Left = 97
                    Top = 17
                    Width = 86
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszMd
                    BSGlyphicon = 'align-center'
                    Caption = 'Center'
                  end
                  object IWBSButton11: TIWBSButton
                    Left = 189
                    Top = 17
                    Width = 76
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszSm
                    BSGlyphicon = 'align-right'
                    Caption = 'Rigth'
                  end
                  object IWBSButton12: TIWBSButton
                    Left = 271
                    Top = 17
                    Width = 76
                    Height = 30
                    Hint = 'This is a hint'
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton1'
                    TabOrder = -1
                    BSButtonSize = bsszXs
                    BSGlyphicon = 'align-justify'
                    Caption = 'Justify'
                  end
                end
              end
              object IWBSBtnGroup4: TIWBSCGJQRegion
                Left = 20
                Top = 109
                Width = 675
                Height = 60
                TabOrder = 8
                Version = '1.0'
                Style.Strings = (
                  'margin: 2em')
                BSRegionType = bsrtButtonGroup
                object IWBSButton13: TIWBSButton
                  Left = 13
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  Caption = 'Default'
                end
                object IWBSButton14: TIWBSButton
                  Left = 94
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsInfo
                  Caption = 'Info'
                end
                object IWBSButton15: TIWBSButton
                  Left = 175
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsLink
                  Caption = 'Link'
                end
                object IWBSButton16: TIWBSButton
                  Left = 256
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsPrimary
                  Caption = 'Primary'
                end
                object IWBSButton17: TIWBSButton
                  Left = 337
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsSuccess
                  Caption = 'Success'
                end
                object IWBSButton18: TIWBSButton
                  Left = 418
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsWarning
                  Caption = 'Warning'
                end
                object IWBSButton19: TIWBSButton
                  Left = 499
                  Top = 20
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsDanger
                  Caption = 'Danger'
                end
                object IWBSButton29: TIWBSButton
                  Left = 580
                  Top = 18
                  Width = 75
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton13'
                  TabOrder = -1
                  BSButtonStyle = bsbsClose
                  Caption = 'Close'
                end
              end
            end
          end
          object IWTabControl21Page4: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 3
            Title = 'Other Bootstrap Controls'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSRegion30: TIWBSCGJQRegion
              Left = 0
              Top = 0
              Width = 1084
              Height = 1519
              TabOrder = 31
              Version = '1.0'
              Align = alClient
              Style.Strings = (
                'margin: 1em')
              object IWBSRegion9: TIWBSCGJQRegion
                Left = 15
                Top = 97
                Width = 698
                Height = 60
                TabOrder = 32
                Version = '1.0'
                BSRegionType = bsrtJumbotron
                object IWText1: TIWBSText
                  Left = 20
                  Top = 11
                  Width = 540
                  Height = 38
                  FriendlyName = 'IWText1'
                  TabOrder = -1
                  Lines.Strings = (
                    '<h1>This is a Jumbotron</h1>'
                    '<h2>Example page header <small>Subtext for header</small></h2>')
                  RawText = True
                end
              end
              object IWBSRegion14: TIWBSCGJQRegion
                Left = 15
                Top = 163
                Width = 698
                Height = 60
                TabOrder = 33
                Version = '1.0'
                BSRegionType = bsrtPageHeader
                object IWText4: TIWBSText
                  Left = 20
                  Top = 11
                  Width = 540
                  Height = 38
                  FriendlyName = 'IWText4'
                  TabOrder = -1
                  Lines.Strings = (
                    '<h1>This is a Page Header</h1>'
                    '<h2>Example page header <small>Subtext for header</small></h2>')
                  RawText = True
                end
              end
              object IWBSRegion24: TIWBSCGJQRegion
                Left = 15
                Top = 236
                Width = 698
                Height = 60
                TabOrder = 34
                Version = '1.0'
                BSRegionType = bsrtWell
                BSRelativeSize = bsrzLg
                object IWText10: TIWBSText
                  Left = 20
                  Top = 11
                  Width = 540
                  Height = 38
                  FriendlyName = 'IWText10'
                  TabOrder = -1
                  Lines.Strings = (
                    '<h1>This is a Well</h1>'
                    '<h2>Example page header <small>Subtext for header</small></h2>')
                  RawText = True
                end
              end
              object IWBSRegion19: TIWBSCGJQRegion
                Left = 16
                Top = 302
                Width = 698
                Height = 268
                TabOrder = 35
                Version = '1.0'
                BSPanelStyle = bspsPrimary
                BSRegionType = bsrtPanel
                object IWBSRegion20: TIWBSCGJQRegion
                  Left = 8
                  Top = 22
                  Width = 681
                  Height = 80
                  TabOrder = 36
                  Version = '1.0'
                  BSRegionType = bsrtPanelHeading
                  object IWText8: TIWBSText
                    Left = 19
                    Top = 55
                    Width = 269
                    Height = 22
                    FriendlyName = 'IWText8'
                    TabOrder = -1
                    Lines.Strings = (
                      '<h2>this is panel heading</h2>')
                    RawText = True
                  end
                  object IWBSRegion23: TIWBSCGJQRegion
                    Left = 12
                    Top = 18
                    Width = 653
                    Height = 34
                    TabOrder = 37
                    Version = '1.0'
                    BSRegionType = bsrtPanelTitle
                    object IWText7: TIWBSText
                      Left = 163
                      Top = 9
                      Width = 269
                      Height = 22
                      FriendlyName = 'IWText7'
                      TabOrder = -1
                      Lines.Strings = (
                        '<h2>this is panel title</h2>')
                      RawText = True
                    end
                  end
                end
                object IWBSRegion22: TIWBSCGJQRegion
                  Left = 8
                  Top = 108
                  Width = 681
                  Height = 79
                  TabOrder = 38
                  Version = '1.0'
                  BSRegionType = bsrtPanelBody
                  object IWText6: TIWBSText
                    Left = 155
                    Top = 37
                    Width = 269
                    Height = 22
                    FriendlyName = 'IWText6'
                    TabOrder = -1
                    Lines.Strings = (
                      '<h2>this is panel body</h2>')
                    RawText = True
                  end
                end
                object IWBSRegion21: TIWBSCGJQRegion
                  Left = 8
                  Top = 193
                  Width = 681
                  Height = 60
                  HorzScrollBar.Visible = True
                  VertScrollBar.Visible = True
                  TabOrder = 29
                  Version = '1.0'
                  BSRegionType = bsrtPanelFooter
                  object IWText9: TIWBSText
                    Left = 24
                    Top = 20
                    Width = 269
                    Height = 22
                    FriendlyName = 'IWText9'
                    TabOrder = -1
                    Lines.Strings = (
                      '<h2>this is panel footer</h2>')
                    RawText = True
                  end
                end
              end
              object IWBSRegion34: TIWBSCGJQRegion
                Left = 16
                Top = 24
                Width = 697
                Height = 60
                TabOrder = 39
                Version = '1.0'
                BSRegionType = bsrtWell
                object IWBSButton40: TIWBSButton
                  Left = 16
                  Top = 20
                  Width = 173
                  Height = 25
                  FriendlyName = 'IWBSButton40'
                  TabOrder = -1
                  OnAsyncClick = IWBSButton40AsyncClick
                  Caption = 'Show Modal Window'
                end
              end
              object IWBSModal1: TIWBSModal
                Left = 728
                Top = 99
                Width = 353
                Height = 261
                object IWBSRegion35: TIWBSCGJQRegion
                  Left = 8
                  Top = 22
                  Width = 325
                  Height = 227
                  TabOrder = 40
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSText1: TIWBSText
                    Left = 24
                    Top = 24
                    Width = 289
                    Height = 117
                    FriendlyName = 'IWBSText1'
                    TabOrder = -1
                    Lines.Strings = (
                      'This is a modal window'
                      'There are 2 buttons'
                      
                        'One button do an async callback and close modal windows setting ' +
                        'BSModalVisible := False'
                      
                        'The other button automatically close because it have property BS' +
                        'DataDismiss := bsbdModal'
                      'The Modal window have an event that fires when modal close.'
                      ''
                      '')
                  end
                  object IWBSButton39: TIWBSButton
                    Left = 24
                    Top = 147
                    Width = 293
                    Height = 29
                    FriendlyName = 'IWBSButton39'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton39AsyncClick
                    Caption = 'AsyncClick to close modal'
                  end
                  object IWBSButton38: TIWBSButton
                    Left = 23
                    Top = 189
                    Width = 294
                    Height = 25
                    FriendlyName = 'IWBSButton38'
                    TabOrder = -1
                    Caption = 'Close Modal by data-dismiss'
                    BSDataDismiss = bsbdModal
                  end
                end
              end
            end
          end
          object IWTabControl21Page2: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 5
            Title = 'TabControl Options'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSRegion37: TIWBSCGJQRegion
              Left = 29
              Top = 5
              Width = 561
              Height = 637
              TabOrder = 23
              Version = '1.0'
              Style.Strings = (
                'margin: 1em')
              BSGridOptions.GridSMSpan = 6
              object IWBSRegion7: TIWBSCGJQRegion
                Left = 15
                Top = 6
                Width = 433
                Height = 303
                TabOrder = 24
                Version = '1.0'
                BSRegionType = bsrtWell
                object IWBSInputForm1: TIWBSInputForm
                  Left = 15
                  Top = 12
                  Width = 293
                  Height = 278
                  object IWBSButton30: TIWBSButton
                    Left = 17
                    Top = 229
                    Width = 184
                    Height = 25
                    RenderSize = False
                    StyleRenderOptions.RenderSize = False
                    FriendlyName = 'IWBSButton20aaaaaa'
                    TabOrder = -1
                    OnAsyncClick = IWBSButton30AsyncClick
                    Caption = 'Apply settings'
                  end
                  object chkContFluid: TIWBSCheckBox
                    Left = 15
                    Top = 41
                    Width = 121
                    Height = 21
                    ShowHint = False
                    FriendlyName = 'chkContFluid'
                    TabOrder = -1
                    AutoEditable = False
                    Caption = 'Container Fluid'
                    Text = 'false'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object chkTabsJust: TIWBSCheckBox
                    Left = 15
                    Top = 76
                    Width = 121
                    Height = 21
                    FriendlyName = 'chkTabsJust'
                    TabOrder = -1
                    Caption = 'Tabs Justified'
                    Text = 'false'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object chkTabsStacked: TIWBSCheckBox
                    Left = 15
                    Top = 103
                    Width = 121
                    Height = 21
                    FriendlyName = 'chkTabsStacked'
                    TabOrder = -1
                    Caption = 'Tabs Stacked'
                    Text = 'false'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object chkTabsPills: TIWBSCheckBox
                    Left = 15
                    Top = 134
                    Width = 121
                    Height = 21
                    FriendlyName = 'chkTabsPills'
                    TabOrder = -1
                    Caption = 'Tabs Pills'
                    Text = 'true'
                    Checked = True
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object chkTabsFade: TIWBSCheckBox
                    Left = 16
                    Top = 161
                    Width = 121
                    Height = 21
                    FriendlyName = 'chkTabsFade'
                    TabOrder = -1
                    Caption = 'Tabs Fade'
                    Text = 'false'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                end
              end
              object IWBSRegion36: TIWBSCGJQRegion
                Left = 12
                Top = 326
                Width = 438
                Height = 60
                TabOrder = 25
                Version = '1.0'
                BSRegionType = bsrtWell
                object IWBSButton42: TIWBSButton
                  Left = 26
                  Top = 18
                  Width = 329
                  Height = 25
                  FriendlyName = 'IWBSButton42'
                  TabOrder = -1
                  OnAsyncClick = IWBSButton42AsyncClick
                  Caption = 'Toggle TabPage visibility'
                end
              end
            end
          end
          object IWTabControl21Page0: TIWTabPage
            Left = 0
            Top = 20
            Width = 1084
            Height = 1519
            RenderInvisibleControls = True
            TabOrder = 0
            Title = 'Form Controls'
            BorderOptions.NumericWidth = 0
            BorderOptions.BorderWidth = cbwNumeric
            BorderOptions.Style = cbsNone
            BorderOptions.Color = clNone
            Color = clWebWHITE
            object IWBSRegion25: TIWBSCGJQRegion
              Left = 0
              Top = 0
              Width = 1084
              Height = 1305
              TabOrder = 26
              Version = '1.0'
              Align = alTop
              Style.Strings = (
                'margin: 1em')
              BSRegionType = bsrtRow
              object IWBSRegion2: TIWBSCGJQRegion
                Left = 0
                Top = 0
                Width = 334
                Height = 1305
                TabOrder = 27
                Version = '1.0'
                Align = alLeft
                BSGridOptions.GridMDSpan = 4
                BSRegionType = bsrtColumn
                object IWBSRegion18: TIWBSCGJQRegion
                  Left = 14
                  Top = 27
                  Width = 245
                  Height = 195
                  TabOrder = 28
                  Version = '1.0'
                  BSRegionType = bsrtWell
                  object IWBSInputForm3: TIWBSInputForm
                    Left = 0
                    Top = 18
                    Width = 234
                    Height = 159
                    object LstFormType: TIWBSRadioGroup
                      Left = 10
                      Top = 47
                      Width = 128
                      Height = 64
                      FriendlyName = 'LstFormType'
                      TabOrder = -1
                      Caption = ''
                      Text = 'form-vertical'
                      ItemIndex = 0
                      Items.Strings = (
                        'form-vertical'
                        'form-horizontal'
                        'form-inline')
                    end
                    object IWText2: TIWBSText
                      Left = 12
                      Top = 16
                      Width = 201
                      Height = 19
                      FriendlyName = 'IWText2'
                      TabOrder = -1
                      Lines.Strings = (
                        '<h3>Form Layout</h3>')
                      RawText = True
                    end
                    object IWBSButton35: TIWCGJQButton
                      Left = 10
                      Top = 122
                      Width = 127
                      Height = 25
                      TabOrder = 10
                      Css = 'cgjqbutton'
                      Version = '1.0'
                      StyleRenderOptions.RenderSize = False
                      StyleRenderOptions.RenderVisibility = True
                      ParentShowHint = False
                      JQButtonOptions.Label_ = 'Apply change'
                      JQButtonOptions.OnClick.OnEvent = IWBSButton35JQButtonOptionsClick
                    end
                  end
                end
              end
              object IWBSInputForm2: TIWBSInputForm
                Left = 334
                Top = 0
                Width = 750
                Height = 1305
                Align = alClient
                BSGridOptions.GridMDSpan = 8
                BSFormOptions.CaptionsSize.GridMDSpan = 4
                BSFormOptions.InputsSize.GridMDSpan = 8
                object IWBSInput1: TIWBSInput
                  Left = 12
                  Top = 35
                  Width = 201
                  Height = 25
                  ExtraTagParams.Strings = (
                    '')
                  FriendlyName = 'IWBSInput1'
                  TabOrder = -1
                  Caption = 'Input Type Text'
                  Text = ''
                  BSTextAlignment = bstaCenter
                  PlaceHolder = 'Name'
                end
                object IWBSInput2: TIWBSInput
                  Left = 12
                  Top = 220
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input Type Numer'
                  Text = ''
                  PlaceHolder = 'Amount'
                end
                object IWBSInput3: TIWBSInput
                  Left = 12
                  Top = 62
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput3'
                  TabOrder = -1
                  Caption = 'Input Type Password'
                  Text = ''
                  PlaceHolder = 'Password'
                end
                object IWBSMemo2: TIWBSMemo
                  Left = 14
                  Top = 447
                  Width = 433
                  Height = 121
                  FriendlyName = 'IWBSMemo2'
                  TabOrder = -1
                  Caption = 'This is a Memo'
                  Text = ''
                  BSTextAlignment = bstaRight
                  BSTextCase = bstcUppercase
                  PlaceHolder = 'This is a text area with right align and uppercase'
                end
                object IWBSButton20: TIWBSButton
                  Left = 12
                  Top = 4
                  Width = 326
                  Height = 25
                  RenderSize = False
                  StyleRenderOptions.RenderSize = False
                  FriendlyName = 'IWBSButton20'
                  TabOrder = -1
                  OnAsyncClick = IWBSButton20AsyncClick
                  BSGlyphicon = 'check'
                  Caption = 'Ajax Click (see input values in memo)'
                end
                object IWBSInput7: TIWBSInput
                  Left = 12
                  Top = 113
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput3'
                  TabOrder = -1
                  Caption = 'Input Type Date'
                  Text = ''
                  PlaceHolder = 'Date'
                end
                object IWBSInput14: TIWBSInput
                  Left = 12
                  Top = 89
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput3'
                  TabOrder = -1
                  Caption = 'Input Type DateTimeLocal'
                  Text = ''
                  PlaceHolder = 'DateTimeLocal'
                end
                object IWBSInput15: TIWBSInput
                  Left = 12
                  Top = 139
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput3'
                  TabOrder = -1
                  Caption = 'Input Type Month'
                  Text = ''
                  PlaceHolder = 'Month'
                end
                object IWBSInput16: TIWBSInput
                  Left = 12
                  Top = 166
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput3'
                  TabOrder = -1
                  Caption = 'Input Type Time'
                  Text = ''
                  PlaceHolder = 'Time'
                end
                object IWBSInput17: TIWBSInput
                  Left = 12
                  Top = 193
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput3'
                  TabOrder = -1
                  Caption = 'Input Type Week'
                  Text = ''
                  PlaceHolder = 'Week'
                end
                object IWBSInput18: TIWBSInput
                  Left = 12
                  Top = 244
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input Type Email'
                  Text = ''
                  PlaceHolder = 'Email'
                end
                object IWBSInput19: TIWBSInput
                  Left = 12
                  Top = 270
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input Type Url'
                  Text = ''
                  PlaceHolder = 'home page'
                end
                object IWBSInput20: TIWBSInput
                  Left = 12
                  Top = 297
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input Type Search'
                  Text = ''
                  PlaceHolder = 'Search'
                end
                object IWBSInput21: TIWBSInput
                  Left = 12
                  Top = 324
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input Type Tel'
                  Text = ''
                  PlaceHolder = 'Telephone'
                end
                object IWBSInput22: TIWBSInput
                  Left = 12
                  Top = 351
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input Type Color'
                  Text = ''
                  PlaceHolder = 'Pick a Color'
                end
                object IWBSInput13: TIWBSInput
                  Left = 12
                  Top = 382
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSInput2'
                  TabOrder = -1
                  Caption = 'Input NonEditableAsLabel'
                  Editable = False
                  NonEditableAsLabel = True
                  Text = 'This is a static text'
                  PlaceHolder = 'Pick a Color'
                end
                object IWBSRadioGroup1: TIWBSRadioGroup
                  Left = 15
                  Top = 932
                  Width = 237
                  Height = 125
                  FriendlyName = 'IWBSRadioGroup1'
                  TabOrder = -1
                  Caption = 'This is a radio group'
                  Text = 'item 1'
                  ItemIndex = 0
                  Items.Strings = (
                    'item 1'
                    'item 2'
                    'item 3'
                    'item 4')
                end
                object IWBSComboBox2: TIWBSSelect
                  Left = 14
                  Top = 715
                  Width = 291
                  Height = 25
                  FriendlyName = 'IWBSComboBox1'
                  TabOrder = -1
                  Caption = 'This is a Select (Size = 1)'
                  Text = ''
                  Items.Strings = (
                    'item 1'
                    'item 2'
                    'item 3'
                    'item 4')
                end
                object IWBSListbox2: TIWBSSelect
                  Left = 14
                  Top = 584
                  Width = 291
                  Height = 29
                  FriendlyName = 'IWBSListbox1'
                  TabOrder = -1
                  Caption = 
                    'This is a ListBox with multi select and plugin enabled (Size = 1' +
                    ')'
                  Text = ''
                  Items.Strings = (
                    'item 1'
                    'item 2'
                    'item 3'
                    'item 4')
                  MultiSelect = True
                end
                object IWBSListbox3: TIWBSSelect
                  Left = 14
                  Top = 626
                  Width = 291
                  Height = 77
                  FriendlyName = 'IWBSListbox1'
                  TabOrder = -1
                  Caption = 'This is a Select (Size <> 1)'
                  Text = ''
                  Items.Strings = (
                    'item 1'
                    'item 2'
                    'item 3'
                    'item 4')
                  Size = 0
                end
                object IWBSCheckBox1: TIWBSCheckBox
                  Left = 12
                  Top = 416
                  Width = 201
                  Height = 25
                  FriendlyName = 'IWBSCheckBox1'
                  TabOrder = -1
                  Caption = 'IWBSCheckBox1'
                  Text = 'false'
                  ValueChecked = 'true'
                  ValueUnchecked = 'false'
                end
                object IWBSRegion1: TIWBSCGJQRegion
                  Left = 15
                  Top = 799
                  Width = 237
                  Height = 121
                  TabOrder = 30
                  Version = '1.0'
                  BSRegionType = bsrtFormGroup
                  object IWBSRadioButton6: TIWBSRadioButton
                    Left = 8
                    Top = 12
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSRadioButton6'
                    TabOrder = -1
                    Caption = 'Radio Button 1'
                    Text = 'true'
                    Checked = True
                    Group = 'group1'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object IWBSRadioButton7: TIWBSRadioButton
                    Left = 8
                    Top = 40
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSRadioButton6'
                    TabOrder = -1
                    Caption = 'Radio Button 2'
                    Text = 'false'
                    Group = 'group1'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object IWBSRadioButton8: TIWBSRadioButton
                    Left = 8
                    Top = 65
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSRadioButton6'
                    TabOrder = -1
                    Caption = 'Radio Button 3'
                    Text = 'false'
                    Group = 'group1'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                  object IWBSRadioButton9: TIWBSRadioButton
                    Left = 8
                    Top = 92
                    Width = 121
                    Height = 21
                    FriendlyName = 'IWBSRadioButton6'
                    TabOrder = -1
                    Caption = 'Radio Button 4'
                    Text = 'false'
                    Group = 'group1'
                    ValueChecked = 'true'
                    ValueUnchecked = 'false'
                  end
                end
              end
            end
          end
        end
      end
    end
    object IWBSRegion29: TIWBSCGJQRegion
      Left = 0
      Top = 0
      Width = 1084
      Height = 61
      TabOrder = 41
      Version = '1.0'
      Align = alTop
      BSRegionType = bsrtRow
      object IWBSRegion4: TIWBSCGJQRegion
        Left = 0
        Top = 0
        Width = 1084
        Height = 61
        TabOrder = 42
        Version = '1.0'
        Align = alClient
        BSRegionType = bsrtColumn
        object IWBSButton36: TIWBSButton
          Left = 808
          Top = 12
          Width = 242
          Height = 25
          Css = 'pull-right'
          FriendlyName = 'IWBSButton1'
          TabOrder = -1
          OnAsyncClick = IWBSButton36AsyncClick
          Caption = 'Switch to Data Aware Demo'
        end
        object IWText3: TIWBSText
          Left = 5
          Top = 5
          Width = 381
          Height = 41
          Css = 'pull-left'
          FriendlyName = 'IWText3'
          TabOrder = -1
          Lines.Strings = (
            '<h3>This is the standard demo</h3>')
          RawText = True
        end
      end
    end
  end
  object IWBSLayoutMgr1: TIWBSLayoutMgr
    Left = 720
    Top = 115
  end
end
