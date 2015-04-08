object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'MainForm'
  ClientHeight = 179
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    428
    179)
  PixelsPerInch = 96
  TextHeight = 13
  object lblThisWindowsName: TLabel
    Left = 8
    Top = 11
    Width = 99
    Height = 13
    Caption = 'lblThisWindowsName'
  end
  object lblTargetWindowsName: TLabel
    Left = 8
    Top = 38
    Width = 112
    Height = 13
    Caption = 'lblTargetWindowsName'
  end
  object edtThisWindowsName: TEdit
    Left = 126
    Top = 8
    Width = 294
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnExit = edtThisWindowsNameExit
    ExplicitWidth = 292
  end
  object edtTargetWindowsName: TEdit
    Left = 126
    Top = 35
    Width = 294
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    ExplicitWidth = 292
  end
  object grbCopyData: TGroupBox
    Left = 8
    Top = 62
    Width = 412
    Height = 107
    Anchors = [akLeft, akTop, akRight]
    Caption = 'WM_COPYDATA'
    TabOrder = 2
    ExplicitWidth = 410
    DesignSize = (
      412
      107)
    object lblDwData: TLabel
      Left = 3
      Top = 23
      Width = 41
      Height = 13
      Caption = 'dwData:'
    end
    object lblLpData: TLabel
      Left = 3
      Top = 50
      Width = 35
      Height = 13
      Caption = 'lpData:'
    end
    object lblResult: TLabel
      Left = 3
      Top = 77
      Width = 34
      Height = 13
      Caption = 'Result:'
    end
    object edtDwData: TEdit
      Left = 55
      Top = 20
      Width = 90
      Height = 21
      TabOrder = 0
    end
    object edtLpData: TEdit
      Left = 55
      Top = 47
      Width = 272
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      ExplicitWidth = 270
    end
    object btnSendMessage: TButton
      Left = 333
      Top = 45
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'SendMessage'
      TabOrder = 2
      OnClick = btnSendMessageClick
      ExplicitLeft = 331
    end
    object edtResult: TEdit
      Left = 55
      Top = 74
      Width = 90
      Height = 21
      TabOrder = 3
    end
  end
end
