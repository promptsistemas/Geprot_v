object frmEntradaProduto: TfrmEntradaProduto
  Left = 289
  Top = 53
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrada de Produtos'
  ClientHeight = 632
  ClientWidth = 819
  Color = clWhite
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
  object P_ENTRADA: TPageControl
    Left = 0
    Top = 49
    Width = 817
    Height = 147
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Lan'#231'amentos de Notas Fiscais'
      Enabled = False
      object Label4: TLabel
        Left = 663
        Top = 1
        Width = 65
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 731
        Top = 1
        Width = 75
        Height = 13
        Caption = 'Data Recebmto'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 627
        Top = 1
        Width = 35
        Height = 13
        Caption = 'Modelo'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 599
        Top = 1
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 508
        Top = 1
        Width = 38
        Height = 13
        Caption = 'N'#186' Nota'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 1
        Top = 38
        Width = 28
        Height = 13
        Caption = 'CFOP'
        FocusControl = DBEdit10
      end
      object Label24: TLabel
        Left = 281
        Top = 74
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit24
      end
      object Label23: TLabel
        Left = 475
        Top = 74
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit23
      end
      object Label21: TLabel
        Left = 154
        Top = 74
        Width = 38
        Height = 13
        Caption = 'Insc.Est'
        FocusControl = DBEdit21
      end
      object Label20: TLabel
        Left = 1
        Top = 74
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit20
      end
      object Label19: TLabel
        Left = 439
        Top = 38
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        FocusControl = DBEdit19
      end
      object Label18: TLabel
        Left = 654
        Top = 74
        Width = 42
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = DBEdit18
      end
      object Label11: TLabel
        Left = 503
        Top = 74
        Width = 41
        Height = 13
        Caption = 'Emitente'
        FocusControl = DBEdit11
      end
      object Label25: TLabel
        Left = 38
        Top = 38
        Width = 108
        Height = 13
        Caption = 'Natureza da Opera'#231#227'o'
        FocusControl = DBEdit10
      end
      object Label26: TLabel
        Left = 354
        Top = 38
        Width = 43
        Height = 13
        Caption = 'C'#243'd.Forn'
      end
      object Label2: TLabel
        Left = 524
        Top = 91
        Width = 127
        Height = 13
        Caption = 'P - (Pr'#243'prio)  T - (Ter'#231'eiros)'
        FocusControl = DBEdit11
      end
      object Label1: TLabel
        Left = 674
        Top = 91
        Width = 132
        Height = 13
        Caption = 'N - (Normal)  S -(Cancelada)'
        FocusControl = DBEdit18
      end
      object Label12: TLabel
        Left = 3
        Top = 1
        Width = 60
        Height = 13
        Caption = 'Loja Entrada'
        FocusControl = DBEdit9
      end
      object DBText1: TDBText
        Left = 440
        Top = 19
        Width = 65
        Height = 17
        DataField = 'ID_LOJA'
        DataSource = DM.dsEntradaNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 439
        Top = 1
        Width = 53
        Height = 13
        Caption = 'C'#243'digoLoja'
        FocusControl = DBEdit9
      end
      object DBEdit4: TDBEdit
        Left = 663
        Top = 15
        Width = 66
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DATA_EMI'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit5: TDBEdit
        Left = 731
        Top = 15
        Width = 76
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DATA_REC'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit7: TDBEdit
        Left = 627
        Top = 15
        Width = 34
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'MODELO'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit8: TDBEdit
        Left = 599
        Top = 15
        Width = 26
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'SERIE'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit9: TDBEdit
        Left = 508
        Top = 15
        Width = 89
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NUM_NOTA'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit10: TDBEdit
        Left = 1
        Top = 52
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CFOP'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 6
        OnEnter = DBEdit10Enter
        OnKeyPress = FormKeyPress
      end
      object DBEdit24: TDBEdit
        Left = 281
        Top = 90
        Width = 193
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CIDADE'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object DBEdit23: TDBEdit
        Left = 475
        Top = 90
        Width = 25
        Height = 19
        Ctl3D = False
        DataField = 'UF_1'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object DBEdit21: TDBEdit
        Left = 154
        Top = 90
        Width = 126
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'INS_EST'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object DBEdit20: TDBEdit
        Left = 1
        Top = 90
        Width = 151
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CNPJ_1'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object DBEdit19: TDBEdit
        Left = 439
        Top = 52
        Width = 368
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'NOME'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit18: TDBEdit
        Left = 654
        Top = 90
        Width = 17
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'SITUACAO'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 9
        OnExit = DBEdit18Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit11: TDBEdit
        Left = 503
        Top = 90
        Width = 17
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'EMITENTE'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 8
        OnExit = DBEdit11Exit
        OnKeyPress = FormKeyPress
      end
      object DBEdit25: TDBEdit
        Left = 38
        Top = 52
        Width = 315
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DES_CFOP'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
        OnKeyPress = FormKeyPress
      end
      object DBEdit26: TDBEdit
        Left = 354
        Top = 52
        Width = 84
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID_FORNECEDOR'
        DataSource = DM.dsEntradaNF
        ParentCtl3D = False
        TabOrder = 7
        OnEnter = DBEdit26Enter
        OnKeyPress = FormKeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 1
        Top = 15
        Width = 435
        Height = 21
        DataField = 'R_SOCIAL_LOJA'
        DataSource = DM.dsEntradaNF
        KeyField = 'R_SOCIAL'
        ListField = 'R_SOCIAL'
        ListSource = DM.dsEmpresa
        TabOrder = 0
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Notas Fiscais Lan'#231'adas'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 2
        Width = 801
        Height = 109
        Color = 14811135
        Ctl3D = False
        DataSource = DM.dsEntradaNF
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyUp = DBGrid1KeyUp
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'R_SOCIAL_LOJA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_NOTA'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_EMI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_REC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMITENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PRODUTOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BASE_CALCULO_ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Visible = True
          end>
      end
    end
  end
  object P_PRODUTO: TPanel
    Left = -8
    Top = 519
    Width = 827
    Height = 44
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 15784647
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 1
    object Label22: TLabel
      Left = 8
      Top = 4
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
    object Label27: TLabel
      Left = 99
      Top = 4
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
    object Label28: TLabel
      Left = 431
      Top = 4
      Width = 29
      Height = 13
      Caption = 'Quant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 208
      Top = -2
      Width = 23
      Height = 22
      Caption = '5'
      Visible = False
      OnClick = SpeedButton5Click
    end
    object Label30: TLabel
      Left = 493
      Top = 4
      Width = 31
      Height = 13
      Caption = 'Vl.Unit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 553
      Top = 4
      Width = 42
      Height = 13
      Caption = 'Aliq Icms'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 596
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Aliq IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 638
      Top = 4
      Width = 25
      Height = 13
      Caption = 'Desc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 720
      Top = 4
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 387
      Top = 4
      Width = 21
      Height = 13
      Caption = 'CST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 18
      Width = 89
      Height = 19
      Color = clInfoBk
      DataField = 'CODIGO'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 99
      Top = 18
      Width = 286
      Height = 19
      Color = clInfoBk
      DataField = 'DESCRICAO'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit22: TDBEdit
      Left = 553
      Top = 18
      Width = 41
      Height = 19
      Color = clCream
      DataField = 'ALIQ_ICMS'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnExit = DBEdit22Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit28: TDBEdit
      Left = 596
      Top = 18
      Width = 41
      Height = 19
      Color = clCream
      DataField = 'ALIQ_IPI'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnExit = DBEdit28Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit29: TDBEdit
      Left = 638
      Top = 18
      Width = 81
      Height = 19
      Color = clCream
      DataField = 'VALOR_DESC'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnExit = DBEdit29Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit30: TDBEdit
      Left = 720
      Top = 18
      Width = 90
      Height = 19
      Color = clCream
      DataField = 'VALOR_TOTAL'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnExit = DBEdit30Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit27: TDBEdit
      Left = 773
      Top = 26
      Width = 59
      Height = 19
      Color = clWhite
      DataField = 'VALOR_UNI'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnExit = DBEdit27Exit
      OnKeyPress = FormKeyPress
    end
    object Edit2: TEdit
      Left = 10
      Top = 18
      Width = 87
      Height = 19
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnExit = Edit2Exit
      OnKeyPress = Edit2KeyPress
    end
    object DBEdit17: TDBEdit
      Left = 387
      Top = 18
      Width = 42
      Height = 19
      Color = clCream
      DataField = 'CST'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit17Enter
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 431
      Top = 18
      Width = 56
      Height = 19
      Color = clYellow
      DataField = 'QUANTIDADE'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object eValorUnit: TDBEdit
      Left = 489
      Top = 18
      Width = 62
      Height = 19
      DataField = 'VALOR_UNI'
      DataSource = DM.dsItemEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = eValorUnitExit
      OnKeyPress = FormKeyPress
    end
  end
  object P_ULT_PRODUTO: TPanel
    Left = 0
    Top = 218
    Width = 817
    Height = 55
    Color = clNavy
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Label31: TLabel
      Left = 323
      Top = 2
      Width = 224
      Height = 24
      Caption = #218'ltimo Produto Lan'#231'ado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelPiscanteSOUTO1: TLabel
      Left = 24
      Top = 15
      Width = 5
      Height = 25
      Caption = '.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 88
    Top = 272
    Width = 729
    Height = 241
    ActivePage = TabSheet3
    Style = tsFlatButtons
    TabOrder = 3
    object TabSheet3: TTabSheet
      Caption = 'Iten(s) da Nota'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 2
        Width = 729
        Height = 212
        Color = 15784647
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 4
          Top = 9
          Width = 717
          Height = 192
          Color = clBtnHighlight
          Ctl3D = False
          DataSource = DM.dsItemEntrada
          FixedColor = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnDblClick = DBGrid2DblClick
          OnEnter = DBGrid2Enter
          OnKeyUp = DBGrid2KeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_PRODUTO'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 149
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOP_NOTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_UNI'
              Width = 52
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'ALIQ_ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Width = 50
              Visible = True
            end
            item
              Color = clMenuBar
              Expanded = False
              FieldName = 'ALIQ_IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Width = 43
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'VALOR_IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESC'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Width = 72
              Visible = True
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cobran'#231'a'
      ImageIndex = 1
    end
  end
  object GB_VALORES: TGroupBox
    Left = 247
    Top = 238
    Width = 382
    Height = 390
    Caption = '           Calculos da Nota Fiscal            '
    Color = 15138815
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Visible = False
    object Label36: TLabel
      Left = 5
      Top = 42
      Width = 124
      Height = 17
      Caption = 'Valor dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label37: TLabel
      Left = 5
      Top = 87
      Width = 102
      Height = 17
      Caption = 'Base Calc.Icms'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 5
      Top = 119
      Width = 70
      Height = 17
      Caption = 'Valor Icms'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 5
      Top = 162
      Width = 59
      Height = 17
      Caption = 'Valor IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label40: TLabel
      Left = 5
      Top = 221
      Width = 126
      Height = 17
      Caption = 'Valor Isent N.Tribu'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label41: TLabel
      Left = 5
      Top = 260
      Width = 99
      Height = 17
      Caption = 'Outros Valores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label42: TLabel
      Left = 5
      Top = 295
      Width = 71
      Height = 17
      Caption = 'Valor Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape8: TShape
      Left = 1
      Top = 328
      Width = 380
      Height = 2
    end
    object Label44: TLabel
      Left = 8
      Top = 189
      Width = 69
      Height = 17
      Caption = 'Descontos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit32: TDBEdit
      Left = 162
      Top = 39
      Width = 118
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataField = 'VALOR_PRODUTOS'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit33: TDBEdit
      Left = 162
      Top = 82
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataField = 'BASE_CALCULO_ICMS'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit34: TDBEdit
      Left = 162
      Top = 115
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataField = 'VALOR_ICMS'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit35: TDBEdit
      Left = 162
      Top = 154
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataField = 'VALOR_IPI'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit36: TDBEdit
      Left = 162
      Top = 217
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = False
      DataField = 'VALOR_ISENT_N_TRIBUTADO'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit37: TDBEdit
      Left = 162
      Top = 258
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clWhite
      Ctl3D = False
      DataField = 'OUTROS_VALORES'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit38: TDBEdit
      Left = 162
      Top = 291
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataField = 'VALOR_TOTAL'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      OnEnter = DBEdit38Enter
      OnExit = DBEdit38Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit40: TDBEdit
      Left = 163
      Top = 184
      Width = 121
      Height = 27
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataField = 'VALOR_DESCONTO'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object BB_CONFIRMA_CALCULOS: TBitBtn
      Left = 85
      Top = 350
      Width = 75
      Height = 27
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B03B14301952E02FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF8A2703B64701B849008F2A02FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2702AF4101B849008F2A02FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2702
        AB4103C45101912C02FF00FFFF00FF8E2903973002973002973002973002972F
        02972F029730028C2802FF00FF983305D7690E9F3703FF00FFFF00FFFF00FFA4
        3901C14F00BF4C00BF4D00BD4C00BD4C00BF4D00B646008C2802872301C76016
        CA6213872302FF00FFFF00FFFF00FF902B02993102983102962F029F3502C04E
        00C14F00B546008C28028F2A03ED8E2CAB470DFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF882603B44401BA4900AB3E01B747008B2802932E05F09530
        A13E0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AF4101C25000962E
        02A03601BA49008B2802902C04F09630B75213801E00FF00FFFF00FFFF00FFFF
        00FF8A2702B14201C551009E3502842303A33801BA49008B2802862201D47320
        F2952F953005832001832001832001963004C05407C45301A03501FF00FFFF00
        FFA33801BA49008B2802FF00FF952F05EE912DF79C33BB5514B04B10CA671AEF
        8A23D06711953003FF00FFFF00FFFF00FFA43801BA49008B2802FF00FFFF00FF
        932E04C15F18ED8C2CF69631E98A2BB852128E2903FF00FFFF00FFFF00FFFF00
        FFA13701B848008B2802FF00FFFF00FFFF00FF882502922D049A3607912D0486
        2301FF00FFFF00FFFF00FFFF00FFFF00FF8F2A03952E028B2802FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 8
      OnClick = BB_CONFIRMA_CALCULOSClick
    end
    object BB_CANCELA_CALCULOS: TBitBtn
      Left = 191
      Top = 350
      Width = 75
      Height = 27
      Caption = 'Cancela&r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF00042700033200023F00023F000333000429FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00043900043900016400008700
        008C00008C00008900006600033B00033BFF00FFFF00FFFF00FFFF00FFFF00FF
        00034400025400009100009300008C00008700008C00008C0000910000930001
        54000326FF00FFFF00FFFF00FF000A5600015F0000A700009A00008C00008700
        008700008900008900008900008C00009300015400033BFF00FFFF00FF000A56
        0000B60000AE00009D00008C2C45B0E7EBF8D4DAF3000C940000890000890000
        8C00009300033BFF00FF000A5A0004890000CD0000AE0000931F38ABF4F6FCFF
        FFFF7385CF00008C0000890000890000890000910000660004350001420000B9
        0000CD0000B61C36AEF3F4FCFCFCFE6175C90000890000890000890000890000
        8900008E0000800003320000590001D80002DB405FECEEF0FEFFFFFFF6F7FEA8
        B8F5A4B4F4A9B5E5A9B5E5ABB7E6AEBAE800008C00008C00033900006B011BE2
        0009E19CADF3FFFFFFFFFFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00008E00008C00023F00006B193DEF0125E2000FD47D94EFFFFFFFF8FAFF66
        82FB0A2AC71835BE1835BC1531B71431B700009A00008700033600006B1539F6
        6581FD0007E70001D06881EDFFFFFFDAE2FF1839D70000B60000B10000B10000
        A700009D00007700043AFF00FF0007CF93A9FF385BF50000C30001CD5D78EBFF
        FFFFF2F4FF0015C40000B10000AC0000A20000A9000159FF00FFFF00FF0009D2
        1C40F0B7C6FF3355F10004DD0001CB6982EB91A5FA0007C70000BB0000B60000
        B9000096000159FF00FFFF00FFFF00FF0000A83255EFC6D1FF7992F90C30E300
        17E1010FE60113E60113E6000AE60000AC000154FF00FFFF00FFFF00FFFF00FF
        FF00FF082CE9082CE97790F9ADBDFF8CA1FA6782F24362EA0529E10000B90000
        B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000C30010E100
        21E1001AE10001DD000098FF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 9
      OnClick = BB_CANCELA_CALCULOSClick
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 4
    Top = 200
    Width = 144
    Height = 18
    DataSource = DM.dsEntradaNF
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = -3
    Top = -2
    Width = 822
    Height = 51
    TabOrder = 6
    object BB_NOVO: TBitBtn
      Left = 5
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Novo'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF015603FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01
        5603015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0156035BF7910156030156030156030156030156
        03015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156035BF7915B
        F79154EF8741DA692AC04616A628099213015603FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0156035BF7910156030156030156030156030156
        03015603FF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5DC90D3F7EFF00FF01
        5603015603FF00FFFF00FFDCEBFB0D5DC90D5DC90D5DC90D5DC90D5DC968B6F7
        3DAAFF35A1FF34A0FF0D3F7EFF00FFFF00FF015603FF00FFFF00FFDCEBFB177D
        FF2083FF2184FF0D5DC90D5DC963B2F43CAAFF35A0FE349FFF0D3F7EFF00FFFF
        00FFFF00FFFF00FFFF00FFDCEBFB167AFF1F81FF1F82FF0D5DC90D5DC966B6F7
        41B0FF39A7FF38A5FF0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFB0F75
        FF187DFF187EFF0D5DC90D5DC966B6F741B0FF39A7FF38A5FF0D3F7EFF00FFFF
        00FFFF00FFFF00FFFF00FFDCEBFBDCEBFBDCEBFBDCEBFBDCEBFB0D5DC94786C1
        1F6FC11F6FC11F6FC10D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7EFF00FFFF00
        FFFF00FFFF00FFFF00FF0D5DC96CBDF74ABCFF42B2FF41B4FF1F6FC139A7FF39
        A7FF35A0FF34A0FF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FF0D5DC96ABAF4
        4ABBFF43B2FE43B4FF1F6FC139A7FF3AA7FF35A0FE35A0FF0D5DC9FF00FFFF00
        FFFF00FFFF00FFFF00FF0D5DC96BBCF649BCFF43B6FF43B7FF1F6FC139A7FF3B
        ABFF36A4FF36A4FF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FF0D5DC987C1F2
        79CBFC6EC5FB73C9FC4786C16BC0FC6BC0FC66BAFB6ABCFC0D5DC9FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D
        5DC90D5DC90D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = BB_NOVOClick
    end
    object BB_GRAVAR: TBitBtn
      Left = 227
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Salvar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        98403F953A3A8B3435957D7DB0B8B7BDBCBBC0BCBBBBB8B7B6BBBAA487878028
        29812C2C903737FF00FFFF00FFAA5D56C14B4BC54D4DA64041836666AC8A89D9
        C2C0FEF7F2FFFCF8EEF3F0C59F9F7E1918811D1DB141419C3E3FFF00FFA95D56
        BC4A4AC04C4CA54242876062862B2BA45B5AE0D5D3FCFAF7FEFFFCCEA7A67E1A
        1A811E1EAF40409A3E3FFF00FFA95D56BC4A4AC04B4CA54242926A6981232383
        2020BFAAA9EEEBE9FFFFFFD9B2B07E1919801E1EAF40409A3E3FFF00FFA95D56
        BC4A4AC04B4BA441419E7675882F2F7B1D1D908282C9D0CCF8FFFEDEBAB87A18
        187E1C1CAD3F3F9A3E3FFF00FFA95D56BC4A4AC14B4BA94141B27776B17E7D9F
        6C6C957475A78B8AD8BBB8D193938C23238E2727B24242993D3EFF00FFA95D56
        BD4A4BBC4949BC4949BC4849BD4C4CBF4C4CBD4949B84141BA4343BB4646BD4A
        4ABF4B4BC14D4D973C3DFF00FFAA5E57A439379E413DB66C6AC58E8BC99695C9
        9593C99695C98F8EC99291C99593CA9997C68484BF4B4B973B3CFF00FFAA5D56
        9D3533DCBFBCF8F4F4F6F0EFF7F2F0F7F2F0F7F2F0F7F3F2F7F2F0F7F2F0FAFA
        F8D4ACABB44142983C3DFF00FFAA5D569F3735E5CBCAFBFAF8F4EBEAF4EDEBF4
        EDEBF4EDEBF4EDEBF4EDEBF3EDEBFAF7F6D4AAA9B24141983C3DFF00FFAA5D56
        9F3735E5CBC7EBEAEACCC9C7CFCBCBCFCBCBCFCBCBCFCBCBCFCBCBCCC9C9E6E6
        E5D7ABAAB14141983C3DFF00FFAA5D569F3735E5CBC9EFEDEDD4CFCED5D0D0D5
        D0D0D5D0D0D5D0D0D5D0D0D3CFCEE9E9E9D7ABAAB24141983C3DFF00FFAA5D56
        9F3735E3CBC9F2F0EFDCD5D4DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DCD5D5EEED
        EBD5ABA9B24141983C3DFF00FFAA5D569F3735E5CBCAEDEBEACEC9C9CFCCCBCF
        CCCBCFCCCBCFCCCBCFCCCBCCC9C9E7E6E5D8ACABB24141983C3DFF00FFAA5D55
        9F3735E2CAC7FEFAFAF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEFCF8
        F7D4AAA9B24141983C3DFF00FFFF00FF923633BAA3A1C6C9C7C4C0C0C4C0C0C4
        C0C0C4C0C0C4C0C0C4C0C0C4C0C0C6C7C7BC99988C3435FF00FF}
      TabOrder = 1
      OnClick = BB_GRAVARClick
    end
    object BB_EXCLUIR: TBitBtn
      Left = 301
      Top = 6
      Width = 75
      Height = 41
      Caption = 'E&xcluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2BB81F3C48AF2BC81EF
        B072EEAF6EEFB275FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFBEBBDFEF3C9FBDEACF3C990FBB67EFFB47DFCCA99FFD9ADFED9A7F0B5
        77FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFEFAD3FEF7CCFBDCA9EBCA91A9
        B86E84AB542B912057A743EAF3C7FCE9BDEEAD6FFF00FFFF00FFFF00FFFF00FF
        EDA565F3C28AFCF0C4FCE5B5FBD09F2C9622007B00058206067F043DA335FEF2
        D0F0B173FF00FFFF00FFFF00FFFF00FFEEAB6DEDA767EFB070F6C990FFD8AC2E
        9823006E006ABF6BFFF0EA48A138A3AF5EFCAF74FF00FFFF00FFFF00FFFF00FF
        F2B479F2B77EF0B277F0AC6FFBB57E7AB46041A6416FBC69FFFFFFF4FEFBBCBB
        79F3AA6BFF00FFFF00FFFF00FFFF00FFF7C292FAC598F8C293F8C090F3BF8AC2
        D5A5FFFFFFD9EED556B1534BAF4BB8BC79F8B075FF00FFFF00FFFF00FFF6C792
        FCD4ADFCD4ACFCD0A9FCD0A9FFD4B55DA94680C780E0F2DE27982400700082B0
        5BFFBD90EEAC6DFF00FFFF00FFF6C792FFEAC4FEE3BCFEE2BAFEE0B8FFE0BAD9
        D9AC0A8209188A16037F0300790077B45DFFCEAAEEAC6DFF00FFFF00FFFADDAB
        FFFBD5FFF4CCFFF3CAFFF0C9FFEFC5FFF2D1B5D5982A96242B99249ACB87B5D1
        95FFE0BAF2B77AFF00FFFF00FFFCEFC4FFFFD8FFFBD3FFFCD4FFFBD3FFFBD4FF
        FCD4FFFFE1FFFFEBFFFFE7FFFFE0FFF8D7FFF4CBF3C086FF00FFFF00FFFEF4CB
        FFFFDDFFFFD9FFFFD9FFFFDAFFFED7FEF6CCF8DAA3F4C07DF4C17FF7D8A3FEF2
        C5FFFFDDF3C991FF00FFFF00FFF4CC96F8DEAFF8DDACF7D8A6F6CF99F3BF80EF
        AC66EB9D4FEB9C4CEB9F55F0AC6EFAC087FCD3A0FAC089FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA354EFAB68F7BC83FABF
        88FABC83FABC83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFAC088FAC088FAC088FF00FFFF00FF}
      TabOrder = 2
      OnClick = BB_EXCLUIRClick
    end
    object BB_CANCELAR: TBitBtn
      Left = 153
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF00042700033200023F00023F000333000429FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00043900043900016400008700
        008C00008C00008900006600033B00033BFF00FFFF00FFFF00FFFF00FFFF00FF
        00034400025400009100009300008C00008700008C00008C0000910000930001
        54000326FF00FFFF00FFFF00FF000A5600015F0000A700009A00008C00008700
        008700008900008900008900008C00009300015400033BFF00FFFF00FF000A56
        0000B60000AE00009D00008C2C45B0E7EBF8D4DAF3000C940000890000890000
        8C00009300033BFF00FF000A5A0004890000CD0000AE0000931F38ABF4F6FCFF
        FFFF7385CF00008C0000890000890000890000910000660004350001420000B9
        0000CD0000B61C36AEF3F4FCFCFCFE6175C90000890000890000890000890000
        8900008E0000800003320000590001D80002DB405FECEEF0FEFFFFFFF6F7FEA8
        B8F5A4B4F4A9B5E5A9B5E5ABB7E6AEBAE800008C00008C00033900006B011BE2
        0009E19CADF3FFFFFFFFFFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00008E00008C00023F00006B193DEF0125E2000FD47D94EFFFFFFFF8FAFF66
        82FB0A2AC71835BE1835BC1531B71431B700009A00008700033600006B1539F6
        6581FD0007E70001D06881EDFFFFFFDAE2FF1839D70000B60000B10000B10000
        A700009D00007700043AFF00FF0007CF93A9FF385BF50000C30001CD5D78EBFF
        FFFFF2F4FF0015C40000B10000AC0000A20000A9000159FF00FFFF00FF0009D2
        1C40F0B7C6FF3355F10004DD0001CB6982EB91A5FA0007C70000BB0000B60000
        B9000096000159FF00FFFF00FFFF00FF0000A83255EFC6D1FF7992F90C30E300
        17E1010FE60113E60113E6000AE60000AC000154FF00FFFF00FFFF00FFFF00FF
        FF00FF082CE9082CE97790F9ADBDFF8CA1FA6782F24362EA0529E10000B90000
        B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000C30010E100
        21E1001AE10001DD000098FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = BB_CANCELARClick
    end
    object BB_EDITAR: TBitBtn
      Left = 79
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Alterar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
        8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
        F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
        83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
        A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
        F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
        83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
        6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
        FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
        79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
        A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
        FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
        69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
        7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
        FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
        5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
        F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
        F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
        FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
        CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
        A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
      TabOrder = 4
      OnClick = BB_EDITARClick
    end
    object BB_SAIR: TBitBtn
      Left = 597
      Top = 6
      Width = 75
      Height = 41
      Caption = 'Sai&r'
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0005450005451C215A4246766B6E94989BB4C1C3D2E6E7EDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF868686868686949494A6A6A6B9B9B9CFCFCFE2
        E2E2F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0D327C082D790D327C0D327C000B4E3765A93B67AB365E
        A1305195254083172C6F0A185B000C4E02125505175D061D6408246C0A2B740D
        307BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191918E8E8E919191919191878787
        9B9B9B9B9B9B9999999797979393938E8E8E8A8A8A8787878989898A8A8A8B8B
        8B8E8E8E8F8F8F919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A317E0C0D0F0C
        0D0F0C0D0F0012563D6FB34A7DBE5184C85A8DD26194D96497DC6295DA5F91D6
        4E7BBF3A62A725478C1632780A2166001257FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF8F8F8F8383838383838383838888889D9D9DA0A0A0A2A2A2A4A4A4A6A6A6A7
        A7A7A6A6A6A5A5A5A0A0A09A9A9A9494949090908C8C8C888888FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0C35820E10120E0F120E0F12001A623869AD3163A73568
        AB3D70B4497CC05588CD5D90D56396DB6799DC5B8ED35083C84679BD3D70B400
        1A63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090908484848383838383838A8A8A
        9B9B9B9A9A9A9B9B9B9D9D9DA0A0A0A3A3A3A5A5A5A7A7A7A7A7A7A5A5A5A2A2
        A29F9F9F9D9D9D8A8A8AFFFFFFFFFFFFFFFFFFF9FCFAFFFFFF0F3A8711121411
        121411121400206A3A6BB02A599D295CA0285B9F26599D25589C497BCD6295DA
        3366AA396CB03B6EB23B6EB23C6FB300206BFFFFFFFFFFFFFFFFFFFCFCFCFFFF
        FF9191918484848484848484848B8B8B9C9C9C98989898989898989897979797
        9797A1A1A1A6A6A69A9A9A9C9C9C9C9C9C9C9C9C9D9D9D8B8B8BFFFFFFFFFFFF
        FFFFFF002FE6FFFFFF113F8C13141713141713131700226D3F71B62553982B5D
        A12B5EA22B5EA22B5EA24577C85E91D6255599295CA0285B9F2C5FA33869AE00
        226EFFFFFFFFFFFFFFFFFF979797FFFFFF9292928585858585858585858B8B8B
        9D9D9D969696989898989898989898989898A0A0A0A5A5A59696969898989898
        989999999B9B9B8C8C8CFFFFFFFFFFFFFFFFFF002FE60018DA14429015161A15
        171A14171A00246F4173B8224E942A5CA02B5EA22B5EA22B5EA24172C0598CD1
        2350942B5EA22B5EA22F62A63B6CB1002470FFFFFFFFFFFFFFFFFF9797979494
        949393938585858585858585858C8C8C9E9E9E95959598989898989898989898
        98989E9E9EA4A4A49595959898989898989999999C9C9C8C8C8CFFFFFFFFFFFF
        FFFFFF002FE61569FF0109CB17191D17191E17191E0026724375BA1B44892554
        982B5EA22B5EA22B5EA23C6CBA5386CC1F4A8E2B5EA22B5EA22F62A64072B700
        2673FFFFFFFFFFFFFFFFFF9797979F9F9F9191918686868686868686868C8C8C
        9E9E9E9393939696969898989898989898989D9D9DA3A3A39494949898989898
        989999999E9E9E8C8C8C0033EE0033EE0033EE002FE61669FF095EFE0400B419
        1B21191B200028754577BC14387F1A4286255599295CA02A5DA13766B44E81C7
        183F8326569A2B5EA23063A74274B90028769898989898989898989797979F9F
        9F9D9D9D8F8F8F8787878787878D8D8D9F9F9F90909092929296969698989898
        98989C9C9CA1A1A19292929797979898989A9A9A9E9E9E8D8D8D0033EE5DA2FF
        3F87FF2876FF1569FF095EFE0055FE08009D1B1E23002B784779BE0C2B730E2C
        70173D81214E9226589C3463AF4A7DC21132761C468A26569A2F61A54476BB00
        2B79989898AAAAAAA5A5A5A2A2A29F9F9F9D9D9D9C9C9C8D8D8D8787878D8D8D
        9F9F9F8E8E8E8E8E8E9191919595959797979B9B9BA0A0A08F8F8F9393939797
        979999999F9F9F8D8D8D0033EE599FFF4089FF2874FF1568FF095EFE0055FE00
        52FD070081002D7B1426691425683A69B12D5AA32450951E498D3362AD477ABF
        0A266A0F2E721840842655994678BD002D7C989898A9A9A9A6A6A6A2A2A29F9F
        9F9D9D9D9C9C9C9B9B9B8B8B8B8E8E8E8D8D8D8D8D8D9C9C9C98989896969694
        94949A9A9AA0A0A08C8C8C8E8E8E9292929797979F9F9F8E8E8E0033EE5DA2FF
        3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7D3166B45287D13765
        AF3A69B33D6FB64274BB477ABF477ABF4373B93564AB2C5AA229569E477ABF00
        2F7E989898AAAAAAA5A5A5A2A2A29F9F9F9D9D9D9C9C9C9B9B9B8B8B8B8E8E8E
        9B9B9BA3A3A39B9B9B9C9C9C9D9D9D9E9E9EA0A0A0A0A0A09E9E9E9B9B9B9898
        98979797A0A0A08E8E8E0033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08
        009D24262D0030806497DE72A4E927579B2E5CA23161A83666B03361AE497CC1
        3564B03867B23C6DB64274BB497CC1003081989898AAAAAAA6A6A6A2A2A29F9F
        9F9D9D9D9C9C9C8D8D8D8989898E8E8EA7A7A7AAAAAA9797979999999A9A9A9B
        9B9B9A9A9AA0A0A09B9B9B9C9C9C9D9D9D9E9E9EA0A0A08E8E8E0033EE0033EE
        0033EE002CE61569FF095DFE0400B425292F25282F0032824D80C52553972557
        9B25589C26599D26599D3A6AB85184CA1F4C9028579B3464AC4374BE4B7EC300
        32839898989898989898989696969F9F9F9D9D9D8F8F8F8A8A8A8A8A8A8F8F8F
        A1A1A19696969797979797979797979797979D9D9DA2A2A29494949797979B9B
        9B9F9F9FA1A1A18F8F8FFFFFFFFFFFFFFFFFFF002CE61668FF0109CB282B3327
        2A33272A330034854F82C8204B9123559924579B25589C25589C4274C45B8ED4
        1D4A8E25589C26599D2E61A54C7FC4003486FFFFFFFFFFFFFFFFFF9696969F9F
        9F9191918B8B8B8B8B8B8B8B8B8F8F8FA2A2A295959596969697979797979797
        97979F9F9FA5A5A5949494979797979797999999A1A1A18F8F8FFFFFFFFFFFFF
        FFFFFF002CE60018DA2560B12A2E362A2D362A2D360136875083C91A42871E4D
        9123569A24579B24579B4D7FD36699DF19448624579B25589C2D60A44D80C500
        3688FFFFFFFFFFFFFFFFFF9696969494949999998B8B8B8B8B8B8B8B8B8F8F8F
        A2A2A2929292959595969696979797979797A2A2A2A7A7A79292929797979797
        97999999A1A1A18F8F8FFFFFFFFFFFFFFFFFFF002CE6FFFFFF2560B12C30382C
        30382C30380138895184CA13367A153D801E4E9222549823569A588DE272A5EA
        143A7C20509324579B2C5FA34F82C800388AFFFFFFFFFFFFFFFFFF969696FFFF
        FF9999998C8C8C8C8C8C8C8C8C909090A2A2A290909091919195959596969696
        9696A5A5A5AAAAAA909090959595979797999999A2A2A2909090FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2560B12E313A2E313A2E313A01398B5285CB0A25680720
        5D0F33731743861D4E926096EF7BAEF40E2D6E1740832051942C5EA25083CA00
        398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998C8C8C8C8C8C8C8C8C909090
        A2A2A28C8C8C8B8B8B8F8F8F929292959595A8A8A8ADADAD8E8E8E9292929595
        95999999A2A2A2909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B130333D30
        333D30333D013A8D5A8ED34D80C94172BC3969B33160A828549B5A93F682B5FA
        051C58092462113475214F925184CB003A8EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF9999998D8D8D8D8D8D8D8D8D909090A4A4A4A1A1A19E9E9E9C9C9C9A9A9A97
        9797A8A8A8AEAEAE8A8A8A8B8B8B8F8F8F959595A2A2A2909090FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2560B131353E31353F31353F003C8F568AD16598DD6FA2
        E77AADF286B9FE8CBFFF86B9FE7DB0F56093DE4779C33362AB2E5CA45487CD00
        3C90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998D8D8D8D8D8D8D8D8D909090
        A4A4A4A7A7A7AAAAAAACACACAFAFAFB0B0B0AFAFAFADADADA6A6A6A0A0A09A9A
        9A999999A3A3A3919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B132374032
        3740323740033D8C054194124D9E235DAC3871BD5087D2699EE67BAEF482B5FA
        7EB1F679ACF171A4E9689BE05C90D5003D91FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF9999998E8E8E8E8E8E8E8E8E9191919292929595959999999D9D9DA3A3A3A9
        A9A9ADADADAEAEAEADADADACACACAAAAAAA8A8A8A5A5A5919191FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2560B1343842343841343841343842313747293851213A
        5E193B6A113C780A3D84033E8F0845991754A52863B2346DBA3F77C14379C200
        3E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999998E8E8E8E8E8E8E8E8E8E8E8E
        8E8E8E8E8E8E8F8F8F8F8F8F9090909090909191919393939696969A9A9A9C9C
        9C9F9F9F9F9F9F919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B12560B125
        60B12560B12560B12560B12560B12560B12560B12560B12560B12560B1235EAF
        1E5AAB1854A7134FA20C4A9D074599024196FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF99999999999999999999999999999999999999999999999999999999999999
        9999999999999999989898969696959595949494939393929292}
      NumGlyphs = 2
      TabOrder = 5
      OnClick = BB_SAIRClick
    end
    object BB_PESQUISAR: TBitBtn
      Left = 375
      Top = 6
      Width = 75
      Height = 41
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
      TabOrder = 6
      OnClick = BB_PESQUISARClick
    end
    object BB_REPLICAR: TBitBtn
      Left = 523
      Top = 6
      Width = 75
      Height = 41
      Caption = 'Re&plicar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A05710A
        05710A05710AFF00FF00009A00009A00009A00009A00009A00009A00009A0000
        9A00009A00009A00009A05710A45D36C32C35005710AFF00FF00009A0333F60D
        3EFC2551FC496DFD7A95FEB5C4FFF5F8FFFFFFFFFFFFFF00009A05710A59E287
        49D57105710AFF00FF00009A0336FC0D3FFD2652FD4A6FFE7B97FFB8C7FFF8FB
        FFFFFFFFFFFFFF00009A05710A05710A05710A05710AFF00FF00009A00009A00
        009A00009A00009A00009A00009A00009A00009A00009A00009AFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A05710AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        05710A5CE78D40BE6205710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF08750E05710AFF00FFFF00FFFF00FF05710A45D16B4ED9782BA54405710AFF
        00FFFF00FFFF00FFFF00FFFF00FF0C7A142BA44305710AFF00FFFF00FF05710A
        1DA5302DBD4A38C5580A7911FF00FFFF00FFFF00FFFF00FFFF00FF0E7D1746C7
        6B05710AFF00FFFF00FFFF00FF05710A05710A0A7F1222B63828B7410B7B1206
        730B05720B0B7A131D912D48CB7005710AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF05710A077D0E16AD271EB4341BA02E20A43431B94D42CC6505710AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A05710A0D9C1913
        A4221BAC2E1BAC2E05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF05710A05710A05710A05710AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 7
      OnClick = BB_REPLICARClick
    end
    object BB_CONCLUIR: TBitBtn
      Left = 449
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Finalizar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB98385B98385B98385B983
        85B98385B98385B98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB98385F6DDB7F4D7ACF3D3A1F1CF98F0CA8FB98385FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA8E85F8E5C98A94D91E47
        F6888ECDF2D19CB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFCB9A82FAEDD91E49F90033FF1E48F6F4D8ABB98385FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCA887FCF5E98D9DED1E49
        FA8B97E0F6E0BDB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFE3B18EFEFBF6FCF7EDFBF2E4FAEDDAF8E8CEB98385FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDBD92FFFFFFFEFCFAFDF9
        F2B98384B98384BE8675B78183B78183B78183B78183B78183B78183B78183B7
        8183FF00FFEDBD92FFFFFFFFFFFFFEFDFCB98384D39769FF00FFB78183EED1B1
        E1B894E1B68CDFB180DCAB75EFC686B78183FF00FFEDBD92DCA887DCA887DCA8
        87B98384FF00FF007404B78183CA8F6B952B009A3401993401993300E4B57CB7
        8183FF00FFFF00FF45812CFF00FFFF00FFFF00FFFF00FF057E0EBA8E85F8EEE5
        A14213972E00942900BD7649FDE5B3B78183FF00FF017809109726FF00FFFF00
        FFFF00FF049012087F10CB9A82FFFFFFD5A992922600A04112ECCCAEFFEFC5B7
        818303750F49CC722EA848037008097B110C91160D9C1905730BDCA887FFFFFF
        FCF7F5AE5B33CD9574FBF1DEDECBB4428A3E44D2735CE78E3ECA6027B84014AB
        250EA31B07800FFF00FFE3B18EFFFFFFFFFFFFEDDBD1F9F2EAB78183B78183B7
        847530AB4A38C65826AF3D0D8A18098611077B0DFF00FFFF00FFEDBD92FFFFFF
        FFFFFFFFFFFFFDFFFFB78183DC9D64FF00FFFF00FF138E21199F29FF00FFFF00
        FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887B78183FF00FFFF
        00FFFF00FFFF00FF0A7D12FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
      OnClick = BB_CONCLUIRClick
    end
  end
  object Panel2: TPanel
    Left = -1
    Top = 273
    Width = 87
    Height = 245
    TabOrder = 7
    object BB_INCLUIR: TBitBtn
      Left = 3
      Top = 11
      Width = 83
      Height = 29
      Caption = '&Incluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08
        780E08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF08780E76F9A70DA31B08780EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
        F9A70EAA1D08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF08780E76F9A70EA81C08780EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
        F9A710AA1F08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        08780E08780E08780E08780E08780E76F9A719B02C08780E08780E08780E0878
        0E08780EFF00FFFF00FFFF00FF08780E76F9A755E38349DA7242D36837C8562A
        B94322B3371CB23016AF270FA81D0EA91B0DA21B08780EFF00FFFF00FF08780E
        76F9A776F9A776F9A776F9A776F9A776F9A72CBB4876F9A776F9A776F9A776F9
        A776F9A708780EFF00FFFF00FFFF00FF08780E08780E08780E08780E08780E76
        F9A73CCB5D08780E08780E08780E08780E08780EFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF08780E76F9A749D97208780EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
        F9A755E28208780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF08780E76F9A763F09708780EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
        F9A776F9A708780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF08780E08780EFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = BB_INCLUIRClick
    end
    object BB_SALVAR: TBitBtn
      Left = 8
      Top = 210
      Width = 75
      Height = 30
      Caption = '&Salvar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        98403F953A3A8B3435957D7DB0B8B7BDBCBBC0BCBBBBB8B7B6BBBAA487878028
        29812C2C903737FF00FFFF00FFAA5D56C14B4BC54D4DA64041836666AC8A89D9
        C2C0FEF7F2FFFCF8EEF3F0C59F9F7E1918811D1DB141419C3E3FFF00FFA95D56
        BC4A4AC04C4CA54242876062862B2BA45B5AE0D5D3FCFAF7FEFFFCCEA7A67E1A
        1A811E1EAF40409A3E3FFF00FFA95D56BC4A4AC04B4CA54242926A6981232383
        2020BFAAA9EEEBE9FFFFFFD9B2B07E1919801E1EAF40409A3E3FFF00FFA95D56
        BC4A4AC04B4BA441419E7675882F2F7B1D1D908282C9D0CCF8FFFEDEBAB87A18
        187E1C1CAD3F3F9A3E3FFF00FFA95D56BC4A4AC14B4BA94141B27776B17E7D9F
        6C6C957475A78B8AD8BBB8D193938C23238E2727B24242993D3EFF00FFA95D56
        BD4A4BBC4949BC4949BC4849BD4C4CBF4C4CBD4949B84141BA4343BB4646BD4A
        4ABF4B4BC14D4D973C3DFF00FFAA5E57A439379E413DB66C6AC58E8BC99695C9
        9593C99695C98F8EC99291C99593CA9997C68484BF4B4B973B3CFF00FFAA5D56
        9D3533DCBFBCF8F4F4F6F0EFF7F2F0F7F2F0F7F2F0F7F3F2F7F2F0F7F2F0FAFA
        F8D4ACABB44142983C3DFF00FFAA5D569F3735E5CBCAFBFAF8F4EBEAF4EDEBF4
        EDEBF4EDEBF4EDEBF4EDEBF3EDEBFAF7F6D4AAA9B24141983C3DFF00FFAA5D56
        9F3735E5CBC7EBEAEACCC9C7CFCBCBCFCBCBCFCBCBCFCBCBCFCBCBCCC9C9E6E6
        E5D7ABAAB14141983C3DFF00FFAA5D569F3735E5CBC9EFEDEDD4CFCED5D0D0D5
        D0D0D5D0D0D5D0D0D5D0D0D3CFCEE9E9E9D7ABAAB24141983C3DFF00FFAA5D56
        9F3735E3CBC9F2F0EFDCD5D4DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DCD5D5EEED
        EBD5ABA9B24141983C3DFF00FFAA5D569F3735E5CBCAEDEBEACEC9C9CFCCCBCF
        CCCBCFCCCBCFCCCBCFCCCBCCC9C9E7E6E5D8ACABB24141983C3DFF00FFAA5D55
        9F3735E2CAC7FEFAFAF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEFCF8
        F7D4AAA9B24141983C3DFF00FFFF00FF923633BAA3A1C6C9C7C4C0C0C4C0C0C4
        C0C0C4C0C0C4C0C0C4C0C0C4C0C0C6C7C7BC99988C3435FF00FF}
      TabOrder = 1
      Visible = False
      OnClick = BB_GRAVARClick
    end
    object BB_EXC: TBitBtn
      Left = 3
      Top = 99
      Width = 83
      Height = 30
      Caption = 'E&xcluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2BB81F3C48AF2BC81EF
        B072EEAF6EEFB275FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFBEBBDFEF3C9FBDEACF3C990FBB67EFFB47DFCCA99FFD9ADFED9A7F0B5
        77FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFEFAD3FEF7CCFBDCA9EBCA91A9
        B86E84AB542B912057A743EAF3C7FCE9BDEEAD6FFF00FFFF00FFFF00FFFF00FF
        EDA565F3C28AFCF0C4FCE5B5FBD09F2C9622007B00058206067F043DA335FEF2
        D0F0B173FF00FFFF00FFFF00FFFF00FFEEAB6DEDA767EFB070F6C990FFD8AC2E
        9823006E006ABF6BFFF0EA48A138A3AF5EFCAF74FF00FFFF00FFFF00FFFF00FF
        F2B479F2B77EF0B277F0AC6FFBB57E7AB46041A6416FBC69FFFFFFF4FEFBBCBB
        79F3AA6BFF00FFFF00FFFF00FFFF00FFF7C292FAC598F8C293F8C090F3BF8AC2
        D5A5FFFFFFD9EED556B1534BAF4BB8BC79F8B075FF00FFFF00FFFF00FFF6C792
        FCD4ADFCD4ACFCD0A9FCD0A9FFD4B55DA94680C780E0F2DE27982400700082B0
        5BFFBD90EEAC6DFF00FFFF00FFF6C792FFEAC4FEE3BCFEE2BAFEE0B8FFE0BAD9
        D9AC0A8209188A16037F0300790077B45DFFCEAAEEAC6DFF00FFFF00FFFADDAB
        FFFBD5FFF4CCFFF3CAFFF0C9FFEFC5FFF2D1B5D5982A96242B99249ACB87B5D1
        95FFE0BAF2B77AFF00FFFF00FFFCEFC4FFFFD8FFFBD3FFFCD4FFFBD3FFFBD4FF
        FCD4FFFFE1FFFFEBFFFFE7FFFFE0FFF8D7FFF4CBF3C086FF00FFFF00FFFEF4CB
        FFFFDDFFFFD9FFFFD9FFFFDAFFFED7FEF6CCF8DAA3F4C07DF4C17FF7D8A3FEF2
        C5FFFFDDF3C991FF00FFFF00FFF4CC96F8DEAFF8DDACF7D8A6F6CF99F3BF80EF
        AC66EB9D4FEB9C4CEB9F55F0AC6EFAC087FCD3A0FAC089FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA354EFAB68F7BC83FABF
        88FABC83FABC83FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFAC088FAC088FAC088FF00FFFF00FF}
      TabOrder = 2
      OnClick = BB_EXCClick
    end
    object BB_CANC: TBitBtn
      Left = 3
      Top = 68
      Width = 83
      Height = 31
      Caption = '&Encerrar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A05710A
        05710A05710AFF00FF00009A00009A00009A00009A00009A00009A00009A0000
        9A00009A00009A00009A05710A45D36C32C35005710AFF00FF00009A0333F60D
        3EFC2551FC496DFD7A95FEB5C4FFF5F8FFFFFFFFFFFFFF00009A05710A59E287
        49D57105710AFF00FF00009A0336FC0D3FFD2652FD4A6FFE7B97FFB8C7FFF8FB
        FFFFFFFFFFFFFF00009A05710A05710A05710A05710AFF00FF00009A00009A00
        009A00009A00009A00009A00009A00009A00009A00009A00009AFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A05710AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        05710A5CE78D40BE6205710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF08750E05710AFF00FFFF00FFFF00FF05710A45D16B4ED9782BA54405710AFF
        00FFFF00FFFF00FFFF00FFFF00FF0C7A142BA44305710AFF00FFFF00FF05710A
        1DA5302DBD4A38C5580A7911FF00FFFF00FFFF00FFFF00FFFF00FF0E7D1746C7
        6B05710AFF00FFFF00FFFF00FF05710A05710A0A7F1222B63828B7410B7B1206
        730B05720B0B7A131D912D48CB7005710AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF05710A077D0E16AD271EB4341BA02E20A43431B94D42CC6505710AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A05710A0D9C1913
        A4221BAC2E1BAC2E05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF05710A05710A05710A05710AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = BB_CANCClick
    end
    object BB_ALTERAR: TBitBtn
      Left = 4
      Top = 39
      Width = 83
      Height = 29
      Caption = '&Alterar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
        8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
        F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
        83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
        A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
        F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
        83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
        6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
        FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
        79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
        A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
        FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
        69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
        7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
        FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
        5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
        F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
        F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
        FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
        CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
        A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
      TabOrder = 4
      OnClick = BB_ALTERARClick
    end
    object BB_COBRANCA: TBitBtn
      Left = 3
      Top = 160
      Width = 83
      Height = 31
      Caption = '&Cobran'#231'a'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE602A
        AE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE60
        2AAE602AAE602AFF00FFDAA039FFD195EAB777E4AE67FFBD60F1AE4FDC9C3EFC
        AA32FFA922FB9F14FB9A05FB9800FB9801FC9900FF9F00AE602AE7AC1DEEC093
        584E44534A41D39D5B866A46433E39BA8338D5902F50433054452F5243305544
        2B624A28F69702AE602AE7AC1DFFD0A0CAA276C09768FBBD6DD69F58B98847ED
        A540E9A142AF7F56C58538E08D12B67937B97B37FE9D02AE602AE7AC1DEDC299
        60554C5C5147D2A2688B704F4F463CB5843F977D922E42DE6D64A1CA8A483047
        D33649CCEB9317AE602AE7AC1DFED1A2BC9B78B3916CFDC47FD3A165A17B4DEF
        AA4DE9A657887394C78D55FEA3179C7469A1745FFE9D01AE602AE7AC1DE9BF97
        63584D5A5149CDA5748A715547413CB386499D8397263EE36E66A5CE904B3148
        D23448CCE3911EAE602AE7AC1DFFD4A5FCC794F5C190FFCF92FEC07DEFB06AFF
        BD61FFB74FE3A45BFCAB3CFFAC24EE9B2CF2981BFF9F00AE602AE7AC1DF5CAA0
        E1DEC0E2E0C1DEDBBCE1DCB9E3DAB1DED5A8E6D39FFFBF5DFCAB3CF3A333F69F
        20F89D13FF9F04AE602AE7AC1DD4AF8C6BD3CA6CD7CE6CD7CE6CD7CF6CD7CF66
        D7D18DE0D9FCC57BCA8D3DB58139AD7A31C18225FFA20BAE602AEFB53EF8C9A2
        D1AC86D1AD86D1AD86D1AC85D1AA7BCFA46EDCAB6BFFBD6AF6AF52FCAF46E79D
        37F3A028FFA716AE602AFF00FFE4A70AEDB339F0B84DEEB64DE9B24DF2BA62F2
        B65AEEB04FEAA945E9A43AE79F31E89B27E6971FD2851AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
      OnClick = BB_COBRANCAClick
    end
    object BB_FINALIZAR: TBitBtn
      Left = 3
      Top = 128
      Width = 83
      Height = 32
      Caption = '&Exportar'
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
      TabOrder = 6
      Visible = False
      OnClick = BB_FINALIZARClick
    end
    object BB_VALORES: TBitBtn
      Left = 4
      Top = 191
      Width = 83
      Height = 31
      Caption = 'Alt.&Valores'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
        8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
        F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
        83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
        A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
        F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
        83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
        6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
        FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
        79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
        A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
        FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
        69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
        7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
        FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
        5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
        F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
        F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
        FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
        CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
        A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
      TabOrder = 7
      OnClick = BB_VALORESClick
    end
    object BB_FECHAR: TBitBtn
      Left = 11
      Top = 228
      Width = 75
      Height = 30
      Caption = '&Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        98403F953A3A8B3435957D7DB0B8B7BDBCBBC0BCBBBBB8B7B6BBBAA487878028
        29812C2C903737FF00FFFF00FFAA5D56C14B4BC54D4DA64041836666AC8A89D9
        C2C0FEF7F2FFFCF8EEF3F0C59F9F7E1918811D1DB141419C3E3FFF00FFA95D56
        BC4A4AC04C4CA54242876062862B2BA45B5AE0D5D3FCFAF7FEFFFCCEA7A67E1A
        1A811E1EAF40409A3E3FFF00FFA95D56BC4A4AC04B4CA54242926A6981232383
        2020BFAAA9EEEBE9FFFFFFD9B2B07E1919801E1EAF40409A3E3FFF00FFA95D56
        BC4A4AC04B4BA441419E7675882F2F7B1D1D908282C9D0CCF8FFFEDEBAB87A18
        187E1C1CAD3F3F9A3E3FFF00FFA95D56BC4A4AC14B4BA94141B27776B17E7D9F
        6C6C957475A78B8AD8BBB8D193938C23238E2727B24242993D3EFF00FFA95D56
        BD4A4BBC4949BC4949BC4849BD4C4CBF4C4CBD4949B84141BA4343BB4646BD4A
        4ABF4B4BC14D4D973C3DFF00FFAA5E57A439379E413DB66C6AC58E8BC99695C9
        9593C99695C98F8EC99291C99593CA9997C68484BF4B4B973B3CFF00FFAA5D56
        9D3533DCBFBCF8F4F4F6F0EFF7F2F0F7F2F0F7F2F0F7F3F2F7F2F0F7F2F0FAFA
        F8D4ACABB44142983C3DFF00FFAA5D569F3735E5CBCAFBFAF8F4EBEAF4EDEBF4
        EDEBF4EDEBF4EDEBF4EDEBF3EDEBFAF7F6D4AAA9B24141983C3DFF00FFAA5D56
        9F3735E5CBC7EBEAEACCC9C7CFCBCBCFCBCBCFCBCBCFCBCBCFCBCBCCC9C9E6E6
        E5D7ABAAB14141983C3DFF00FFAA5D569F3735E5CBC9EFEDEDD4CFCED5D0D0D5
        D0D0D5D0D0D5D0D0D5D0D0D3CFCEE9E9E9D7ABAAB24141983C3DFF00FFAA5D56
        9F3735E3CBC9F2F0EFDCD5D4DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DCD5D5EEED
        EBD5ABA9B24141983C3DFF00FFAA5D569F3735E5CBCAEDEBEACEC9C9CFCCCBCF
        CCCBCFCCCBCFCCCBCFCCCBCCC9C9E7E6E5D8ACABB24141983C3DFF00FFAA5D55
        9F3735E2CAC7FEFAFAF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEF8EFEEFCF8
        F7D4AAA9B24141983C3DFF00FFFF00FF923633BAA3A1C6C9C7C4C0C0C4C0C0C4
        C0C0C4C0C0C4C0C0C4C0C0C4C0C0C6C7C7BC99988C3435FF00FF}
      TabOrder = 8
      Visible = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 565
    Width = 817
    Height = 63
    Color = clNavy
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    object Label3: TLabel
      Left = 506
      Top = 13
      Width = 90
      Height = 17
      Caption = 'Outros Valores'
      FocusControl = DBEdit42
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label45: TLabel
      Left = 400
      Top = 13
      Width = 94
      Height = 17
      Caption = 'Valor Isent N.Tr'
      FocusControl = DBEdit43
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label46: TLabel
      Left = 242
      Top = 13
      Width = 63
      Height = 17
      Caption = 'Valor Icms'
      FocusControl = DBEdit44
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 128
      Top = 13
      Width = 87
      Height = 17
      Caption = 'Base Calc.Icms'
      FocusControl = DBEdit45
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 713
      Top = 13
      Width = 65
      Height = 17
      Caption = 'Valor Total'
      FocusControl = DBEdit46
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label49: TLabel
      Left = 5
      Top = 13
      Width = 117
      Height = 17
      Caption = 'Valor dos Produtos'
      FocusControl = DBEdit46
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label50: TLabel
      Left = 347
      Top = 13
      Width = 51
      Height = 17
      Caption = 'Valor IPI'
      FocusControl = DBEdit44
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label51: TLabel
      Left = 623
      Top = 13
      Width = 63
      Height = 17
      Caption = 'Descontos'
      FocusControl = DBEdit42
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit42: TDBEdit
      Left = 506
      Top = 31
      Width = 84
      Height = 26
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'OUTROS_VALORES'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit43: TDBEdit
      Left = 414
      Top = 31
      Width = 80
      Height = 26
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'VALOR_ISENT_N_TRIBUTADO'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit44: TDBEdit
      Left = 226
      Top = 31
      Width = 79
      Height = 26
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'VALOR_ICMS'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit45: TDBEdit
      Left = 127
      Top = 31
      Width = 97
      Height = 26
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'BASE_CALCULO_ICMS'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit46: TDBEdit
      Left = 696
      Top = 31
      Width = 109
      Height = 22
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'VALOR_TOTAL'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit47: TDBEdit
      Left = 7
      Top = 31
      Width = 115
      Height = 27
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'VALOR_PRODUTOS'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit48: TDBEdit
      Left = 315
      Top = 31
      Width = 83
      Height = 26
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'VALOR_IPI'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit49: TDBEdit
      Left = 602
      Top = 31
      Width = 84
      Height = 26
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      DataField = 'VALOR_DESCONTO'
      DataSource = DM.dsEntradaNF
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
  end
  object P_REPLICAR: TPanel
    Left = -1
    Top = 0
    Width = 819
    Height = 269
    BorderStyle = bsSingle
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 9
    Visible = False
    object Label14: TLabel
      Left = 5
      Top = -7
      Width = 755
      Height = 47
      Caption = 'Selecione a Loja para a Replica da Nota Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 5
      Top = 53
      Width = 118
      Height = 24
      Caption = 'Loja Entrada'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 697
      Top = 53
      Width = 107
      Height = 24
      Caption = 'C'#243'digoLoja'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbText2: TLabel
      Left = 712
      Top = 75
      Width = 80
      Height = 37
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 5
      Top = 75
      Width = 686
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'R_SOCIAL'
      ListField = 'R_SOCIAL'
      ListSource = DM.dsEmpresa
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupComboBox2Click
      OnExit = DBLookupComboBox2Exit
      OnKeyPress = FormKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 1
      Top = 222
      Width = 75
      Height = 41
      Caption = '&Confirmar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
        9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
        034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
        06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A54
        C45CAAE3B010A61B039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
        10AC300DAB2809A41C039E0F3EBC48EEFAEFFFFFFF90DA97049F0D039E0C039F
        0C03A70C024C04FF00FF0357060D822317B6410EA92D05A01341BD4BF3FBF4FF
        FFFFFFFFFFFFFFFF7ED486049F0D039E0C03A50C037B0801420303570617A341
        18B54A11AB344CC158F4FCF6FCFEFCF6FCF7FCFEFCF8FCF8FFFFFF75D17D05A0
        0F03A10C03960A01420306680D21B1511EB75120B54FEBF8EFFFFFFF84D99AB7
        E9C5FFFFFF69CC72DCF4DEFFFFFF7FD48703A00C039F0C014A040874123EBD69
        2ABA5C21B553DEF6E798E1B422B655BAEBCEFFFFFF2CB53735B841F2FBF398DD
        9E03A00C039F0C02520506780E54C57A44C6741CB24E36BD6626B75822B554BB
        EBCCFFFFFF41C05B0CA62721B03913AA2C07A518039D0C01460306780E4CBD69
        83DDA722B6551CB24E22B55422B554BCEBCEFFFFFF46C2670FAA300FAA2E0CA6
        2706A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C22B554BD
        EBCFFFFFFF4CC56F10A9310EA7290BA42009AF1C036B0AFF00FFFF00FF21A336
        56C573C5F0D866CF8C20B45219B14CBFEDD0FFFFFF4CC67513AC3C12AA340FB0
        2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
        BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
        FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
        BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 222
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF00104C001460001872001872001462001150FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0015640015640020980026B800
        27BC0027BC0027BA00209C00166C00166CFF00FFFF00FFFF00FFFF00FFFF00FF
        001874001C880028C00028C20027BC0026B80027BC0027BC0028C00028C2001D
        8A001150FF00FFFF00FFFF00FF001874001F94002CD2002AC80027BC0026B8C0
        C9EDFFFFFF4A66CE0027BA0027BC0028C2001D8A00166CFF00FFFF00FF001874
        002EDE002DD8002ACA0027BC0027BABEC8EDFFFFFF4B67CE0027BA0027BA0027
        BC0028C200166CFF00FF00197A0025B40032F0002DD80028C20027BE0027BABD
        C7EDFFFFFF4A66CE0027BA0027BA0027BA0028C000209C00146000197A002FE0
        0032F0002EDE2043CA082EBE0027BEBDC7EEFFFFFF4A66CE0027BA2244C30E33
        BE0027BE0025B2001460001E900034F80034FA0034FADEE4FC96A9F30031EAB9
        C6F9FFFFFF3C59C94965CEF5F7FCAAB7E80027BC0027BC00166A0021A02552FF
        0B3EFF0034FCEDF1FFFFFFFF89A2FFBCCAFFFFFFFF8093DFE3E7F7FFFFFF93A4
        E20027BE0027BC0018720021A04168FF335DFF0033F45D7EFDF7F9FFFDFDFFF8
        F9FFFDFDFFFAFBFEFFFFFF8A9EE9052FD1002AC80026B80015660021A0335DFF
        819BFF0035FF0032F25477FDF6F8FFFFFFFFFFFFFFFFFFFF92A5EF022FDA002C
        D2002ACA0023AA001566FF00FF0031ECA9BBFF5D7FFF0030E80032F05275FDF2
        F5FFFFFFFFA3B4F6022FDA002CD6002BCE002CD4001E8EFF00FFFF00FF0031EC
        436AFFC7D3FF5B7DFF0034FA0031EE6A88FCBAC8FE1844EC002FE2002EDE002F
        E00029C4001E8EFF00FFFF00FFFF00FF002CD25D7FFFD3DCFF97ADFF3F67FF1F
        4EFF0D3FFF1344FF1344FF0539FF002CD6001D8AFF00FFFF00FFFF00FFFF00FF
        FF00FF335DFF335DFF95ABFFBFCCFFA7B9FF8DA5FF7390FF3962FF002FE0002F
        E0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0030E81747FF2D
        59FF2552FF0034FC0029C6FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object sqlMovEstoqueDincash: TSQLDataSet
    CommandText = 'select'#13#10' *'#13#10'from MOVIMENTACAOESTOQUEDTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 448
    Top = 136
    object sqlMovEstoqueDincashMOVIMENTACAOESTOQUEDTO_ID: TLargeintField
      FieldName = 'MOVIMENTACAOESTOQUEDTO_ID'
      Required = True
    end
    object sqlMovEstoqueDincashCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object sqlMovEstoqueDincashDATAOPER: TStringField
      FieldName = 'DATAOPER'
      Size = 256
    end
    object sqlMovEstoqueDincashDOCRETAG: TStringField
      FieldName = 'DOCRETAG'
      Size = 256
    end
    object sqlMovEstoqueDincashID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object sqlMovEstoqueDincashNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Size = 256
    end
    object sqlMovEstoqueDincashOBSERVA: TStringField
      FieldName = 'OBSERVA'
      Size = 256
    end
    object sqlMovEstoqueDincashSITREG: TStringField
      FieldName = 'SITREG'
      Size = 256
    end
    object sqlMovEstoqueDincashTIPDOC: TStringField
      FieldName = 'TIPDOC'
      Size = 256
    end
    object sqlMovEstoqueDincashTIPOPER: TStringField
      FieldName = 'TIPOPER'
      Size = 256
    end
    object sqlMovEstoqueDincashTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
    end
  end
  object dsplMovEstoqueDincash: TDataSetProvider
    DataSet = sqlMovEstoqueDincash
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 480
    Top = 136
  end
  object cdslMovEstoqueDincash: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplMovEstoqueDincash'
    Left = 512
    Top = 136
    object cdslMovEstoqueDincashMOVIMENTACAOESTOQUEDTO_ID: TLargeintField
      FieldName = 'MOVIMENTACAOESTOQUEDTO_ID'
      Required = True
    end
    object cdslMovEstoqueDincashCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdslMovEstoqueDincashDATAOPER: TStringField
      FieldName = 'DATAOPER'
      Size = 256
    end
    object cdslMovEstoqueDincashDOCRETAG: TStringField
      FieldName = 'DOCRETAG'
      Size = 256
    end
    object cdslMovEstoqueDincashID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdslMovEstoqueDincashNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Size = 256
    end
    object cdslMovEstoqueDincashOBSERVA: TStringField
      FieldName = 'OBSERVA'
      Size = 256
    end
    object cdslMovEstoqueDincashSITREG: TStringField
      FieldName = 'SITREG'
      Size = 256
    end
    object cdslMovEstoqueDincashTIPDOC: TStringField
      FieldName = 'TIPDOC'
      Size = 256
    end
    object cdslMovEstoqueDincashTIPOPER: TStringField
      FieldName = 'TIPOPER'
      Size = 256
    end
    object cdslMovEstoqueDincashTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
    end
  end
  object dslMovEstoqueDincash: TDataSource
    DataSet = cdslMovEstoqueDincash
    Left = 544
    Top = 136
  end
  object sqlItemEstoqueDincash: TSQLDataSet
    CommandText = 'select'#13#10' *'#13#10'from ITEMESTOQUEDTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 456
    Top = 184
    object sqlItemEstoqueDincashITEMESTOQUEDTO_ID: TLargeintField
      FieldName = 'ITEMESTOQUEDTO_ID'
      Required = True
    end
    object sqlItemEstoqueDincashCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object sqlItemEstoqueDincashCODRETAG: TStringField
      FieldName = 'CODRETAG'
      Size = 256
    end
    object sqlItemEstoqueDincashDOCRETAG: TStringField
      FieldName = 'DOCRETAG'
      Size = 256
    end
    object sqlItemEstoqueDincashID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object sqlItemEstoqueDincashPCOPROD: TFloatField
      FieldName = 'PCOPROD'
    end
    object sqlItemEstoqueDincashQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object sqlItemEstoqueDincashQTDPROD: TFloatField
      FieldName = 'QTDPROD'
    end
    object sqlItemEstoqueDincashUNIDMEDI: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object sqlItemEstoqueDincashUNIDREFE: TStringField
      FieldName = 'UNIDREFE'
      Size = 256
    end
  end
  object dspItemEstoqueDincash: TDataSetProvider
    DataSet = sqlItemEstoqueDincash
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 488
    Top = 184
  end
  object cdsItemEstoqueDincash: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemEstoqueDincash'
    Left = 520
    Top = 184
    object cdsItemEstoqueDincashITEMESTOQUEDTO_ID: TLargeintField
      FieldName = 'ITEMESTOQUEDTO_ID'
      Required = True
    end
    object cdsItemEstoqueDincashCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsItemEstoqueDincashCODRETAG: TStringField
      FieldName = 'CODRETAG'
      Size = 256
    end
    object cdsItemEstoqueDincashDOCRETAG: TStringField
      FieldName = 'DOCRETAG'
      Size = 256
    end
    object cdsItemEstoqueDincashID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsItemEstoqueDincashPCOPROD: TFloatField
      FieldName = 'PCOPROD'
    end
    object cdsItemEstoqueDincashQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object cdsItemEstoqueDincashQTDPROD: TFloatField
      FieldName = 'QTDPROD'
    end
    object cdsItemEstoqueDincashUNIDMEDI: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object cdsItemEstoqueDincashUNIDREFE: TStringField
      FieldName = 'UNIDREFE'
      Size = 256
    end
  end
  object dsItemEstoqueDincash: TDataSource
    DataSet = cdsItemEstoqueDincash
    Left = 552
    Top = 184
  end
  object sqlValidacaoDTO: TSQLDataSet
    CommandText = 'SELECT'#13#10'*'#13#10'FROM VALIDACAODTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 456
    Top = 224
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
  object dspValidacaoDTO: TDataSetProvider
    DataSet = sqlValidacaoDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 488
    Top = 224
  end
  object cdsValidacaoDTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValidacaoDTO'
    Left = 520
    Top = 224
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
    Left = 552
    Top = 224
  end
  object spInsertEstoqueDincash: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PE_NR_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_ID_ENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    StoredProcName = 'INSERT_ESTOQUE_DINCAS'
    Left = 456
    Top = 272
  end
  object dspInsertEstoqueDincash: TDataSetProvider
    DataSet = spInsertEstoqueDincash
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 488
    Top = 272
  end
  object cdsInsertEstoqueDincash: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PE_NR_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_ID_ENTRADA'
        ParamType = ptInput
      end>
    ProviderName = 'dspInsertEstoqueDincash'
    Left = 518
    Top = 272
  end
  object dsInsertEstoqueDincash: TDataSource
    DataSet = cdsInsertEstoqueDincash
    Left = 550
    Top = 272
  end
end
