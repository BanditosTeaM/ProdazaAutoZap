object Form1: TForm1
  Left = 861
  Top = 212
  Width = 951
  Height = 411
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 935
    Height = 372
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1086#1074#1072#1088#1099
      object Panel1: TPanel
        Left = 0
        Top = 264
        Width = 927
        Height = 80
        Align = alBottom
        TabOrder = 0
        Visible = False
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 76
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label3: TLabel
          Left = 10
          Top = 35
          Width = 31
          Height = 13
          Caption = #1041#1088#1077#1085#1076
        end
        object Label4: TLabel
          Left = 270
          Top = 11
          Width = 62
          Height = 13
          Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1096#1090
        end
        object Label5: TLabel
          Left = 247
          Top = 35
          Width = 85
          Height = 13
          Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1077#1085#1080#1094#1091
        end
        object Edit1: TEdit
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object Button4: TButton
          Left = 528
          Top = 36
          Width = 105
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          TabOrder = 1
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 672
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 2
          OnClick = Button5Click
        end
        object Edit2: TEdit
          Left = 360
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object Edit3: TEdit
          Left = 360
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object Button3: TButton
          Left = 528
          Top = 8
          Width = 105
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          TabOrder = 5
          OnClick = Button3Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 88
          Top = 32
          Width = 145
          Height = 21
          KeyField = #1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072
          ListField = #1053#1072#1079#1074#1072
          TabOrder = 6
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 192
        Width = 927
        Height = 72
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 504
          Top = 48
          Width = 99
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1082#1086#1076#1091' '#1090#1086#1074#1072#1088#1072':'
        end
        object Label6: TLabel
          Left = 504
          Top = 24
          Width = 141
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102':'
        end
        object Button6: TButton
          Left = 16
          Top = 16
          Width = 65
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 96
          Top = 16
          Width = 65
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 176
          Top = 16
          Width = 65
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = Button8Click
        end
        object Edit4: TEdit
          Left = 608
          Top = 48
          Width = 57
          Height = 21
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 648
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 4
          OnChange = Edit5Change
        end
        object Button9: TButton
          Left = 680
          Top = 40
          Width = 57
          Height = 25
          Caption = #1054#1082
          TabOrder = 5
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 752
          Top = 40
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 6
          OnClick = Button10Click
        end
        object Button17: TButton
          Left = 248
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1090#1095#1077#1090
          TabOrder = 7
          OnClick = Button17Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 192
        Align = alClient
        DataSource = DataModule2.DataSourceTovari
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 240
        Align = alClient
        DataSource = DataModule2.DataSourcePersonal
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 240
        Width = 927
        Height = 104
        Align = alBottom
        TabOrder = 1
        object Button1: TButton
          Left = 32
          Top = 48
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 136
          Top = 48
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1041#1088#1077#1085#1076
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 256
        Align = alClient
        DataSource = DataModule2.DataSourceBrend
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel5: TPanel
        Left = 0
        Top = 256
        Width = 927
        Height = 88
        Align = alBottom
        TabOrder = 1
        object Button11: TButton
          Left = 56
          Top = 32
          Width = 97
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Button11Click
        end
        object Button12: TButton
          Left = 168
          Top = 32
          Width = 81
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button12Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 271
        Width = 927
        Height = 73
        Align = alBottom
        TabOrder = 0
        object Label8: TLabel
          Left = 24
          Top = 16
          Width = 99
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1095#1077#1082#1072
        end
        object Edit7: TEdit
          Left = 128
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button15: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1082
          TabOrder = 1
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 360
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 2
          OnClick = Button16Click
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 271
        Align = alClient
        DataSource = DataModule2.DataSourceCheck
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1080
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 303
        Width = 927
        Height = 41
        Align = alBottom
        TabOrder = 0
        object Label7: TLabel
          Left = 32
          Top = 16
          Width = 120
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1087#1088#1086#1076#1072#1078#1080
        end
        object Edit6: TEdit
          Left = 160
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button13: TButton
          Left = 296
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1082
          TabOrder = 1
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 384
          Top = 16
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 2
          OnClick = Button14Click
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 305
        Align = alTop
        DataSource = DataModule2.DataSourceProdaz2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
