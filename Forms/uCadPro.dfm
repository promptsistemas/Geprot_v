object frmCadPro: TfrmCadPro
  Left = 271
  Top = 77
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Cadastro de Produtos'
  ClientHeight = 609
  ClientWidth = 648
  Color = 11589887
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 4
    Top = 42
    Width = 640
    Height = 383
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnEnter = TabSheet1Enter
      object Label1: TLabel
        Left = 2
        Top = 27
        Width = 29
        Height = 13
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 41
        Top = 27
        Width = 59
        Height = 13
        Caption = 'C'#243'd.Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 115
        Top = 27
        Width = 103
        Height = 13
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 47
        Top = 101
        Width = 55
        Height = 13
        Caption = 'Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 2
        Top = 65
        Width = 37
        Height = 13
        Caption = 'C'#243'd.For'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 297
        Top = 101
        Width = 52
        Height = 13
        Caption = 'Vl Venda 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 2
        Top = 101
        Width = 40
        Height = 13
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 471
        Top = 102
        Width = 47
        Height = 13
        Caption = 'C'#243'd.Barra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 372
        Top = 274
        Width = 54
        Height = 13
        Caption = 'Valor Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 370
        Top = 244
        Width = 63
        Height = 13
        Caption = 'Vl Venda N.F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 52
        Top = 65
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 109
        Top = 101
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 471
        Top = 269
        Width = 68
        Height = 13
        Caption = 'Margem Lucro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label16: TLabel
        Left = 5
        Top = 5
        Width = 109
        Height = 13
        Caption = 'Produto do Grupo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 127
        Top = 5
        Width = 466
        Height = 15
        DataField = 'GRUPO'
        DataSource = DM.dsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 256
        Top = 8
        Width = 129
        Height = 22
        Caption = 'grupo'
        Visible = False
        OnClick = SpeedButton1Click
      end
      object Label17: TLabel
        Left = 446
        Top = 244
        Width = 75
        Height = 13
        Caption = '% Desc.M'#225'ximo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label19: TLabel
        Left = 2
        Top = 138
        Width = 24
        Height = 13
        Caption = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 410
        Top = 101
        Width = 59
        Height = 13
        Caption = 'Estoque Min'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 178
        Top = 101
        Width = 63
        Height = 13
        Caption = 'Valor Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 245
        Top = 101
        Width = 42
        Height = 13
        Caption = 'M. Lucro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 78
        Top = 152
        Width = 23
        Height = 22
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
          1100121212001313130014141400151515001616160017171700181818001919
          19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
          2100222222002323230024242400252525002626260027272700282828002929
          29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
          3100323232003333330034343400353535003636360037373700383838003939
          39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          4100424242004343430044444400454545004646460047474700484848004949
          49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
          5100525252005353530054545400555555005656560057575700585858005959
          59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
          6100626262006363630064646400656565006666660067676700666769006668
          6A0066696B00676A6C00696B6C006D6D6D006E6E6E006F6F6F00707070006F70
          71006F7172006F7173006F7174006F7275006F7276006F737600707377006E74
          7A006C757E006F757B0072767A0073777A0075787B0076797C00787B7D007B7D
          7F007D7F80008081820084848400858585008686860087878700888888008B89
          89008F8B8A00938C8A00988E8B009D8F8B00A28F8A00A78F8900AA8E8900AC8E
          8800AE8E8800B08D8700B18D8700B38E8700B38D8600B48E8700B58F8700B690
          8700B6918800B7928900B8948A00BA958B00BB968C00BD988E00BE988E00C098
          8E00C1998F00C29A8F00C49C9100C6A09300C9A39500CDA89600D0AC9700D5B3
          9900D9B89B00DEBE9E00E6C59E00E9CAA200ECCDA300F0D0A300F2D2A300F3D5
          A600F4D8AB00F4DAAC00F5DBAE00F5DDB000F5DDB200F5DEB300F5E1B900F7E7
          C000F9EECB00FBF4D300FDF9D900FDFBDC00FEFDE000FEFDE500FDFDEA00FBFC
          E900F8FAE800F5F8E900F1F7EA00EFF5EA00EDF4EA00EDF2EA00EEEDE900EFE5
          EA00F1DBEA00F4CDEB00F9B9ED00FE81F300FE38F900FE16FC00FE05FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F905FE00EF11FE00E31E
          FE00D62BFE00CC36FC00B949FB00A859F9009869F6008B75F5007783F400638C
          EF005691EC004E94E9004996E8004596E700489BE7004B9FE8004EA3E8004FA7
          EA004FA5E5004EA3E2004E9FDD004E9DD900509BD600509AD300DB68A0DBDBDB
          DBDBDBDBDBDBDBDBDBDBFFF57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DB
          DBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57A
          9CDBDBDBDBDBDBDBDBDBDBDBDBF9F9F56BDB93A5A59FDBDBDBDBDBDBDBDBF9CA
          A49EB8BFBFBCAB96DBDBDBDBDBDBDBDBA7B9BCBDBDBFC0CA93DBDBDBDBDBDBDB
          A5B4BBBDBFC0C0C0A7DBDBDBDBDBDBA5B5ACBABEBFC0C0C0BA9CDBDBDBDBDBA5
          B5AAB4BCBEBFBFBEBA9EDBDBDBDBDB9EB9ACADB8BCBEBDBEB897DBDBDBDBDBDB
          ABBFB8ADB1B9BBBC99DBDBDBDBDBDBDB96CAC0B1ACB0B9A999DBDBDBDBDBDBDB
          DB93A7B8B7AE9999DBDBDBDBDBDBDBDBDBDBDB9D9E9ADBDBDBDB}
        OnClick = SpeedButton2Click
      end
      object Label35: TLabel
        Left = 353
        Top = 101
        Width = 52
        Height = 13
        Caption = 'Vl Venda 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 2
        Top = 183
        Width = 59
        Height = 13
        Caption = 'Pesado S/N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 103
        Top = 138
        Width = 75
        Height = 13
        Caption = 'Descri'#231#227'o NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 91
        Top = 183
        Width = 47
        Height = 13
        Caption = 'Ativo S/N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 2
        Top = 42
        Width = 37
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'ID_GRUPO_PRODUTO'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 41
        Top = 42
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'ID_PRODUTO'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 115
        Top = 42
        Width = 515
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'DESCRICAO'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit6: TDBEdit
        Left = 2
        Top = 78
        Width = 48
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'ID_FORNECEDOR'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit7: TDBEdit
        Left = 52
        Top = 78
        Width = 578
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'FORNECEDOR'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 2
        Top = 115
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'UNIDADE'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit9: TDBEdit
        Left = 47
        Top = 115
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'EMBALGEM'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit10: TDBEdit
        Left = 109
        Top = 115
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'REFERENCIA'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = DBEdit10Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit11: TDBEdit
        Left = 372
        Top = 288
        Width = 64
        Height = 19
        CharCase = ecUpperCase
        Color = clSkyBlue
        Ctl3D = False
        DataField = 'VL_CUSTO'
        DataSource = DM.dsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        Visible = False
        OnExit = DBEdit11Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 438
        Top = 288
        Width = 70
        Height = 19
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        DataField = 'VL_MARGEM'
        DataSource = DM.dsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
        Visible = False
        OnExit = DBEdit12Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit13: TDBEdit
        Left = 297
        Top = 115
        Width = 55
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'VL_VENDA_ATAC'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        OnExit = DBEdit13Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit15: TDBEdit
        Left = 370
        Top = 257
        Width = 73
        Height = 19
        CharCase = ecUpperCase
        Color = clYellow
        Ctl3D = False
        DataField = 'VL_VENDA_NF'
        DataSource = DM.dsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        Visible = False
        OnExit = DBEdit15Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit16: TDBEdit
        Left = 471
        Top = 115
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'CD_BARRA'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        OnExit = DBEdit16Exit
        OnKeyPress = FormKeyPress
      end
      object GroupBox1: TGroupBox
        Left = 382
        Top = 176
        Width = 247
        Height = 75
        Caption = 'Hist'#243'ricos'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
        object Label3: TLabel
          Left = 26
          Top = 27
          Width = 81
          Height = 13
          Caption = 'Data Ult. Compra'
        end
        object Label12: TLabel
          Left = 120
          Top = 27
          Width = 76
          Height = 13
          Caption = 'Data Ult. Venda'
        end
        object Label15: TLabel
          Left = 191
          Top = 27
          Width = 39
          Height = 13
          Caption = 'Estoque'
          Visible = False
        end
        object Label22: TLabel
          Left = 285
          Top = 27
          Width = 51
          Height = 13
          Caption = 'Estoque_1'
          Visible = False
        end
        object DBEdit17: TDBEdit
          Left = 25
          Top = 41
          Width = 91
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DT_ULT_COMPRA'
          DataSource = DM.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 120
          Top = 41
          Width = 91
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DT_ULT_VENDA'
          DataSource = DM.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit19: TDBEdit
          Left = 191
          Top = 41
          Width = 91
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'ESTOQUE'
          DataSource = DM.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Visible = False
          OnKeyPress = FormKeyPress
        end
        object DBEdit25: TDBEdit
          Left = 285
          Top = 41
          Width = 91
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'ESTOQUE_1'
          DataSource = DM.dsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
          OnKeyPress = FormKeyPress
        end
      end
      object DBEdit20: TDBEdit
        Left = 607
        Top = 301
        Width = 91
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CODIGO'
        DataSource = DM.dsProduto
        ParentCtl3D = False
        TabOrder = 20
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 168
        Top = 176
        Width = 208
        Height = 75
        Caption = 'C'#243'd. de Barra do Produto'
        Color = clInfoBk
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
        object ACBrBarCode1: TACBrBarCode
          Left = 27
          Top = 16
          Width = 169
          Height = 50
          Modul = 1
          Ratio = 2.000000000000000000
          Typ = bcCodeEAN13
          ShowText = bcoCode
          ShowTextFont.Charset = DEFAULT_CHARSET
          ShowTextFont.Color = clWindowText
          ShowTextFont.Height = -12
          ShowTextFont.Name = 'Tahoma'
          ShowTextFont.Style = [fsBold]
          ShowTextPosition = stpBottomLeft
          Color = clBtnFace
        end
      end
      object DBEdit21: TDBEdit
        Left = 446
        Top = 257
        Width = 102
        Height = 19
        CharCase = ecUpperCase
        Color = clSkyBlue
        Ctl3D = False
        DataField = 'VL_DESC_MAX'
        DataSource = DM.dsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        Visible = False
        OnExit = DBEdit21Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit26: TDBEdit
        Left = 416
        Top = 0
        Width = 121
        Height = 21
        DataField = 'TIPO_ALIQ'
        DataSource = DM.dsProduto
        TabOrder = 24
        Visible = False
      end
      object DBEdit27: TDBEdit
        Left = 178
        Top = 115
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        Color = clSkyBlue
        Ctl3D = False
        DataField = 'VL_CUSTO'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object DBEdit24: TDBEdit
        Left = 411
        Top = 115
        Width = 59
        Height = 21
        CharCase = ecUpperCase
        Color = clYellow
        Ctl3D = False
        DataField = 'ESTOQ_MIN'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object DBEdit28: TDBEdit
        Left = 245
        Top = 115
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        Ctl3D = False
        DataField = 'VL_MARGEM'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        OnExit = DBEdit28Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit29: TDBEdit
        Left = 353
        Top = 115
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'VL_VENDA_VARE'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        OnExit = DBEdit29Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit30: TDBEdit
        Left = 66
        Top = 180
        Width = 18
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'BALANCA'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        OnExit = DBEdit30Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit23: TDBEdit
        Left = 2
        Top = 152
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'NCM'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        OnExit = DBEdit23Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit34: TDBEdit
        Left = 103
        Top = 152
        Width = 527
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'DESC_NCM'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
      end
      object DBEdit35: TDBEdit
        Left = 144
        Top = 179
        Width = 18
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'ATIVO'
        DataSource = DM.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        OnExit = DBEdit35Exit
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tributos'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 1
        Width = 630
        Height = 153
        Caption = 'Tributa'#231#227'o ICMS'
        TabOrder = 0
        object Label18: TLabel
          Left = 5
          Top = 58
          Width = 155
          Height = 13
          Caption = 'CST - C'#243'digo Situa'#231#227'o Tributaria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 339
          Top = 58
          Width = 62
          Height = 13
          Caption = 'Tipo Aliquota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 5
          Top = 15
          Width = 104
          Height = 13
          Caption = 'Origem da Mercadoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 5
          Top = 105
          Width = 294
          Height = 13
          Caption = 'CSOSN - C'#243'digo de Situa'#231#227'o da Opera'#231#227'o (Simples Nacional)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 4
          Top = 73
          Width = 333
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clWhite
          Ctl3D = False
          DataField = 'DESC_CST'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'DESC_CST'
          ListField = 'DESC_CST'
          ListSource = DM.dsCST
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnClick = DBLookupComboBox1Click
          OnExit = DBLookupComboBox1Exit
          OnKeyPress = FormKeyPress
        end
        object DBComboBox1: TDBComboBox
          Left = 339
          Top = 73
          Width = 108
          Height = 23
          Color = clWhite
          Ctl3D = True
          DataField = 'TIPO_ALIQ'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            'T- 17,00 % - Tributado'
            'T- 18,00 % - Tributado'
            'I -  Isento'
            'S - Tributado no ISS '#9
            'F - Substitui'#231#227'o - Substitui'#231#227'o'
            'N - N'#227'o Incid'#234'ncia - N'#227'o Incid'#234'ncia')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnClick = DBComboBox1Click
          OnExit = DBComboBox1Exit
          OnKeyPress = FormKeyPress
        end
        object GroupBox4: TGroupBox
          Left = 451
          Top = 13
          Width = 92
          Height = 94
          Caption = 'Dentro do Estado'
          TabOrder = 3
          object Label7: TLabel
            Left = 6
            Top = 14
            Width = 49
            Height = 13
            Caption = 'Aliquota %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 6
            Top = 51
            Width = 23
            Height = 13
            Caption = 'MVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit4: TDBEdit
            Left = 6
            Top = 28
            Width = 45
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            DataField = 'ALIQUOTA'
            DataSource = DM.dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
          object DBEdit31: TDBEdit
            Left = 6
            Top = 67
            Width = 45
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            DataField = 'MVA'
            DataSource = DM.dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = FormKeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 544
          Top = 13
          Width = 82
          Height = 94
          Caption = 'Fora do Estado'
          TabOrder = 4
          object Label38: TLabel
            Left = 6
            Top = 14
            Width = 49
            Height = 13
            Caption = 'Aliquota %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 6
            Top = 51
            Width = 23
            Height = 13
            Caption = 'MVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit32: TDBEdit
            Left = 6
            Top = 28
            Width = 45
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            DataField = 'ALIQUOTA_OUTROS'
            DataSource = DM.dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
          object DBEdit33: TDBEdit
            Left = 6
            Top = 67
            Width = 45
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            DataField = 'MVA_OUTROS'
            DataSource = DM.dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = FormKeyPress
          end
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 4
          Top = 29
          Width = 443
          Height = 23
          DataField = 'ORIGEM_PRODUTO'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'DESCRICAO'
          ListField = 'DESCRICAO'
          ListSource = DM.dsOrigemProduto
          ParentFont = False
          TabOrder = 0
          OnEnter = DBLookupComboBox5Enter
          OnExit = DBLookupComboBox5Exit
          OnKeyPress = DBLookupComboBox5KeyPress
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 4
          Top = 122
          Width = 622
          Height = 23
          DataField = 'DESC_CSOSN'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'DESC_CSOSN'
          ListField = 'DESC_CSOSN'
          ListSource = DM.dsCSOSN
          ParentFont = False
          TabOrder = 5
          OnEnter = DBLookupComboBox6Enter
          OnExit = DBLookupComboBox6Exit
          OnKeyPress = DBLookupComboBox6KeyPress
        end
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 160
        Width = 628
        Height = 145
        Caption = 'Tributa'#231#227'o IPI / PIS / COFINS'
        TabOrder = 1
        object Label25: TLabel
          Left = 5
          Top = 18
          Width = 116
          Height = 13
          Caption = 'Situa'#231#227'o Tribut'#225'ria PIS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 564
          Top = 19
          Width = 45
          Height = 13
          Caption = '% Aliq Pis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 564
          Top = 59
          Width = 60
          Height = 13
          Caption = '% Aliq Cofins'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 5
          Top = 59
          Width = 139
          Height = 13
          Caption = 'Situa'#231#227'o Tribut'#225'ria COFINS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 5
          Top = 98
          Width = 110
          Height = 13
          Caption = 'Situa'#231#227'o Tribut'#225'ria IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 564
          Top = 98
          Width = 24
          Height = 13
          Caption = '% IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 5
          Top = 33
          Width = 556
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clWhite
          Ctl3D = False
          DataField = 'SIT_TRIBUTARIO'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'SIT_TRIBUTARIA'
          ListField = 'SIT_TRIBUTARIA'
          ListSource = DM.dsSitTributaria
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBLookupComboBox2Exit
          OnKeyPress = FormKeyPress
        end
        object DBEdit14: TDBEdit
          Left = 564
          Top = 73
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'ALIQUOTA_COFINS'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnExit = DBEdit14Exit
          OnKeyPress = FormKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 564
          Top = 33
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'ALIQUOTA_PIS'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnExit = DBEdit5Exit
          OnKeyPress = FormKeyPress
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 5
          Top = 73
          Width = 556
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clWhite
          Ctl3D = False
          DataField = 'SIT_COFINS'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'SIT_COFINS'
          ListField = 'SIT_COFINS'
          ListSource = DM.dsSitCofins
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = DBLookupComboBox3Exit
          OnKeyPress = FormKeyPress
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 5
          Top = 111
          Width = 556
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clWhite
          Ctl3D = False
          DataField = 'SIT_IPI'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'SIT_IPI'
          ListField = 'SIT_IPI'
          ListSource = DM.dsSitIPI
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBLookupComboBox4Exit
          OnKeyPress = FormKeyPress
        end
        object DBEdit22: TDBEdit
          Left = 564
          Top = 111
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'ALIQUOTA_IPI'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnExit = DBEdit22Exit
          OnKeyPress = FormKeyPress
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CFOP'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox7: TGroupBox
        Left = 0
        Top = 3
        Width = 629
        Height = 137
        Caption = 'CFOP - C'#243'digo Fiscal de Opera'#231#227'o'
        TabOrder = 0
        object Label44: TLabel
          Left = 3
          Top = 15
          Width = 232
          Height = 13
          Caption = 'Natureza de Opera'#231#227'o (Sa'#237'da) Dentro do Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 3
          Top = 73
          Width = 221
          Height = 13
          Caption = 'Natureza de Opera'#231#227'o (Sa'#237'da) Fora do Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 3
          Top = 29
          Width = 623
          Height = 23
          DataField = 'CFOP_DENTRO_ESTADO'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'CFNOME'
          ListField = 'CFNOME'
          ListSource = DM.dsCfop
          ParentFont = False
          TabOrder = 0
          OnExit = DBLookupComboBox7Exit
          OnKeyPress = DBLookupComboBox7KeyPress
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 3
          Top = 88
          Width = 623
          Height = 23
          DataField = 'CFOP_FORA_ESTADO'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          KeyField = 'CFNOME'
          ListField = 'CFNOME'
          ListSource = DM.dsCfop
          ParentFont = False
          TabOrder = 1
          OnExit = DBLookupComboBox8Exit
          OnKeyPress = DBLookupComboBox8KeyPress
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'C'#243'digos Alernativos(Similar)'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox8: TGroupBox
        Left = 2
        Top = 3
        Width = 303
        Height = 150
        Caption = 'C'#243'digos de Barras Alternativos (Similar)'
        TabOrder = 0
        object Label46: TLabel
          Left = 4
          Top = 15
          Width = 100
          Height = 13
          Caption = 'C'#243'd.Barra Alternativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit36: TDBEdit
          Left = 4
          Top = 28
          Width = 165
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'CODBARRAS'
          DataSource = DM.dsBarras
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object BB_INCLUIR_ALTERNATIVO: TBitBtn
          Left = 5
          Top = 107
          Width = 71
          Height = 37
          Caption = '&Incluir'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF097711097711097711097711FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF06770CFFFFFF0EA41B0EA51C0EA51C097711FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06770CFFFFFF0EA41B0EA5
            1C0EA51C097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06770C
            FFFFFF0EA41B0EA51C0EA51C097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF06770DFFFFFF0EA41B0EA51C0EA51C097711FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF08780EFFFFFF10A61F0EA51B0EA51B097711FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780EFFFFFF17AB2911A8
            2111A821097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF09771109771109771109771109771109771108780E
            FFFFFF1DB13218AD2A18AD2A08780E0977110977110977110977110977110977
            11FF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF52DD7E4CD87546D46D41
            CF663CCC5F36C65529BA4324B53B1FB13319AC2B1BB02F17AC2812A8210EA51C
            0EA51B0EA51B0EA51B097711FF00FFFF00FFFF00FFFF00FF097711FFFFFF52DD
            7E4CD87546D46D41CF663CCC5F36C65530BE4C2BBA4426B63D20B2361BB02F17
            AC2812A8210EA51C0EA51B0EA51C0EA51C097711FF00FFFF00FFFF00FFFF00FF
            097711FFFFFF56E08551DA7C4CD67546D26D42CE663CC95E37C55631C04F2CBC
            4827B74022B4381EB03219AC2B13A8230FA41D0EA31B0EA41B097711FF00FFFF
            00FFFF00FFFF00FF097711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF38C55833C1512EBE4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF097711FF00FFFF00FFFF00FFFF00FFFF00FF09771109771109771109771109
            771109771108780EFFFFFF3FCC633BC95C3BC95C08780E097711097711097711
            097711097711097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF46D36E42D06842D068097711FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF4DD87749D5
            7149D571097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711
            FFFFFF54DD8150DB7B50DB7B097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF097711FFFFFF59E28957E1855EE890097711FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF5AE38A5CE58C5EE890097711FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFFFFFFFFFFFF
            FFFFFFFF097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            097711097711097711097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 1
          OnClick = BB_INCLUIR_ALTERNATIVOClick
        end
        object BB_EXCLUIR_ALTERNATIVO: TBitBtn
          Left = 223
          Top = 107
          Width = 71
          Height = 37
          Caption = '&Excluir'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFF1B77DF1B77DF1B77DF1B77DF1B77DF1B77DFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFF1B77DFCE3BCFEE3C1FEDCBAFBD0A7F6C494F2B981F1B67BF1B7
            7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFF1B77DFDEDC8FFF5D4FEE6C3FDDAB7FBCEA6F6C494
            F2BA82F1B77CF1B77CF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFFBDAFEF2D0FEE4C3FD
            DAB7FBCFA7F6C494F2BA82F1B77DF1B77DF1B77DFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFFD
            DCFEF2D0FEE6C4FDDBB8FBD0A8F6C595F2BA83F1B77CF1B77DF1B77DF1B77DFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            F1B77DFBE7BCFFFFDDFEF2D0FEE6C4FDDBB8FBD0A8F6C596F2BB83F1B77CF1B7
            7DF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFF1B77DFDF1CAFFFFDEFFF2D0FEE7C4FDDCB9FBD1A9F6C697
            F3BB84F1B77DF1B77DF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFF4C792FEF9D6FFFFDEFFF6D4FFEAC9FE
            DEBDFCD2ACF7C799F3BB85F1B77CF1B77DF1B77DF1B77DF1B77DFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF7D6A8FFFFE4FFFB
            D8FCE6BDF8D2A6F6C797F5C290F4BE88F2B981F1B77CF1B67CF1B77DF1B77DF1
            B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77D
            F9DDAFF5D4A3E8AA67E49C54E69D56E9A561EDB070EFBB7FF1C188F2C28AF2BE
            84F1B87EF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFF1B97FE2994FD06F17D2721ADB8635E49B53EBAC6BEFBD81F3CA94
            F5D4A1F6D6A5F5D19DF2C58CEFB97DF1B67BFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFE6A05BC75F03C96307D67D28E09143E9A45FEE
            B577F3C68EF6D5A5F9E4B8FBE9BEF7DFB1F4D09CEFBD83EFB478FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEAA967CF6E17CA6509D67D
            29E09346EAA662EEB77AF3C993F7DBACFCEEC6FEF5D0F9E7BCF5D4A3F1C287EF
            B67AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            EBAB6BDC893BD8812EDF8E41E8A35EE9B47505720A05720AFBE7BDFCEBC3F8DF
            B3F4CA95F1BA81FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFEDAE6FEAA765EBA96805720A33AF4F5AE48B
            07740DF4C994F3BF88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFA27373A27373A27373FF00FFFF00FFFF00FFFF00FFFF00FF05720A2B
            A6455EE89150DF7D2BB64405720AFF00FFFF00FFFF00FFFF00FFFF00FFA87671
            A27373D3AF97D3AE95D1AA93A27373F2CB8FCA996FFF00FFFF00FFFF00FFFF00
            FF05720A1894262DA6463EC36238C65723AE381FAA3205720AFF00FFFF00FFFF
            00FFB28784E8D3C0A27373EDC995EDC995EDC995A27373B67844BF895FA27373
            FF00FFFF00FFFF00FF05720A05720A05720A1A972C27B84005720A05720A0572
            0AFF00FFFF00FFFF00FFB78F8DF4EAD6EDC995BC8252A27373A27373E2C3A8A2
            7373D8AF8CA27373FF00FFFF00FFFF00FFFF00FFFF00FF05720A209C3016AB28
            05720AFF00FFFF00FFFF00FFFF00FFFF00FFA27373A27373D29954BE6E0DB785
            69E9D1C1EBCBA9D4A16EC89461A27373FF00FFFF00FFFF00FFFF00FFFF00FF05
            720A179B25098D1305720AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA27373
            A27373BA732AD69F5DDCB48CA27373A27373B3846FFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF05720A09891205720AFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFA66D56BE7629C0803FA27373EDC995EDC995A27373FF00FF
            FF00FFFF00FFFF00FFFF00FF0E8C170C971705720AFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA27373A27373EDC995EDC995A2
            7373FF00FFFF00FFFF00FFFF00FF05720A05720A05720A05720AFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA273
            73A27373A27373A27373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
          OnClick = BB_EXCLUIR_ALTERNATIVOClick
        end
        object BB_SALVAR_ALTERNATIVO: TBitBtn
          Left = 76
          Top = 107
          Width = 71
          Height = 37
          Caption = '&Salvar'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            AE746C9F52529A4D4E9C4E4F994748A37374B7B8B8B8B6B6B9B7B7BAB8B7BAB7
            B7B9B7B7B8B6B6B7B6B6B8B8B8A47171984546994A4B994B4C9A4D4E9A4D4EFF
            00FFFF00FFB48176C36E6BC96464C96464CB6565B757579A696AB0B1B1CDCDCB
            E5E3E1F2EFEDF9F5F2F9F5F1EEEBEAE3E2E0DEDFDFB67676952C2C9835359E3A
            3AC15B5BC060619A4C4DFF00FFB48176C36E6BCD6565CD6666CE6767BA58599B
            6C6CA18D8DB58180CFAFACDFCCCAF9F5F1FFFCF9FBF7F5EFEDEBE8E9E8B97677
            942A299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
            66CE6767B858589E7171A17D7E9E3D3CB4706EC9A09DECE8E5FBF7F5FEFAF7F9
            F5F2F0F0EFBB7978942A2A9833339E3939C25C5CC262629A4C4DFF00FFB48176
            C36E6BCC6565CB6666CE6767B85858A27474A78484972F2F9F3F3FB57573DED8
            D7F2EFEDFBF7F5FEFBF8FAFAF7BE7C7C94292A9833339E3939C25C5CC262629A
            4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B85858A57676AD8988983232
            972F2FA04848C9C2C1E5E3E1F3F0EDFDF9F6FFFFFDC27F7E9329299833339E39
            39C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B75757AB
            7A79B58C8B972B2B972B2B973232ADA6A6CFCFCEE6E3E0F6F3F0FFFFFDC48280
            9329299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
            66CE6767B55656AE7C7BC5AAA8A66565A160609D64649E9F9FB4B9B8D3D6D4EC
            EFECFFFFFFC382819026269530309C3737C15B5BC262629A4C4DFF00FFB48176
            C36E6BCC6565CB6666CE6767BD5C5CB97172D3A7A5C9A0A0BF9999B89494B18D
            8DB18D8DC39F9ED8B2B1E6C2C0C57776A73F3FAA4545AE4949C66060C261629A
            4C4DFF00FFB48176C36E6BCD6666CD6666CD6666CC6565CC6363CB6161CB6262
            CB6262CC6162CC6162CB6161CA5F5FCA5F5FC95F5FCB6262CC6565CC6363CD66
            66CE6767C060619A4C4DFF00FFB48176C36E6BC66060C15D5CC46361C86C6BCB
            7272CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776
            CD7776CD7978CD6F6FCD6666C060619A4C4DFF00FFB48276C46F6CB04E4AA549
            44B56C68C48F8CD0ABA9D7BCBBD8BFBED8BEBDD8BEBDD8BEBDD8BEBDD8BEBDD8
            BEBDD8BEBDD8BEBDD8BEBDD8C3C2D19090CC6161C060619A4C4DFF00FFB48276
            C46E6BAC4541CE9E9AFAF5F3F6EDECF7EFEEF8F1F0F8F1F0F8F1F0F8F1F0F8F1
            F0F8F1F0F8F1F0F8F1F0F8F1F0F8F1F0FAF3F2EEE5E4CD8E8DC35959C060619A
            4D4EFF00FFB48276C46E6BAC4541D2A6A3FFFFFFFBF5F4FBF5F4FBF5F4FBF5F4
            FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FDF7F6EFE7E6CC8D
            8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFDF8F2F1F8
            F1F0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F1F0
            FBF5F4EFE6E5CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
            A1FFFFFEE9E4E3CCCACACDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCD
            CCCCCDCCCCCAC9C8E6E2E2F2E8E7CC8D8CC15757C060619A4D4EFF00FFB48276
            C46E6BAC4541D1A4A1FFFFFEF5EEEEEDE8E7EDE8E7EDE8E7EDE8E7EDE8E7EDE8
            E7EDE8E7EDE8E7EDE8E7EDE8E7ECE7E6F5F0F0F1E7E6CC8D8CC15757C060619A
            4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEECE7E6D4D1D1D5D2D2D5D2D2
            D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D2D0D0E9E5E5F1E8E7CC8D
            8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEF2ECEBE5
            E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDF
            F2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
            A1FFFFFEF2ECEBE5E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5
            E1E0E5E1E0E4DFDFF2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276
            C46E6BAC4541D1A4A1FFFFFEEBE5E5D2CFCFD3D1D0D3D1D0D3D1D0D3D1D0D3D1
            D0D3D1D0D3D1D0D3D1D0D3D1D0D0CECEE9E4E3F2E8E7CC8D8CC15757C060619A
            4D4EFF00FFB48276C46E6BAC4541D2A5A2FFFFFFFCF5F4FDF6F5FDF6F5FDF6F5
            FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FFF8F7F1E7E6CC8D
            8CC35959C161629A4D4EFF00FFB48276BF6F6BAA4541CB9E9BF3F3F2EFE9E8EF
            E9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8
            F0ECEBE8E0DFC88B8AB85353B85C5D9A4D4EFF00FFFF00FFAD736CA14540B689
            87C6CBCBC4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4
            C3C3C4C3C3C4C3C3C3C3C3CFC9C8B884849644459A4C4DFF00FF}
          TabOrder = 3
          OnClick = BB_SALVAR_ALTERNATIVOClick
        end
        object BB_CANCELAR_ALTERNATIVO: TBitBtn
          Left = 147
          Top = 107
          Width = 76
          Height = 37
          Caption = '&Cancelar'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA35228A35228
            A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A352
            28A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A3
            5228A35228FFF7EEFEF5EBFFF4E70033FFFEF0DFFFEFDCFEECD7FFEBD4FFE9D0
            FEE7CCFEE5C8FFE3C5FFE1C1FEDFBEFEDEBAFEDDB7FEDBB4FEDAB10033FFFFD8
            ADFED7ABFED7ABA35228A35228FEF8F0FFF6EDFFF5E90033FFFEF1E2FEEFDE00
            009A00009AFFEAD3FFE7CFFFE6CBFEE4C7FFE2C3FFE1BF00009A00009AFEDCB6
            FEDBB30033FFFED8AEFED8ACFED7ABA35228A35228FFF9F2FFF7EFFFF6EC0033
            FFFFF3E400009A174AFD103BF400009AFFE9D1FEE8CDFFE5C9FEE4C600009A00
            2CF80030FC00009AFEDBB50033FFFED9AFFED8ADFED7ABA35228A35228FFFAF4
            FEF9F1FFF7EE0033FFFFF4E700009A1A47F81A4CFF123BF100009AFEE8CFFFE7
            CC00009A012DF60132FF002AF300009AFEDCB60033FFFEDAB1FED9AEFED8ADA3
            5228A35228006600FFF9F30066000033FF99BB8CFFF3E500009A1C47F61B4DFF
            143EF400009A00009A002DF80134FF032BF200009A98AF70FEDDB80033FFFEDB
            B2006600FED8AEA35228A35228006600FFFAF50066000033FF98BC8EFFF4E899
            BA8900009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFEE2C199AF72
            FEDEBB0033FFFEDCB5006600FED9AFA35228A35228006600FFFBF70066000033
            FF98BD8FFEF5EA99BB8AFEF1E300009A1A48F91342FF0C3CFF0733F600009A98
            B277FEE3C398B073FEE0BC0033FFFEDDB7006600FEDAB1A35228A35228FFFDFB
            006600FFFBF50033FFFFF8F098BC8EFFF4E899BB8900009A214EFC1D4BFF1847
            FF1743F600009AFEE6CA98B277FEE2C398B0730033FF006600FEDCB5006600A3
            5228A35228FFFDFD006600FFFCF80033FFFFF9F199BD8FFFF5EB00009A2E5BF9
            2C5FFF224DF8204BF82355FF1B46F600009A98B279FFE3C598B0740033FF0066
            00FEDCB7006600A35228A35228FFFEFD006600FFFCF90033FFFFF9F4FFF8F100
            009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F600009AFEE4C7
            98B0750033FF006600FEDDB9006600A35228A35228FFFEFFFFFEFDFFFDFB0033
            FFFFFAF600009A4071FA4274FF325DF100009AFFF1E1FEEFDD00009A224DF127
            5AFF204CF800009AFEE3C60033FFFEE1BEFEDEBBFFDDB8A35228A35228FFFFFF
            FFFEFEFFFDFC0033FFFFFCF800009A497AFC3B66F300009AFFF3E7FFF2E3FEF0
            DFFEEEDB00009A2550F42655FA00009AFFE5C80033FFFEE1C0FEDFBEFFDEBAA3
            5228A35228FFFFFFFFFFFFFFFEFD0033FFFFFCF9FFFAF600009A00009AFFF6ED
            FFF5E9FFF3E6FEF1E2FFEFDEFFEEDA00009A00009AFEE8CEFEE6CA0033FFFEE2
            C3FEE0BFFEDFBCA35228A35228FFFFFF737373FFFFFE737373FFFDFB737373FE
            FBF5737373FFF7EF737373FEF4E8737373FFF0E0737373FEEDD9737373FEE9D1
            7373730033FF737373FEE2C1FFE0BEA35228A35228A35228A35228A35228A352
            28A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A3
            5228A35228A35228A35228A35228A35228A35228A35228A35228FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 4
          OnClick = BB_CANCELAR_ALTERNATIVOClick
        end
      end
      object GroupBox9: TGroupBox
        Left = 2
        Top = 159
        Width = 627
        Height = 194
        Caption = 'C'#243'digos Cadastrados Para o Produto'
        TabOrder = 1
        object DBText2: TDBText
          Left = 7
          Top = 16
          Width = 578
          Height = 33
          DataField = 'DESCRICAO'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 7
          Top = 44
          Width = 617
          Height = 145
          DataSource = DM.dsBarras
          Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODBARRAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODPRODUTO'
              Width = 112
              Visible = True
            end>
        end
      end
      object GroupBox10: TGroupBox
        Left = 312
        Top = 3
        Width = 317
        Height = 150
        Caption = 'Produto Para C'#243'digo Auxiliar'
        TabOrder = 2
        object DBText4: TDBText
          Left = 8
          Top = 31
          Width = 65
          Height = 17
          DataField = 'REFERENCIA'
          DataSource = DM.dsProduto
        end
        object DBText5: TDBText
          Left = 8
          Top = 62
          Width = 233
          Height = 17
          DataField = 'CD_BARRA'
          DataSource = DM.dsProduto
        end
        object Label47: TLabel
          Left = 8
          Top = 15
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 8
          Top = 48
          Width = 47
          Height = 13
          Caption = 'C'#243'd.Barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 8
          Top = 109
          Width = 297
          Height = 17
          DataField = 'DESCRICAO'
          DataSource = DM.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 8
          Top = 94
          Width = 103
          Height = 13
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 427
    Width = 639
    Height = 137
    BorderStyle = bsNone
    Color = 13565951
    Ctl3D = False
    DataSource = DM.dsProduto
    FixedColor = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clGreen
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnColumnMoved = DBGrid1ColumnMoved
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyUp = DBGrid1KeyUp
    OnMouseMove = DBGrid1MouseMove
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA_ATAC'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA_VARE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNECEDOR'
        Width = 249
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 516
    Top = 563
    Width = 128
    Height = 37
    DataSource = DM.dsProduto
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
    OnClick = DBNavigator1Click
    OnDblClick = DBNavigator1DblClick
  end
  object BB_NOVO: TBitBtn
    Left = 4
    Top = 563
    Width = 71
    Height = 37
    Caption = '&Incluir'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF097711097711097711097711FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF06770CFFFFFF0EA41B0EA51C0EA51C097711FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06770CFFFFFF0EA41B0EA5
      1C0EA51C097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06770C
      FFFFFF0EA41B0EA51C0EA51C097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF06770DFFFFFF0EA41B0EA51C0EA51C097711FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF08780EFFFFFF10A61F0EA51B0EA51B097711FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780EFFFFFF17AB2911A8
      2111A821097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF09771109771109771109771109771109771108780E
      FFFFFF1DB13218AD2A18AD2A08780E0977110977110977110977110977110977
      11FF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF52DD7E4CD87546D46D41
      CF663CCC5F36C65529BA4324B53B1FB13319AC2B1BB02F17AC2812A8210EA51C
      0EA51B0EA51B0EA51B097711FF00FFFF00FFFF00FFFF00FF097711FFFFFF52DD
      7E4CD87546D46D41CF663CCC5F36C65530BE4C2BBA4426B63D20B2361BB02F17
      AC2812A8210EA51C0EA51B0EA51C0EA51C097711FF00FFFF00FFFF00FFFF00FF
      097711FFFFFF56E08551DA7C4CD67546D26D42CE663CC95E37C55631C04F2CBC
      4827B74022B4381EB03219AC2B13A8230FA41D0EA31B0EA41B097711FF00FFFF
      00FFFF00FFFF00FF097711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF38C55833C1512EBE4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF097711FF00FFFF00FFFF00FFFF00FFFF00FF09771109771109771109771109
      771109771108780EFFFFFF3FCC633BC95C3BC95C08780E097711097711097711
      097711097711097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF46D36E42D06842D068097711FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF4DD87749D5
      7149D571097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711
      FFFFFF54DD8150DB7B50DB7B097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF097711FFFFFF59E28957E1855EE890097711FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF097711FFFFFF5AE38A5CE58C5EE890097711FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097711FFFFFFFFFFFFFFFF
      FFFFFFFF097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      097711097711097711097711FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 3
    OnClick = BB_NOVO1Click
  end
  object BB_EDITAR: TBitBtn
    Left = 75
    Top = 563
    Width = 72
    Height = 37
    Caption = '&Alterar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A478
      74A47874A47874A47874A47874A47874A47874A47874A47874A47874FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF2F9FD82F9FD82F9FD82F9FD8A47874FAEADA
      F7EDDDF5EAD9F4E9D7F4E8D5F4E7D3F4E7D4F4E7D4F4E7D4F4E7D4F4E7D4F8ED
      D8A47874FF00FFFF00FFFF00FFFF00FFFF00FF2F9FD8B1E6F4ADE6F6ADE7F6AA
      E1F1B6A9A8F3E5D8F4EADCF3E7D9F2E6D7F1E5D5F1E4D2F0E3D0F0E3D0F0E3D0
      F0E2D0F0E2CFF4E7D3A47874FF00FFFF00FFFF00FFFF00FF2F9FD8A5E4F5A3F3
      FF8AECFF8BEDFF89E6F9B1AAAAF5E6DBF5EBE0F4E9DCF3E7D9F2E6D7F2E5D5F1
      E4D3F1E3D1F0E2CFF0E2CFF0E2CFF4E7D3A47874FF00FFFF00FFFF00FFFF00FF
      2F9FD8A4E5F694EEFF89EAFE86EAFF80E3F8AFA9AAF7E9DFF7ECE0FBD6B0FBD2
      A9FBD3AAFBD2A9FBD2A9FBD2A8FAD1A6F9D4ADF1E2CEF3E7D4A47874FF00FFFF
      00FFFF00FFFF00FF2F9FD8A8E5F69FEFFF93EBFE8FECFF88E4F8B0ABABF7EAE2
      F7EFE5F8E3CDF8E1CAF7E1C8F7E0C7F7DFC6F6DEC5F6DDC2F5DDC3F1E3D1F3E7
      D4A47874FF00FFFF00FFFF00FFFF00FF2F9FD8AEE6F6A8F1FF9CEDFE98EEFF92
      E7F8B6AFADF8EDE5F8F1E9F7EADCF7E8D9F6E7D7F6E6D5F5E5D3F5E4D2F4E3CF
      F3E2CEF2E5D4F5E9D7A47874FF00FFFF00FFFF00FFFF00FF2F9FD8B3E8F6B1F3
      FFA4EFFEA1F0FF9BE8F8BCB3AFF9EFE9FAF1E9FDD4ABFDD0A4FDD1A5FDD1A4FD
      D0A4FDD0A4FCCFA2FBD3ABF3E6D7F5EBDBA47874FF00FFFF00FFFF00FFFF00FF
      2F9FD8B9E9F6BAF5FFAEF1FEAAF1FFA3EAF8C1B6B1FAF1ECFAF6F1F9F5F0F8F3
      EDF7F2EBF6F1E9F6EFE7F6EEE4F5ECE2F4EBE0F3E9DCF7ECDEA47874FF00FFFF
      00FFFF00FFFF00FF2F9FD8BEEAF6C4F6FFB7F2FEB2F3FFADECF8C7B9B2FBF4F0
      FBF7F1FCE0C3FCDCBDFBDCBDFBDCBCFADBBBFADABAFAD9B8F9DCBEF5EBDEF8EF
      E2A47874FF00FFFF00FFFF00FFFF00FF2F9FD8C2EAF6CCF7FFBFF3FFBBF4FFB5
      EDF8CCBDB4FDF7F4FDFAF4FDE0C3FCDCBCFCDCBCFCDCBBFCDBBAFBDABAFBD9B8
      FBDCBEF8EEE3FAF2E6A47874FF00FFFF00FFFF00FFFF00FF2F9FD8C5EBF6D5FA
      FFC8F5FFC5F5FFBEEFF9D2C1B6FEF9F7FFFEFDFDFDFDFBFBFAFAF9F8FAF8F6F9
      F6F3F8F5F2F8F5F1F9F5EFF2EBE3DFDAD2A47874FF00FFFF00FFFF00FFFF00FF
      2F9FD8C8EBF6DFFBFFD3F7FFCEF7FFC8F1F9D7C5B7FEFAF8FFFFFFFFFEFDFEFC
      FAFDFAF7FBF8F5FAF6F3FAF6F1F6EDE8E4D9D5CCC3C1C2BBBCA47874FF00FFFF
      00FFFF00FFFF00FF2F9FD8CAEBF6E8FCFFDBF9FFD7F9FFD2F3F9DDC8B8FEFAF8
      FFFFFFFFFFFFFFFFFFFFFDFCFDFBF8FCF9F6FDFCF9D3B6ADC7987DCF9D75D69A
      62A47874FF00FFFF00FFFF00FFFF00FF2F9FD8CCECF6F1FFFFE4FAFFE0FAFFDA
      F5F9E2CAB9FEFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFBFEFEFDD2B4AB
      E3B684FDBC65F68863FF00FFFF00FFFF00FFFF00FFFF00FF2F9FD8CDECF6FAFF
      FFEDFCFFE9FCFFE3F6F9E5CCBBFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFD5B8B0E8B37DCBAD84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      2F9FD8D0ECF6FFFFFFF6FEFFF3FEFFEDF9FBE4C4AFF2DACBF3DED1F2DDD1F0DB
      D0EED9CFEBD7CFE9D6CEE7D4CECEA496CBBA9D2F9FD8FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF2F9FD8D0ECF6FFFFFFFEFFFFF7FFFFF1FDFFE8E6DFE3DCD2
      E0DCD4DDDBD4D8D9D3D3D7D2CFD4D2CAD2D1C7D0D0C9D2D0A9E5F22F9FD8FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF2F9FD8D0ECF6FFFFFFFBFFFFB8E2ECB0
      DEEAB1E2EEB0E2EFAFE2EFAEE2EFADE2EFACE2EFAAE1EFAFE4F1D5FCFFD9FFFF
      B0EFFE2F9FD8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2F9FD8D1EDF7FFFF
      FFD0C7C2A4948CA4958EA3948CA3948CA3948CA3948CA3948CA3948CA5958DA3
      928AC1C6C5E2FDFFB8F0FD2F9FD8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      2F9FD8D5EFF8FFFFFFB9A79EBDABA3DED6D2E1D9D5E1DAD6E1DAD6E1DAD6E1DA
      D6E1DAD5DED7D2C7B6AEB09B91EFFBFCB9F2FF2F9FD8FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF2F9FD8F8FCFEE0DFDEA7968EC3B7B0F1EEECFFFFFF
      FFFFFFFFFFFFFFFFFFF2F0EECCC0BAA0938CA8C3C7C0F6FD2F9FD8FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2F9FD82F9FD85297BE9F
      9189D1C5BED8D0CBD7CFCAD7CFCAD8D0CBD2C7C2AA968E5297BE2F9FD82F9FD8
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF9F91899F91899F91899F91899F91899F9189FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 4
    OnClick = BB_EDITAR1Click
  end
  object BB_GRAVAR: TBitBtn
    Left = 147
    Top = 563
    Width = 71
    Height = 37
    Caption = '&Salvar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      AE746C9F52529A4D4E9C4E4F994748A37374B7B8B8B8B6B6B9B7B7BAB8B7BAB7
      B7B9B7B7B8B6B6B7B6B6B8B8B8A47171984546994A4B994B4C9A4D4E9A4D4EFF
      00FFFF00FFB48176C36E6BC96464C96464CB6565B757579A696AB0B1B1CDCDCB
      E5E3E1F2EFEDF9F5F2F9F5F1EEEBEAE3E2E0DEDFDFB67676952C2C9835359E3A
      3AC15B5BC060619A4C4DFF00FFB48176C36E6BCD6565CD6666CE6767BA58599B
      6C6CA18D8DB58180CFAFACDFCCCAF9F5F1FFFCF9FBF7F5EFEDEBE8E9E8B97677
      942A299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
      66CE6767B858589E7171A17D7E9E3D3CB4706EC9A09DECE8E5FBF7F5FEFAF7F9
      F5F2F0F0EFBB7978942A2A9833339E3939C25C5CC262629A4C4DFF00FFB48176
      C36E6BCC6565CB6666CE6767B85858A27474A78484972F2F9F3F3FB57573DED8
      D7F2EFEDFBF7F5FEFBF8FAFAF7BE7C7C94292A9833339E3939C25C5CC262629A
      4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B85858A57676AD8988983232
      972F2FA04848C9C2C1E5E3E1F3F0EDFDF9F6FFFFFDC27F7E9329299833339E39
      39C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB6666CE6767B75757AB
      7A79B58C8B972B2B972B2B973232ADA6A6CFCFCEE6E3E0F6F3F0FFFFFDC48280
      9329299833339E3939C25C5CC262629A4C4DFF00FFB48176C36E6BCC6565CB66
      66CE6767B55656AE7C7BC5AAA8A66565A160609D64649E9F9FB4B9B8D3D6D4EC
      EFECFFFFFFC382819026269530309C3737C15B5BC262629A4C4DFF00FFB48176
      C36E6BCC6565CB6666CE6767BD5C5CB97172D3A7A5C9A0A0BF9999B89494B18D
      8DB18D8DC39F9ED8B2B1E6C2C0C57776A73F3FAA4545AE4949C66060C261629A
      4C4DFF00FFB48176C36E6BCD6666CD6666CD6666CC6565CC6363CB6161CB6262
      CB6262CC6162CC6162CB6161CA5F5FCA5F5FC95F5FCB6262CC6565CC6363CD66
      66CE6767C060619A4C4DFF00FFB48176C36E6BC66060C15D5CC46361C86C6BCB
      7272CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776CD7776
      CD7776CD7978CD6F6FCD6666C060619A4C4DFF00FFB48276C46F6CB04E4AA549
      44B56C68C48F8CD0ABA9D7BCBBD8BFBED8BEBDD8BEBDD8BEBDD8BEBDD8BEBDD8
      BEBDD8BEBDD8BEBDD8BEBDD8C3C2D19090CC6161C060619A4C4DFF00FFB48276
      C46E6BAC4541CE9E9AFAF5F3F6EDECF7EFEEF8F1F0F8F1F0F8F1F0F8F1F0F8F1
      F0F8F1F0F8F1F0F8F1F0F8F1F0F8F1F0FAF3F2EEE5E4CD8E8DC35959C060619A
      4D4EFF00FFB48276C46E6BAC4541D2A6A3FFFFFFFBF5F4FBF5F4FBF5F4FBF5F4
      FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FBF5F4FDF7F6EFE7E6CC8D
      8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFDF8F2F1F8
      F1F0F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F2F1F8F1F0
      FBF5F4EFE6E5CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
      A1FFFFFEE9E4E3CCCACACDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCDCCCCCD
      CCCCCDCCCCCAC9C8E6E2E2F2E8E7CC8D8CC15757C060619A4D4EFF00FFB48276
      C46E6BAC4541D1A4A1FFFFFEF5EEEEEDE8E7EDE8E7EDE8E7EDE8E7EDE8E7EDE8
      E7EDE8E7EDE8E7EDE8E7EDE8E7ECE7E6F5F0F0F1E7E6CC8D8CC15757C060619A
      4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEECE7E6D4D1D1D5D2D2D5D2D2
      D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D5D2D2D2D0D0E9E5E5F1E8E7CC8D
      8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4A1FFFFFEF2ECEBE5
      E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDF
      F2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276C46E6BAC4541D1A4
      A1FFFFFEF2ECEBE5E0DFE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E5
      E1E0E5E1E0E4DFDFF2EDECF1E7E6CC8D8CC15757C060619A4D4EFF00FFB48276
      C46E6BAC4541D1A4A1FFFFFEEBE5E5D2CFCFD3D1D0D3D1D0D3D1D0D3D1D0D3D1
      D0D3D1D0D3D1D0D3D1D0D3D1D0D0CECEE9E4E3F2E8E7CC8D8CC15757C060619A
      4D4EFF00FFB48276C46E6BAC4541D2A5A2FFFFFFFCF5F4FDF6F5FDF6F5FDF6F5
      FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FDF6F5FFF8F7F1E7E6CC8D
      8CC35959C161629A4D4EFF00FFB48276BF6F6BAA4541CB9E9BF3F3F2EFE9E8EF
      E9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8EFE9E8
      F0ECEBE8E0DFC88B8AB85353B85C5D9A4D4EFF00FFFF00FFAD736CA14540B689
      87C6CBCBC4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4C3C3C4
      C3C3C4C3C3C4C3C3C3C3C3CFC9C8B884849644459A4C4DFF00FF}
    TabOrder = 5
    OnClick = B1B_GRAVARClick
  end
  object BB_CANCELAR: TBitBtn
    Left = 217
    Top = 563
    Width = 76
    Height = 37
    Caption = '&Cancelar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA35228A35228
      A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A352
      28A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A3
      5228A35228FFF7EEFEF5EBFFF4E70033FFFEF0DFFFEFDCFEECD7FFEBD4FFE9D0
      FEE7CCFEE5C8FFE3C5FFE1C1FEDFBEFEDEBAFEDDB7FEDBB4FEDAB10033FFFFD8
      ADFED7ABFED7ABA35228A35228FEF8F0FFF6EDFFF5E90033FFFEF1E2FEEFDE00
      009A00009AFFEAD3FFE7CFFFE6CBFEE4C7FFE2C3FFE1BF00009A00009AFEDCB6
      FEDBB30033FFFED8AEFED8ACFED7ABA35228A35228FFF9F2FFF7EFFFF6EC0033
      FFFFF3E400009A174AFD103BF400009AFFE9D1FEE8CDFFE5C9FEE4C600009A00
      2CF80030FC00009AFEDBB50033FFFED9AFFED8ADFED7ABA35228A35228FFFAF4
      FEF9F1FFF7EE0033FFFFF4E700009A1A47F81A4CFF123BF100009AFEE8CFFFE7
      CC00009A012DF60132FF002AF300009AFEDCB60033FFFEDAB1FED9AEFED8ADA3
      5228A35228006600FFF9F30066000033FF99BB8CFFF3E500009A1C47F61B4DFF
      143EF400009A00009A002DF80134FF032BF200009A98AF70FEDDB80033FFFEDB
      B2006600FED8AEA35228A35228006600FFFAF50066000033FF98BC8EFFF4E899
      BA8900009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFEE2C199AF72
      FEDEBB0033FFFEDCB5006600FED9AFA35228A35228006600FFFBF70066000033
      FF98BD8FFEF5EA99BB8AFEF1E300009A1A48F91342FF0C3CFF0733F600009A98
      B277FEE3C398B073FEE0BC0033FFFEDDB7006600FEDAB1A35228A35228FFFDFB
      006600FFFBF50033FFFFF8F098BC8EFFF4E899BB8900009A214EFC1D4BFF1847
      FF1743F600009AFEE6CA98B277FEE2C398B0730033FF006600FEDCB5006600A3
      5228A35228FFFDFD006600FFFCF80033FFFFF9F199BD8FFFF5EB00009A2E5BF9
      2C5FFF224DF8204BF82355FF1B46F600009A98B279FFE3C598B0740033FF0066
      00FEDCB7006600A35228A35228FFFEFD006600FFFCF90033FFFFF9F4FFF8F100
      009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F600009AFEE4C7
      98B0750033FF006600FEDDB9006600A35228A35228FFFEFFFFFEFDFFFDFB0033
      FFFFFAF600009A4071FA4274FF325DF100009AFFF1E1FEEFDD00009A224DF127
      5AFF204CF800009AFEE3C60033FFFEE1BEFEDEBBFFDDB8A35228A35228FFFFFF
      FFFEFEFFFDFC0033FFFFFCF800009A497AFC3B66F300009AFFF3E7FFF2E3FEF0
      DFFEEEDB00009A2550F42655FA00009AFFE5C80033FFFEE1C0FEDFBEFFDEBAA3
      5228A35228FFFFFFFFFFFFFFFEFD0033FFFFFCF9FFFAF600009A00009AFFF6ED
      FFF5E9FFF3E6FEF1E2FFEFDEFFEEDA00009A00009AFEE8CEFEE6CA0033FFFEE2
      C3FEE0BFFEDFBCA35228A35228FFFFFF737373FFFFFE737373FFFDFB737373FE
      FBF5737373FFF7EF737373FEF4E8737373FFF0E0737373FEEDD9737373FEE9D1
      7373730033FF737373FEE2C1FFE0BEA35228A35228A35228A35228A35228A352
      28A35228A35228A35228A35228A35228A35228A35228A35228A35228A35228A3
      5228A35228A35228A35228A35228A35228A35228A35228A35228FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 6
    OnClick = B1B_CANCELARClick
  end
  object BB_EXCLUIR: TBitBtn
    Left = 293
    Top = 563
    Width = 71
    Height = 37
    Caption = '&Excluir'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFF1B77DF1B77DF1B77DF1B77DF1B77DF1B77DFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFF1B77DFCE3BCFEE3C1FEDCBAFBD0A7F6C494F2B981F1B67BF1B7
      7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFF1B77DFDEDC8FFF5D4FEE6C3FDDAB7FBCEA6F6C494
      F2BA82F1B77CF1B77CF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFFBDAFEF2D0FEE4C3FD
      DAB7FBCFA7F6C494F2BA82F1B77DF1B77DF1B77DFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFFD
      DCFEF2D0FEE6C4FDDBB8FBD0A8F6C595F2BA83F1B77CF1B77DF1B77DF1B77DFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      F1B77DFBE7BCFFFFDDFEF2D0FEE6C4FDDBB8FBD0A8F6C596F2BB83F1B77CF1B7
      7DF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFF1B77DFDF1CAFFFFDEFFF2D0FEE7C4FDDCB9FBD1A9F6C697
      F3BB84F1B77DF1B77DF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFF4C792FEF9D6FFFFDEFFF6D4FFEAC9FE
      DEBDFCD2ACF7C799F3BB85F1B77CF1B77DF1B77DF1B77DF1B77DFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF7D6A8FFFFE4FFFB
      D8FCE6BDF8D2A6F6C797F5C290F4BE88F2B981F1B77CF1B67CF1B77DF1B77DF1
      B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77D
      F9DDAFF5D4A3E8AA67E49C54E69D56E9A561EDB070EFBB7FF1C188F2C28AF2BE
      84F1B87EF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFF1B97FE2994FD06F17D2721ADB8635E49B53EBAC6BEFBD81F3CA94
      F5D4A1F6D6A5F5D19DF2C58CEFB97DF1B67BFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFE6A05BC75F03C96307D67D28E09143E9A45FEE
      B577F3C68EF6D5A5F9E4B8FBE9BEF7DFB1F4D09CEFBD83EFB478FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEAA967CF6E17CA6509D67D
      29E09346EAA662EEB77AF3C993F7DBACFCEEC6FEF5D0F9E7BCF5D4A3F1C287EF
      B67AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      EBAB6BDC893BD8812EDF8E41E8A35EE9B47505720A05720AFBE7BDFCEBC3F8DF
      B3F4CA95F1BA81FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFEDAE6FEAA765EBA96805720A33AF4F5AE48B
      07740DF4C994F3BF88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFA27373A27373A27373FF00FFFF00FFFF00FFFF00FFFF00FF05720A2B
      A6455EE89150DF7D2BB64405720AFF00FFFF00FFFF00FFFF00FFFF00FFA87671
      A27373D3AF97D3AE95D1AA93A27373F2CB8FCA996FFF00FFFF00FFFF00FFFF00
      FF05720A1894262DA6463EC36238C65723AE381FAA3205720AFF00FFFF00FFFF
      00FFB28784E8D3C0A27373EDC995EDC995EDC995A27373B67844BF895FA27373
      FF00FFFF00FFFF00FF05720A05720A05720A1A972C27B84005720A05720A0572
      0AFF00FFFF00FFFF00FFB78F8DF4EAD6EDC995BC8252A27373A27373E2C3A8A2
      7373D8AF8CA27373FF00FFFF00FFFF00FFFF00FFFF00FF05720A209C3016AB28
      05720AFF00FFFF00FFFF00FFFF00FFFF00FFA27373A27373D29954BE6E0DB785
      69E9D1C1EBCBA9D4A16EC89461A27373FF00FFFF00FFFF00FFFF00FFFF00FF05
      720A179B25098D1305720AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA27373
      A27373BA732AD69F5DDCB48CA27373A27373B3846FFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FF05720A09891205720AFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFA66D56BE7629C0803FA27373EDC995EDC995A27373FF00FF
      FF00FFFF00FFFF00FFFF00FF0E8C170C971705720AFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA27373A27373EDC995EDC995A2
      7373FF00FFFF00FFFF00FFFF00FF05720A05720A05720A05720AFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA273
      73A27373A27373A27373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 7
    OnClick = BB_EXCLUIR1Click
  end
  object BB_PESQUISAR: TBitBtn
    Left = 363
    Top = 563
    Width = 73
    Height = 37
    Caption = '&Pesquisar'
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000000000000101
      0100020202000303030004040400050505000606060007070700080808000909
      09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
      1100121212001313130014141400151515001616160017171700181818001919
      19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
      2100222222002323230024242400252525002626260027272700282828002929
      29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
      3100323232003333330034343400353535003636360037373700383838003939
      39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
      4100424242004343430044444400454545004646460047474700484848004949
      49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
      5100525252005353530054545400555555005656560057575700585858005959
      59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
      6100626262006363630064646400656565006666660067676700666769006668
      6A0066696B00676A6C00696B6C006D6D6D006E6E6E006F6F6F00707070006F70
      71006F7172006F7173006F7174006F7275006F7276006F737600707377006E74
      7A006C757E006F757B0072767A0073777A0075787B0076797C00787B7D007B7D
      7F007D7F80008081820084848400858585008686860087878700888888008B89
      89008F8B8A00938C8A00988E8B009D8F8B00A28F8A00A78F8900AA8E8900AC8E
      8800AE8E8800B08D8700B18D8700B38E8700B38D8600B48E8700B58F8700B690
      8700B6918800B7928900B8948A00BA958B00BB968C00BD988E00BE988E00C098
      8E00C1998F00C29A8F00C49C9100C6A09300C9A39500CDA89600D0AC9700D5B3
      9900D9B89B00DEBE9E00E6C59E00E9CAA200ECCDA300F0D0A300F2D2A300F3D5
      A600F4D8AB00F4DAAC00F5DBAE00F5DDB000F5DDB200F5DEB300F5E1B900F7E7
      C000F9EECB00FBF4D300FDF9D900FDFBDC00FEFDE000FEFDE500FDFDEA00FBFC
      E900F8FAE800F5F8E900F1F7EA00EFF5EA00EDF4EA00EDF2EA00EEEDE900EFE5
      EA00F1DBEA00F4CDEB00F9B9ED00FE81F300FE38F900FE16FC00FE05FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F905FE00EF11FE00E31E
      FE00D62BFE00CC36FC00B949FB00A859F9009869F6008B75F5007783F400638C
      EF005691EC004E94E9004996E8004596E700489BE7004B9FE8004EA3E8004FA7
      EA004FA5E5004EA3E2004E9FDD004E9DD900509BD600509AD300DB68A0DBDBDB
      DBDBDBDBDBDBDBDBDBDBFFF57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DB
      DBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57A
      9CDBDBDBDBDBDBDBDBDBDBDBDBF9F9F56BDB93A5A59FDBDBDBDBDBDBDBDBF9CA
      A49EB8BFBFBCAB96DBDBDBDBDBDBDBDBA7B9BCBDBDBFC0CA93DBDBDBDBDBDBDB
      A5B4BBBDBFC0C0C0A7DBDBDBDBDBDBA5B5ACBABEBFC0C0C0BA9CDBDBDBDBDBA5
      B5AAB4BCBEBFBFBEBA9EDBDBDBDBDB9EB9ACADB8BCBEBDBEB897DBDBDBDBDBDB
      ABBFB8ADB1B9BBBC99DBDBDBDBDBDBDB96CAC0B1ACB0B9A999DBDBDBDBDBDBDB
      DB93A7B8B7AE9999DBDBDBDBDBDBDBDBDBDBDB9D9E9ADBDBDBDB}
    TabOrder = 8
    OnClick = BB_PESQUISAR1Click
  end
  object BB_SAIR: TBitBtn
    Left = 435
    Top = 563
    Width = 71
    Height = 37
    Caption = 'Sai&r'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66666933
      34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666
      A36666A76666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A0
      6666B06667C66667CC6667B36667693334FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66
      66AF6869C0696ACF696ACE6869CD6768CD6768B36667693334AE66669A66669A
      66669A66669A66669A66669A66669A66669A6666FF00FFFF00FFFF00FFFF00FF
      FF00FF9A6666D26F70D56F70D46E6FD36D6ED26C6DD16B6CD06A6BB467686933
      34FEA2A3FDA8A9FCAFB0FBB6B7FABCBDF9C2C2F9C5C6F9C5C69A6666FF00FFFF
      00FFFF00FFFF00FFFF00FF9A6666D97374D87273D77172D67071D56F70D46E6F
      D36D6EB6696A69333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
      C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DC7677DB7576DA7475D9
      7374D87273D77172D67071B86B6B69333459B26733CB6733CB6733CB6733CB67
      33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DF79
      7ADF797ADE7879DD7778DC7677DB7576DA7475B96C6D69333459B26733CB6733
      CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
      FF00FF9A6666E37D7EE27C7DE17B7CE07A7BDF797ADE7879DD7778BB6E6F6933
      3459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF
      00FFFF00FFFF00FFFF00FF9A6666E68081E57F80E47E7FE37D7EE27C7DE17B7C
      E07A7BBD707069333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
      C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666E98384E88283E78182E6
      8081E78788ECA6A7E47E7FBE717269333473B87633CB6733CB6733CB6733CB67
      33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666ED87
      88EC8687EB8586EA8485F2B9BAFFFFFFF0B0B0C07374693334F2D9C0C7F0BC79
      DD9079DD9060D68160D68160D681F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
      FF00FF9A6666F08A8BEF898AEE8889ED8788F5BBBCFFFFFFF0AAABC275756933
      34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDE2F8CCE2F8CCF9C5C69A6666FF00FFFF
      00FFFF00FFFF00FFFF00FF9A6666F38D8EF28C8DF18B8CF08A8BEF898AF3A6A7
      ED8788C37677693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
      C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F69091F69091F58F90F4
      8E8FF38D8EF28C8DF18B8CC57878693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
      FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FA94
      95F99394F89293F79192F69091F58F90F48E8FC77A7A693334F2D9C0FFFFDDFF
      FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
      FF00FF9A6666FD9798FC9697FB9596FA9495F99394F89293F79192C87B7C6933
      34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
      00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFE9899FD9798FD9798FC9697
      FB9596CA7D7D693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
      C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFF999AFF
      999AFF999AFE9899FE9899CC7F7F693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
      FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F996
      97FF999AFF999AFF999AFF999AFF999AFF999ACD8080693334F2D9C0FFFFDDFF
      FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
      FF00FF9A66669A6666C0797ADF898AFF999AFF999AFF999AFF999ACD80806933
      34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A76C6DC67C7DF29394
      FF999ACD8080693334A766669A66669A66669A66669A66669A66669A66669A66
      669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF9A66669A6666AD7070B37373693334FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 9
    OnClick = B1B_SAIRClick
  end
  object BB_EXPORTAR: TBitBtn
    Left = 526
    Top = 563
    Width = 75
    Height = 31
    Caption = 'E&xportar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6696BA6696BA6696BA669
      6BA6696BA6696BA6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA6696BF3D3A4F0CB97EFC68AEDC180EBBB76A6696BFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA7756BF6DDBA707BCE0F2E
      F36E75BFEEC484A6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFBC8268F8E7CE0F30F7001EFF0F2FF3F0CC96A6696BFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1926DFBF2E27486E70F30
      F8727FD7F3D7ABA6696BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFDA9D75FEFAF3FBF4E7FAEEDCF8E7CFF6E1C0A6696BFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79FFFFFFFEFBF8FCF7
      EEA6696AA6696AAC6C5AA46769A46769A46769A46769A46769A46769A46769A4
      6769FF00FFE7AB79FFFFFFFFFFFFFEFCFBA6696AC67F4EFF00FFA46769E9C49D
      D8A57BD8A373D59D66D1965AEAB66CA46769FF00FFE7AB79D1926DD1926D2A70
      27A6696AFF00FFFF00FFA46769BB76507D1800821F00811F00811E00DCA162A4
      6769FF00FFFF00FFFF00FF015A062CC5581C9631FF00FFFF00FFA7756BF6E9DD
      8A2A087F1A007B1600AB5B30FCDD9FA46769FF00FFFF00FF005D0330BD5741E0
      7522B63E087511FF00FFBC8268FFFFFFC99379791400892907E6BD99FFEAB5A4
      6769FF00FF2D6718067F141A922F27BB45149A260C8816036307D1926DFFFFFF
      FBF4F299411EBF7D59FAEDD4D4BCA0A46769FF00FFFF00FFFF00FF01550315A5
      2805700BFF00FFFF00FFDA9D75FFFFFFFFFFFFE7D0C4F7EEE3A46769A46769A4
      6A5AFF00FFFF00FFFF00FF036007099613036C07FF00FFFF00FFE7AB79FFFFFF
      FFFFFFFFFFFFFCFFFFA46769D18649FF00FFFF00FFFF00FF036E0704780A058C
      0D026005FF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DA46769FF00FFFF
      00FF02660602660601770705840C026606FF00FFFF00FFFF00FF}
    TabOrder = 10
    Visible = False
    OnClick = BB_EXPORTARClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 41
    Align = alTop
    Color = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 11
    object DBText3: TDBText
      Left = 477
      Top = 3
      Width = 130
      Height = 28
      DataField = 'CODIGO'
      DataSource = DM.dsProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 8
      Top = 4
      Width = 336
      Height = 37
      Caption = 'CADASTRO DE PRODUTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 371
      Top = 4
      Width = 89
      Height = 32
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 609
      Top = 1
      Width = 38
      Height = 39
      Align = alRight
      Flat = True
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000307500003075000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003846F0123843
        F32D3442F4493543F4483843F32D3846F0120000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003443F7223642F47F3543F3CD3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F3CD3642F47E3443F7220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000333FF2143543F4933642F3F93643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93543
        F490333FF2140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003543F6393643F3E73643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3642F3E63644F53800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003642
        F3553642F3F83643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3543F3F73642F355000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003740F5373642
        F3F93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3642F3F83740F5370000000000000000000000000000
        000000000000000000000000000000000000000000003048F2153543F4E83643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3542F3E5333FF21400000000000000000000
        000000000000000000000000000000000000000000003543F4933643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F49000000000000000000000
        0000000000000000000000000000000000003443F7223643F3FA3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF4854F5FF7B83F8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF7B83F8FF4854F5FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93645F721000000000000
        0000000000000000000000000000000000003543F3803643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF4854F5FFDEE0FDFFFEFEFFFF858DF8FF3643
        F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFDEE0FDFF4854F5FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F47E000000000000
        0000000000000000000000000000000000003642F3CF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B83F8FFFEFEFFFFFFFFFFFFFEFEFFFF858D
        F8FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF7B83F8FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F3CD000000000000
        00000000000000000000000000003543F1133643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFE
        FFFF858DF8FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3846F0120000
        00000000000000000000000000003641F42F3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFF
        FFFFFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3742F32E0000
        00000000000000000000000000003544F4473643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF858DF8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3544F4470000
        00000000000000000000000000003544F4473643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3544F4470000
        00000000000000000000000000003641F42F3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFF
        FFFFFFFFFFFFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3742F32E0000
        00000000000000000000000000003543F1133643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFE
        FFFF858DF8FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3846F0120000
        0000000000000000000000000000000000003543F3D03643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B83F8FFFEFEFFFFFFFFFFFFFEFEFFFF858D
        F8FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF7B83F8FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3CE000000000000
        0000000000000000000000000000000000003543F3813643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF4854F5FFDEE0FDFFFEFEFFFF858DF8FF3643
        F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFDEE0FDFF4854F5FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F47F000000000000
        0000000000000000000000000000000000003241F0233643F3FA3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF4854F5FF7B83F8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF7B83F8FF4854F5FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F3FA3443F722000000000000
        000000000000000000000000000000000000000000003642F4953643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F49200000000000000000000
        000000000000000000000000000000000000000000003742F3173642F4EA3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3543F4E83048F21500000000000000000000
        00000000000000000000000000000000000000000000000000003543F6393642
        F3F93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3642F3F93740F5370000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003642
        F3553642F3F83643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3642F3F83642F355000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003441F13A3542F4E93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F3E73543F63900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003945F3163642F4953643F3FA3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93543
        F494333FF2140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003241F0233543F3803543F3D03643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3CF3543F3803241F0230000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000333FF2143742
        F32E3741F44A3442F4493843F32D3543F1130000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = SpeedButton3Click
      ExplicitLeft = 1102
      ExplicitTop = 5
      ExplicitHeight = 36
    end
    object BitBtn2: TBitBtn
      Left = 141
      Top = 11
      Width = 75
      Height = 25
      Caption = 'BitBtn2'
      TabOrder = 0
      Visible = False
      OnClick = BitBtn2Click
    end
  end
  object BitBtn1: TBitBtn
    Left = 214
    Top = 11
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 12
    Visible = False
    OnClick = BitBtn1Click
  end
  object bb_enviaDJ: TBitBtn
    Left = 569
    Top = 582
    Width = 75
    Height = 25
    Caption = 'Envia DJ'
    TabOrder = 13
    Visible = False
    OnClick = bb_enviaDJClick
  end
  object BB_ENVIAR_TODOS: TBitBtn
    Left = 488
    Top = 582
    Width = 75
    Height = 25
    Caption = 'Enviar Todos'
    TabOrder = 14
    Visible = False
    OnClick = BB_ENVIAR_TODOSClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|BM' +
      'P Image File  (*.bmp)|*.bmp'
    Left = 380
    Top = 88
  end
  object spInsertProdDincash: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    StoredProcName = 'INSERT_PRODTO_DINCASH'
    Left = 488
    Top = 80
  end
  object dspInsertProdDincash: TDataSetProvider
    DataSet = spInsertProdDincash
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 520
    Top = 80
  end
  object cdsInsertProdDincash: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInsertProdDincash'
    Left = 550
    Top = 80
  end
  object dsInsertProdDincash: TDataSource
    DataSet = cdsInsertProdDincash
    Left = 582
    Top = 80
  end
  object sqlProdutoDTO: TSQLDataSet
    CommandText = 'SELECT'#13#10'*'#13#10'FROM PRODUTODTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 248
    Top = 88
    object sqlProdutoDTOPRODUTODTO_ID: TLargeintField
      FieldName = 'PRODUTODTO_ID'
      Required = True
    end
    object sqlProdutoDTOALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
    end
    object sqlProdutoDTOALIQREDU: TFloatField
      FieldName = 'ALIQREDU'
    end
    object sqlProdutoDTOALIQUIPI: TFloatField
      FieldName = 'ALIQUIPI'
    end
    object sqlProdutoDTOALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object sqlProdutoDTOALIQUPIS: TFloatField
      FieldName = 'ALIQUPIS'
    end
    object sqlProdutoDTOCATRIBPT: TFloatField
      FieldName = 'CATRIBPT'
    end
    object sqlProdutoDTOCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 256
    end
    object sqlProdutoDTOCODEXNCM: TStringField
      FieldName = 'CODEXNCM'
      Size = 256
    end
    object sqlProdutoDTOCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 256
    end
    object sqlProdutoDTOCODNCM: TStringField
      FieldName = 'CODNCM'
      Size = 256
    end
    object sqlProdutoDTOCODREFER: TStringField
      FieldName = 'CODREFER'
      Size = 256
    end
    object sqlProdutoDTOCODRETAG: TStringField
      FieldName = 'CODRETAG'
      Size = 256
    end
    object sqlProdutoDTOCOMP1MOD: TStringField
      FieldName = 'COMP1MOD'
      Size = 256
    end
    object sqlProdutoDTOCOMP2MOD: TStringField
      FieldName = 'COMP2MOD'
      Size = 256
    end
    object sqlProdutoDTODESCMAXI: TFloatField
      FieldName = 'DESCMAXI'
    end
    object sqlProdutoDTOESTQMAXI: TFloatField
      FieldName = 'ESTQMAXI'
    end
    object sqlProdutoDTOESTQMINI: TFloatField
      FieldName = 'ESTQMINI'
    end
    object sqlProdutoDTOGUID: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object sqlProdutoDTOGUIDGRUP: TStringField
      FieldName = 'GUIDGRUP'
      Size = 256
    end
    object sqlProdutoDTOGUIDPROD: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object sqlProdutoDTOGUIDREF: TStringField
      FieldName = 'GUIDREF'
      Size = 256
    end
    object sqlProdutoDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object sqlProdutoDTONOMEPROD: TStringField
      FieldName = 'NOMEPROD'
      Size = 256
    end
    object sqlProdutoDTONUMDECQT: TFloatField
      FieldName = 'NUMDECQT'
    end
    object sqlProdutoDTONUMDECVL: TFloatField
      FieldName = 'NUMDECVL'
    end
    object sqlProdutoDTOPRAZGARA: TFloatField
      FieldName = 'PRAZGARA'
    end
    object sqlProdutoDTOPRECOVDA: TFloatField
      FieldName = 'PRECOVDA'
    end
    object sqlProdutoDTOPRODPESO: TStringField
      FieldName = 'PRODPESO'
      Size = 256
    end
    object sqlProdutoDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object sqlProdutoDTOREFERPRO: TStringField
      FieldName = 'REFERPRO'
      Size = 256
    end
    object sqlProdutoDTOSITMODEL: TStringField
      FieldName = 'SITMODEL'
      Size = 256
    end
    object sqlProdutoDTOSITPRODU: TStringField
      FieldName = 'SITPRODU'
      Size = 256
    end
    object sqlProdutoDTOSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      Size = 256
    end
    object sqlProdutoDTOSITTRIPI: TStringField
      FieldName = 'SITTRIPI'
      Size = 256
    end
    object sqlProdutoDTOSITTRPIS: TStringField
      FieldName = 'SITTRPIS'
      Size = 256
    end
    object sqlProdutoDTOSTCOFINS: TStringField
      FieldName = 'STCOFINS'
      Size = 256
    end
    object sqlProdutoDTOTIPOALIQ: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object sqlProdutoDTOUNIDMEDI: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object sqlProdutoDTOUNIDREFE: TStringField
      FieldName = 'UNIDREFE'
      Size = 256
    end
    object sqlProdutoDTOCATRIBPTEST: TFloatField
      FieldName = 'CATRIBPTEST'
    end
    object sqlProdutoDTOCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 256
    end
    object sqlProdutoDTOCATRIBPTFED: TFloatField
      FieldName = 'CATRIBPTFED'
    end
  end
  object sqlValidacaoDTO: TSQLDataSet
    CommandText = 'SELECT'#13#10'*'#13#10'FROM VALIDACAODTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 480
    Top = 40
    object sqlValidacaoDTOVALIDACAODTO_ID: TLargeintField
      FieldName = 'VALIDACAODTO_ID'
      Required = True
    end
    object sqlValidacaoDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object sqlValidacaoDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
  end
  object dspProdutoDTO: TDataSetProvider
    DataSet = sqlProdutoDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 280
    Top = 88
  end
  object cdsProdutoDTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoDTO'
    Left = 312
    Top = 88
    object cdsProdutoDTOPRODUTODTO_ID: TLargeintField
      FieldName = 'PRODUTODTO_ID'
      Required = True
    end
    object cdsProdutoDTOALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
    end
    object cdsProdutoDTOALIQREDU: TFloatField
      FieldName = 'ALIQREDU'
    end
    object cdsProdutoDTOALIQUIPI: TFloatField
      FieldName = 'ALIQUIPI'
    end
    object cdsProdutoDTOALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object cdsProdutoDTOALIQUPIS: TFloatField
      FieldName = 'ALIQUPIS'
    end
    object cdsProdutoDTOCATRIBPT: TFloatField
      FieldName = 'CATRIBPT'
    end
    object cdsProdutoDTOCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 256
    end
    object cdsProdutoDTOCODEXNCM: TStringField
      FieldName = 'CODEXNCM'
      Size = 256
    end
    object cdsProdutoDTOCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 256
    end
    object cdsProdutoDTOCODNCM: TStringField
      FieldName = 'CODNCM'
      Size = 256
    end
    object cdsProdutoDTOCODREFER: TStringField
      FieldName = 'CODREFER'
      Size = 256
    end
    object cdsProdutoDTOCODRETAG: TStringField
      FieldName = 'CODRETAG'
      Size = 256
    end
    object cdsProdutoDTOCOMP1MOD: TStringField
      FieldName = 'COMP1MOD'
      Size = 256
    end
    object cdsProdutoDTOCOMP2MOD: TStringField
      FieldName = 'COMP2MOD'
      Size = 256
    end
    object cdsProdutoDTODESCMAXI: TFloatField
      FieldName = 'DESCMAXI'
    end
    object cdsProdutoDTOESTQMAXI: TFloatField
      FieldName = 'ESTQMAXI'
    end
    object cdsProdutoDTOESTQMINI: TFloatField
      FieldName = 'ESTQMINI'
    end
    object cdsProdutoDTOGUID: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object cdsProdutoDTOGUIDGRUP: TStringField
      FieldName = 'GUIDGRUP'
      Size = 256
    end
    object cdsProdutoDTOGUIDPROD: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object cdsProdutoDTOGUIDREF: TStringField
      FieldName = 'GUIDREF'
      Size = 256
    end
    object cdsProdutoDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsProdutoDTONOMEPROD: TStringField
      FieldName = 'NOMEPROD'
      Size = 256
    end
    object cdsProdutoDTONUMDECQT: TFloatField
      FieldName = 'NUMDECQT'
    end
    object cdsProdutoDTONUMDECVL: TFloatField
      FieldName = 'NUMDECVL'
    end
    object cdsProdutoDTOPRAZGARA: TFloatField
      FieldName = 'PRAZGARA'
    end
    object cdsProdutoDTOPRECOVDA: TFloatField
      FieldName = 'PRECOVDA'
    end
    object cdsProdutoDTOPRODPESO: TStringField
      FieldName = 'PRODPESO'
      Size = 256
    end
    object cdsProdutoDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object cdsProdutoDTOREFERPRO: TStringField
      FieldName = 'REFERPRO'
      Size = 256
    end
    object cdsProdutoDTOSITMODEL: TStringField
      FieldName = 'SITMODEL'
      Size = 256
    end
    object cdsProdutoDTOSITPRODU: TStringField
      FieldName = 'SITPRODU'
      Size = 256
    end
    object cdsProdutoDTOSITTRIBU: TStringField
      FieldName = 'SITTRIBU'
      Size = 256
    end
    object cdsProdutoDTOSITTRIPI: TStringField
      FieldName = 'SITTRIPI'
      Size = 256
    end
    object cdsProdutoDTOSITTRPIS: TStringField
      FieldName = 'SITTRPIS'
      Size = 256
    end
    object cdsProdutoDTOSTCOFINS: TStringField
      FieldName = 'STCOFINS'
      Size = 256
    end
    object cdsProdutoDTOTIPOALIQ: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object cdsProdutoDTOUNIDMEDI: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object cdsProdutoDTOUNIDREFE: TStringField
      FieldName = 'UNIDREFE'
      Size = 256
    end
    object cdsProdutoDTOCATRIBPTEST: TFloatField
      FieldName = 'CATRIBPTEST'
    end
    object cdsProdutoDTOCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 256
    end
    object cdsProdutoDTOCATRIBPTFED: TFloatField
      FieldName = 'CATRIBPTFED'
    end
  end
  object dsProdutoDTO: TDataSource
    DataSet = cdsProdutoDTO
    Left = 344
    Top = 88
  end
  object dspValidacaoDTO: TDataSetProvider
    DataSet = sqlValidacaoDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 512
    Top = 40
  end
  object cdsValidacaoDTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValidacaoDTO'
    Left = 544
    Top = 40
    object cdsValidacaoDTOVALIDACAODTO_ID: TLargeintField
      FieldName = 'VALIDACAODTO_ID'
      Required = True
    end
    object cdsValidacaoDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsValidacaoDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
  end
  object dsValidacaoDTO: TDataSource
    DataSet = cdsValidacaoDTO
    Left = 576
    Top = 40
  end
end
