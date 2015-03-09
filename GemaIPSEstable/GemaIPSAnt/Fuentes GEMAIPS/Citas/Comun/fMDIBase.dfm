object frmMDIBase: TfrmMDIBase
  Left = 0
  Top = 0
  Caption = 'frmMDIBase'
  ClientHeight = 269
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object stsbrMain: TStatusBar
    Left = 0
    Top = 250
    Width = 500
    Height = 19
    Panels = <>
  end
  object pnlNotify: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
  end
  object pnlAdds: TPanel
    Left = 464
    Top = 49
    Width = 36
    Height = 201
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
  end
  object spltrTop: TcxSplitter
    Left = 0
    Top = 41
    Width = 500
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    HotZone.SizePercent = 100
    AlignSplitter = salTop
    Control = pnlNotify
  end
  object spltrRight: TcxSplitter
    Left = 456
    Top = 49
    Width = 8
    Height = 201
    HotZoneClassName = 'TcxMediaPlayer9Style'
    HotZone.SizePercent = 100
    AlignSplitter = salRight
    Control = pnlAdds
  end
  object ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink
    Left = 64
    Top = 48
  end
  object prntDlgGIPS: TdxPrintDialog
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoSelection, pdoPageRange]
    PrintToFile = True
    Left = 152
    Top = 48
  end
  object cmpntGIPS: TdxComponentPrinter
    PreviewOptions.Caption = 'Vista Previa'
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPreferences, pvoPrint, pvoReportDesign, pvoPrintStyles, pvoReportFileOperations, pvoPageMargins]
    Version = 0
    Left = 240
    Top = 56
  end
end
