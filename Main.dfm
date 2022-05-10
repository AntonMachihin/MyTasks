object FMain: TFMain
  Left = 0
  Top = 0
  Caption = #1052#1086#1080' '#1079#1072#1076#1072#1095#1080
  ClientHeight = 654
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 94
    Height = 21
    Caption = #1052#1086#1080' '#1079#1072#1076#1072#1095#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object BNewTask: TButton
    Left = 816
    Top = 23
    Width = 153
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1095#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BNewTaskClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 973
    Height = 566
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Filter: TEdit
    Left = 160
    Top = 24
    Width = 625
    Height = 35
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnMouseMove = FilterMouseMove
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=localhost;UID=ro' +
      'ot;DATABASE=mytasks;PORT=3306;COLUMN_SIZE_S32=1"'
    Provider = 'MSDASQL.1'
    Left = 952
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 896
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 848
    Top = 88
  end
end
