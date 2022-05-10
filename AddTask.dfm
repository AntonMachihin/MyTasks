object FAddTask: TFAddTask
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1095#1091
  ClientHeight = 269
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 23
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
  object Label3: TLabel
    Left = 24
    Top = 58
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
  object Label4: TLabel
    Left = 24
    Top = 98
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
  object Label5: TLabel
    Left = 24
    Top = 133
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
  object Label6: TLabel
    Left = 24
    Top = 170
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
  object Label7: TLabel
    Left = 676
    Top = 197
    Width = 127
    Height = 21
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object otvetstv: TEdit
    Left = 168
    Top = 55
    Width = 185
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
    Left = 168
    Top = 95
    Width = 185
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
    Left = 168
    Top = 130
    Width = 457
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object date_okon: TMonthCalendar
    Left = 641
    Top = 23
    Width = 197
    Height = 168
    Date = 44689.000000000000000000
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object BAdd: TButton
    Left = 168
    Top = 216
    Width = 121
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BAddClick
  end
  object BCancel: TButton
    Left = 472
    Top = 216
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BCancelClick
  end
  object status: TComboBox
    Left = 168
    Top = 165
    Width = 290
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = #1054#1078#1080#1076#1072#1085#1080#1077
    Items.Strings = (
      #1054#1078#1080#1076#1072#1085#1080#1077
      #1053#1072#1079#1085#1072#1095#1077#1085
      #1042' '#1088#1072#1073#1086#1090#1077
      #1048#1089#1087#1086#1083#1085#1077#1085#1086
      #1047#1072#1082#1088#1099#1090)
  end
  object rol: TComboBox
    Left = 168
    Top = 20
    Width = 185
    Height = 29
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 7
    Text = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
    Items.Strings = (
      #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      #1055#1086#1089#1090#1072#1085#1086#1074#1097#1080#1082)
  end
end
