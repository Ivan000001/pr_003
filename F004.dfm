object F004_: TF004_
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 324
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 193
    Height = 273
    TabOrder = 0
    object RB1: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = #1063#1080#1089#1090#1099#1077' '#1073#1083#1072#1085#1082#1080
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RB1Click
    end
    object RB2: TRadioButton
      Left = 16
      Top = 47
      Width = 113
      Height = 17
      Caption = #1055#1059
      TabOrder = 1
      OnClick = RB2Click
    end
    object RB3: TRadioButton
      Left = 16
      Top = 120
      Width = 113
      Height = 17
      Caption = #1058#1055
      TabOrder = 2
      OnClick = RB3Click
    end
    object E_pu: TEdit
      Left = 32
      Top = 70
      Width = 129
      Height = 21
      Enabled = False
      MaxLength = 13
      TabOrder = 3
      OnKeyPress = E_puKeyPress
    end
    object chb_rb2_fiz18: TCheckBox
      Left = 32
      Top = 97
      Width = 129
      Height = 17
      Caption = #1044#1072#1085#1085#1099#1077' '#1089' '#1092#1080#1079'-18'
      Enabled = False
      TabOrder = 4
    end
    object chb_rb3_fiz18: TCheckBox
      Left = 32
      Top = 170
      Width = 129
      Height = 17
      Caption = #1044#1072#1085#1085#1099#1077' '#1089' '#1092#1080#1079'-18'
      Enabled = False
      TabOrder = 5
    end
    object cb_tp: TDBLookupComboboxEh
      Left = 32
      Top = 143
      Width = 129
      Height = 21
      Enabled = False
      EditButtons = <>
      KeyField = 'id_tp'
      ListField = 'tp_name'
      ListSource = DM1.DS_tp
      TabOrder = 6
      Visible = True
    end
    object chb_not: TCheckBox
      Left = 16
      Top = 239
      Width = 145
      Height = 17
      Caption = #1048#1089#1082#1083#1102#1095#1080#1090#1100' '#1087#1086#1076#1087#1080#1089#1072#1085#1099#1093
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object chb_fiz: TCheckBox
      Left = 16
      Top = 216
      Width = 145
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1092#1080#1079'.'#1083#1080#1094#1072
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object Button1: TButton
    Left = 126
    Top = 287
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
