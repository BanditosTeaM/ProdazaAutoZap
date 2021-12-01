object Main: TMain
  Left = 405
  Top = 149
  Width = 1059
  Height = 675
  Caption = #1055#1088#1086#1076#1072#1078#1072' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1077#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1043
    Height = 370
    Align = alClient
    DataSource = DataModule2.DataSourceCheck
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 426
    Width = 1043
    Height = 190
    Align = alBottom
    Enabled = False
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 42
      Height = 13
      Caption = #1058#1086#1074#1072#1088#1099':'
    end
    object Label5: TLabel
      Left = 16
      Top = 40
      Width = 114
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091' ('#1075#1088#1085'):'
    end
    object Label6: TLabel
      Left = 16
      Top = 72
      Width = 62
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label7: TLabel
      Left = 16
      Top = 104
      Width = 53
      Height = 13
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083':'
    end
    object Label8: TLabel
      Left = 16
      Top = 136
      Width = 99
      Height = 13
      Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080'('#1075#1088#1085'):'
    end
    object DBGrid2: TDBGrid
      Left = 488
      Top = 8
      Width = 545
      Height = 169
      DataSource = DataModule2.DataSourceProdaz
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 8
      Width = 305
      Height = 21
      KeyField = #1050#1086#1076'_'#1090#1086#1074#1072#1088#1091
      ListField = 'Tovari.'#1053#1072#1079#1074#1072
      ListSource = DataModule2.DataSourceTovari
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
    end
    object Edit1: TEdit
      Left = 80
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '0'
      OnChange = Edit1Change
    end
    object UpDown1: TUpDown
      Left = 201
      Top = 72
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 0
      Position = 0
      TabOrder = 3
      Wrap = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 72
      Top = 104
      Width = 321
      Height = 21
      KeyField = #1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1091
      ListField = #1055#1030#1041
      ListSource = DataModule2.DataSourcePersonal
      TabOrder = 4
    end
    object Button2: TButton
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 96
      Top = 160
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 184
      Top = 160
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 7
      OnClick = Button4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 1043
    Height = 56
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 48
      Height = 20
      Caption = #1063#1077#1082' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 16
      Width = 35
      Height = 16
      Caption = #1044#1072#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 616
      Top = 24
      Width = 100
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1095#1077#1082#1091'('#1075#1088#1085'):'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 160
      Top = 16
      Width = 186
      Height = 21
      CalAlignment = dtaLeft
      Date = 44514.7311503472
      Time = 44514.7311503472
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 448
      Top = 16
      Width = 75
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1095#1077#1082
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 984
    Top = 440
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
