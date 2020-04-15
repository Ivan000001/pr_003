object f_main: Tf_main
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1087#1086#1088#1090#1077#1088
  ClientHeight = 652
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 600
    Top = 8
    Width = 41
    Height = 41
    Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object LB1: TListBox
    Left = 8
    Top = 8
    Width = 569
    Height = 633
    ItemHeight = 13
    Items.Strings = (
      '001. '#1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086' '#1055#1059' '#1087#1086' '#1058#1055' - '#1042#1057#1045#1043#1054' ('#1088#1072#1079#1073#1080#1074#1082#1072' '#1087#1086' '#1092#1072#1079#1085#1086#1089#1090#1080')'
      '002. '#1041#1055#1059' - '#1042#1057#1045#1043#1054
      
        '003. '#1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1086' '#1055#1059' '#1087#1086' '#1058#1055' - '#1042#1057#1045#1043#1054' ('#1087#1086' '#1092#1072#1079#1085#1086#1089#1090#1080') + '#1072#1082#1090#1099' '#1080' '#1087#1088#1086#1094#1077#1085 +
        #1090' '
      '004. '#1040#1082#1090#1099' ('#1073#1083#1072#1085#1082#1080')')
    TabOrder = 1
    OnDblClick = BitBtn1Click
  end
end
