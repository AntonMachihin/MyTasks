object FSearch: TFSearch
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 359
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 39
    Height = 21
    Caption = #1056#1086#1083#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 124
    Height = 21
    Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 110
    Height = 21
    Caption = #1055#1086#1089#1090#1072#1085#1086#1074#1097#1080#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 74
    Height = 21
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 176
    Width = 55
    Height = 21
    Caption = #1057#1090#1072#1090#1091#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 216
    Width = 114
    Height = 21
    Caption = #1050#1088#1072#1081#1085#1080#1081' '#1089#1088#1086#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object otvetstv: TEdit
    Left = 176
    Top = 56
    Width = 290
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object postanov: TEdit
    Left = 176
    Top = 96
    Width = 290
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object nazvanie: TEdit
    Left = 176
    Top = 136
    Width = 290
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 40
    Top = 264
    Width = 186
    Height = 21
    Date = 44690.000000000000000000
    Time = 0.701413726848841200
    TabOrder = 3
    Visible = False
  end
  object DateTimePicker2: TDateTimePicker
    Left = 280
    Top = 264
    Width = 186
    Height = 21
    Date = 44690.000000000000000000
    Time = 0.704568171298888000
    TabOrder = 4
    Visible = False
  end
  object CBDate: TComboBox
    Left = 176
    Top = 216
    Width = 290
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 5
    Text = #1051#1102#1073#1072#1103' '#1076#1072#1090#1072
    OnChange = CBDateChange
    Items.Strings = (
      #1051#1102#1073#1072#1103' '#1076#1072#1090#1072
      #1042#1099#1073#1088#1072#1090#1100)
  end
  object BFind: TButton
    Left = 96
    Top = 312
    Width = 89
    Height = 33
    Caption = #1053#1072#1081#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BFindClick
  end
  object BCancel: TButton
    Left = 280
    Top = 312
    Width = 89
    Height = 33
    Caption = #1057#1073#1088#1086#1089#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BCancelClick
  end
  object status: TComboBox
    Left = 176
    Top = 176
    Width = 290
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = #1051#1102#1073#1086#1081
    Items.Strings = (
      #1051#1102#1073#1086#1081
      #1054#1078#1080#1076#1072#1085#1080#1077
      #1053#1072#1079#1085#1072#1095#1077#1085
      #1042' '#1088#1072#1073#1086#1090#1077
      #1048#1089#1087#1086#1083#1085#1077#1085#1086
      #1047#1072#1082#1088#1099#1090)
  end
  object rol: TComboBox
    Left = 176
    Top = 16
    Width = 145
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 9
    Text = #1051#1102#1073#1072#1103
    Items.Strings = (
      #1051#1102#1073#1072#1103
      #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      #1055#1086#1089#1090#1072#1085#1086#1074#1097#1080#1082)
  end
end
