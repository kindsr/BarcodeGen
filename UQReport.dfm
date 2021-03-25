object UQRep: TUQRep
  Left = 0
  Top = 0
  Caption = 'UQRep'
  ClientHeight = 677
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    ShowingPreview = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
    OnNeedData = QuickRep1NeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 15
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 9
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 2
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    PreviewController = QRPreviewController1
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 320
        Top = 17
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          846.666666666666700000
          44.979166666666670000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        Alignment = taCenter
        AlignToBand = True
        AutoStretch = True
        Caption = 'Barcode Test'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 78
      Width = 718
      Height = 91
      AfterPrint = QRBand2AfterPrint
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        240.770833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDMBarcode1: TQRDMBarcode
        Left = 88
        Top = 22
        Width = 49
        Height = 51
        Size.Values = (
          134.937500000000000000
          232.833333333333300000
          58.208333333333330000
          129.645833333333300000)
        XLColumn = 1
        XLNumFormat = nfGeneral
        Text = '010880652000000017180930105SV3321A0310XK2429HN6'
        MatrixRows = m20x20
        FNCChar = '['
        GS1 = True
        QuietZone = True
      end
      object QRDMBarcode2: TQRDMBarcode
        Left = 213
        Top = 22
        Width = 49
        Height = 51
        Size.Values = (
          134.937500000000000000
          563.562500000000000000
          58.208333333333330000
          129.645833333333300000)
        XLColumn = 2
        XLNumFormat = nfGeneral
        Text = '010880652000000017180930105SV3321A0310XK2429HN6'
        MatrixRows = m20x20
        FNCChar = '['
        GS1 = True
        QuietZone = True
      end
      object QRDMBarcode3: TQRDMBarcode
        Left = 339
        Top = 22
        Width = 49
        Height = 51
        Size.Values = (
          134.937500000000000000
          896.937500000000000000
          58.208333333333330000
          129.645833333333300000)
        XLColumn = 3
        XLNumFormat = nfGeneral
        Text = '010880652000000017180930105SV3321A0310XK2429HN6'
        MatrixRows = m20x20
        FNCChar = '['
        GS1 = True
        QuietZone = True
      end
      object QRDMBarcode4: TQRDMBarcode
        Left = 464
        Top = 22
        Width = 49
        Height = 51
        Size.Values = (
          134.937500000000000000
          1227.666666666667000000
          58.208333333333330000
          129.645833333333300000)
        XLColumn = 4
        XLNumFormat = nfGeneral
        Text = '010880652000000017180930105SV3321A0310XK2429HN6'
        MatrixRows = m20x20
        FNCChar = '['
        GS1 = True
        QuietZone = True
      end
      object QRDMBarcode5: TQRDMBarcode
        Left = 589
        Top = 22
        Width = 49
        Height = 51
        Size.Values = (
          134.937500000000000000
          1558.395833333333000000
          58.208333333333330000
          129.645833333333300000)
        XLColumn = 5
        XLNumFormat = nfGeneral
        Text = '010880652000000017180930105SV3321A0310XK2429HN6'
        MatrixRows = m20x20
        FNCChar = '['
        GS1 = True
        QuietZone = True
      end
    end
  end
  object QRPreviewController1: TQRPreviewController
    PagesInPreview = 0
    prevInitHeight = 640
    PrevInitLeft = 0
    PrevInitTop = 0
    PrevDefaultSaveType = stPDF
    PrevWindowStyle = fsNormal
    PrevInitState = wsNormal
    PrevInitZoom = qrZoom100
    Left = 744
    Top = 16
  end
end
