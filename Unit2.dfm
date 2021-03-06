object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 223
  Top = 244
  Height = 547
  Width = 295
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=bd.md' +
      'b;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sys' +
      'tem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pa' +
      'ssword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mod' +
      'e=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tr' +
      'ansactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create' +
      ' System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLED' +
      'B:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without R' +
      'eplica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
  end
  object DataSourceTovari: TDataSource
    DataSet = ADOQTovari
    Left = 208
  end
  object ADOPersonal: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Personal'
    Left = 120
    Top = 56
  end
  object DataSourcePersonal: TDataSource
    DataSet = ADOPersonal
    Left = 208
    Top = 56
  end
  object ADOBrend: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Virobnik'
    Left = 120
    Top = 112
  end
  object DataSourceBrend: TDataSource
    DataSet = ADOBrend
    Left = 208
    Top = 112
  end
  object ADOQTovari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1091', Tovari.'#1053#1072#1079#1074#1072', Tovari.'#1062#1110#1085#1072'_'#1075#1088#1085', Tovari.' +
        #1050#1110#1083#1100#1082#1110#1089#1090#1100'_'#1096#1090', Virobnik.'#1053#1072#1079#1074#1072
      
        'FROM Virobnik INNER JOIN Tovari ON Virobnik.'#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072' = Tova' +
        'ri.'#1050#1086#1076'_'#1074#1080#1088#1086#1073#1085#1080#1082#1072
      'ORDER BY Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1091';')
    Left = 120
  end
  object ADOWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 120
    Top = 176
  end
  object DataSourceWork: TDataSource
    DataSet = ADOWork
    Left = 208
    Top = 176
  end
  object ADOQCheck: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Check.'#1050#1086#1076'_'#1095#1077#1082#1072', Check.'#1044#1072#1090#1072', Check.'#1047#1072#1075#1072#1083#1100#1085#1072'_'#1094#1110#1085#1072
      'FROM [Check];')
    Left = 120
    Top = 232
  end
  object DataSourceCheck: TDataSource
    DataSet = ADOQCheck
    Left = 208
    Top = 232
  end
  object DataSourceProdaz: TDataSource
    DataSet = ADOQProdaz
    Left = 208
    Top = 296
  end
  object ADOQProdaz: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 120
    Top = 296
  end
  object ADOQProdaz2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Prodazi.'#1050#1086#1076'_'#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103', Prodazi.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1091', Prodazi.'#1062#1110#1085#1072',' +
        ' Prodazi.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072', Prodazi.'#1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1091
      'FROM Prodazi;')
    Left = 120
    Top = 352
  end
  object DataSourceProdaz2: TDataSource
    DataSet = ADOQProdaz2
    Left = 208
    Top = 352
  end
  object ADOCheckREP: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Prodazi.'#1050#1086#1076'_'#1079#1072#1084#1086#1074#1083#1077#1085#1085#1103', Prodazi.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1091', Prodazi.'#1050#1086#1076'_'#1095 +
        #1077#1082#1072', Prodazi.'#1062#1110#1085#1072', Tovari.'#1062#1110#1085#1072'_'#1075#1088#1085', Tovari.'#1053#1072#1079#1074#1072', Personal.'#1055#1030#1041', ' +
        'Check.'#1047#1072#1075#1072#1083#1100#1085#1072'_'#1094#1110#1085#1072', Check.'#1044#1072#1090#1072', Prodazi.'#1050#1110#1083#1100#1082#1110#1089#1090#1100
      
        'FROM Tovari INNER JOIN (Personal INNER JOIN ([Check] INNER JOIN ' +
        'Prodazi ON Check.'#1050#1086#1076'_'#1095#1077#1082#1072' = Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072') ON Personal.'#1050#1086#1076'_'#1087#1077 +
        #1088#1089#1086#1085#1072#1083#1091' = Prodazi.'#1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1091') ON Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1091' = Prodazi.' +
        #1050#1086#1076'_'#1090#1086#1074#1072#1088#1091';')
    Left = 120
    Top = 416
  end
  object DataSourceCheckREP: TDataSource
    DataSet = ADOCheckREP
    Left = 216
    Top = 416
  end
end
