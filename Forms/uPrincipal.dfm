object frmPrincipal: TfrmPrincipal
  Left = 452
  Top = 63
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerador de Registro Sintegra'
  ClientHeight = 433
  ClientWidth = 534
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
  object Label3: TLabel
    Left = 227
    Top = 3
    Width = 211
    Height = 13
    Caption = 'C'#243'digo de Identifica'#231#227'o do Conv'#234'nio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 286
    Top = 43
    Width = 124
    Height = 13
    Caption = 'Finalidade do Arquivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 3
    Top = 43
    Width = 207
    Height = 13
    Caption = 'Natureza das Opera'#231#245'es Informadas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 3
    Top = 3
    Width = 103
    Height = 13
    Caption = 'Engine de gera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 113
    Top = 3
    Width = 112
    Height = 13
    Caption = 'Vers'#227'o do validador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 416
    Top = 408
    Width = 123
    Height = 25
    Caption = 'Abrir Tab Empresa'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 577
    Top = 128
    Width = 841
    Height = 59
    DataSource = DM.dsEmpresa
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_LOJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CONTATO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INS_EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAX'
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 448
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Data'
    TabOrder = 2
    Visible = False
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 227
    Top = 19
    Width = 304
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 2
    ParentFont = False
    TabOrder = 3
    Text = '3 - Conv'#234'nio 57/95 Alt. 76/03'
    Items.Strings = (
      '1 - Conv'#234'nio 57/95 Vers'#227'o 31/99 Alt. 30/02'
      '2 - Conv'#234'nio 57/95 Vers'#227'o 69/02 Alt. 142/02  '
      '3 - Conv'#234'nio 57/95 Alt. 76/03')
  end
  object ComboBox3: TComboBox
    Left = 286
    Top = 59
    Width = 245
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = '1 - Normal'
    Items.Strings = (
      '1 - Normal'
      '2 - Retifica'#231#227'o Total de Arquivo'
      '5 - Desfazimento de Arquivo')
  end
  object ComboBox2: TComboBox
    Left = 3
    Top = 59
    Width = 282
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 2
    ParentFont = False
    TabOrder = 5
    Text = '3 - Totalidade das opera'#231#245'es do informante'
    Items.Strings = (
      
        '1 - Interestaduais - Somente opera'#231#245'es sujeitas ao regime de Sub' +
        'stitui'#231#227'o Tribut'#225'ria'
      
        '2 - Interestaduais - Opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ri' +
        'a'
      '3 - Totalidade das opera'#231#245'es do informante')
  end
  object GroupBox3: TGroupBox
    Left = 2
    Top = 81
    Width = 527
    Height = 74
    Caption = ' Per'#237'odo '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label7: TLabel
      Left = 9
      Top = 19
      Width = 35
      Height = 13
      Caption = 'Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 127
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 107
      Top = 37
      Width = 9
      Height = 13
      Caption = 'A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 272
      Top = 19
      Width = 89
      Height = 13
      Caption = 'Data Inventario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object MaskEdit1: TMaskEdit
      Left = 10
      Top = 35
      Width = 88
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '01/07/2014'
      OnEnter = MaskEdit1Enter
      OnKeyPress = FormKeyPress
    end
    object MaskEdit2: TMaskEdit
      Left = 127
      Top = 35
      Width = 88
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '31/07/2014'
      OnEnter = MaskEdit2Enter
      OnExit = MaskEdit2Exit
      OnKeyPress = FormKeyPress
    end
    object MaskEdit3: TMaskEdit
      Left = 272
      Top = 36
      Width = 89
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      Visible = False
    end
  end
  object ComboBox4: TComboBox
    Left = 3
    Top = 19
    Width = 102
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 7
    Text = 'VCL'
    Items.Strings = (
      'VCL')
  end
  object ComboBox5: TComboBox
    Left = 113
    Top = 19
    Width = 112
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 8
    Text = '5.2.4'
    Items.Strings = (
      '5.2.3'
      '5.2.4')
  end
  object DBGrid2: TDBGrid
    Left = 577
    Top = 195
    Width = 1345
    Height = 89
    DataSource = dsEntradaNF
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
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
        FieldName = 'NUM_NOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRODUTOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ENTRADA_NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INS_EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMITENTE'
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
        FieldName = 'VALOR_ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ISENT_N_TRIBUTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUTROS_VALORES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQ_ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXPORTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_MUNIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CFOP'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 575
    Top = 290
    Width = 1347
    Height = 99
    DataSource = dsItemEntrada
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_NOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_DESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_CALC_ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQ_ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ITEM_ENTRADA_NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ENTRADA_NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_CALC_ICMS_SUBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_GRUPO_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQ_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end>
  end
  object GroupBox4: TGroupBox
    Left = 4
    Top = 309
    Width = 525
    Height = 84
    Caption = ' Gerar registros '
    TabOrder = 11
    object CheckListBox1: TCheckListBox
      Left = 2
      Top = 15
      Width = 521
      Height = 67
      OnClickCheck = CheckListBox1ClickCheck
      Align = alClient
      Columns = 3
      ItemHeight = 13
      Items.Strings = (
        'Gerar Registros 50'
        'Gerar Registros 60'
        'Gerar Registros 74(Inventario)   ')
      TabOrder = 0
    end
  end
  object DBGrid4: TDBGrid
    Left = 577
    Top = 390
    Width = 1345
    Height = 118
    DataSource = dsReducaoZ
    ReadOnly = True
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REGISTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVI'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMSERIE'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_ORDEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_FISC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONT_INI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONT_FIM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONT_Z'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONT_REI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GTOT_INI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GTOT_FIM'
        Visible = True
      end>
  end
  object DBGrid5: TDBGrid
    Left = 577
    Top = 510
    Width = 449
    Height = 150
    DataSource = ds60A
    ReadOnly = True
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_MOVI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMSERIE'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQUOTA'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDUCAOZDTO_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVI'
        Visible = True
      end>
  end
  object DBGrid6: TDBGrid
    Left = 984
    Top = 519
    Width = 673
    Height = 103
    DataSource = ds60D
    ReadOnly = True
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TP_REG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVIF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVI'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMSERIE'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCUPOM'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQUOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_IMPOSTO'
        Visible = True
      end>
  end
  object DBGrid7: TDBGrid
    Left = 985
    Top = 608
    Width = 665
    Height = 120
    DataSource = ds60I
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TP_REG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVIF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAMOVI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMSERIE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCUPOM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCOVENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQUOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_IMPOSTO'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 159
    Width = 525
    Height = 152
    Caption = 'Registro 10   (Dados do Contribuinte)'
    TabOrder = 16
    object Label2: TLabel
      Left = 4
      Top = 27
      Width = 66
      Height = 13
      Caption = 'Raz'#227'o Social:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 4
      Top = 47
      Width = 43
      Height = 13
      Caption = 'Fantazia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 4
      Top = 71
      Width = 39
      Height = 13
      Caption = 'C.N.P.J:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 281
      Top = 71
      Width = 41
      Height = 13
      Caption = 'Incri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 4
      Top = 97
      Width = 48
      Height = 13
      Caption = 'Municipio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 300
      Top = 97
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 4
      Top = 126
      Width = 65
      Height = 13
      Caption = 'Respons'#225'vel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 292
      Top = 126
      Width = 23
      Height = 13
      Caption = 'CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 80
      Top = 27
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'R_SOCIAL'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 85
      Top = 47
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'FANTASIA'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 80
      Top = 71
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CNPJ'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 327
      Top = 71
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'INS_EST'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 80
      Top = 97
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CIDADE'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 327
      Top = 97
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'UF'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 80
      Top = 126
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CONTATO'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 327
      Top = 126
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CPF_CONTATO'
      DataSource = DM.dsEmpresa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BB_GERAR: TBitBtn
    Left = 8
    Top = 400
    Width = 116
    Height = 28
    Caption = '&Gerar Arquivo'
    Enabled = False
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF0E80AA0E80AA0E80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0E80AA0E80AA0E80AA0E80AA0E80AA0E80AA0E80AA0E80AA0E80AA0E80
      AAFF00FFFF00FFFF00FF0E80AA3B9EC72894BE0E80AAFF00FFFF00FF25414DFF
      00FF204B5BFF00FF225B710E80AA5FADCF64AECF59ABCF0E80AA0E80AA4CA2C6
      5CA4C346A0C50E80AAFF00FFFF00FFFF00FF0E80AA53B5E053B5E01283AD0E80
      AA0E80AA46565D0E80AA607F8B0E80AA33525E0E80AAB4DDF1B4DDF1B4DDF10E
      80AA0E80AAA4D6EEA4D6EEA4D6EE0E80AAFF00FFFF00FFFF00FF0E80AA62BBE2
      62BBE2238FB89DCFE0777F82A5ACAF4B4D4E52879F3B3E4188C5DF0E80AAE3F2
      FAE3F2FAE3F2FA0E80AA0E80AAE6F3FAE6F3FAE6F3FA0E80AAFF00FFFF00FFFF
      00FF0E80AAA5D6EEA5D6EE51A6C8288EB43D40420E80AA202E340E80AA30505E
      0E80AA0E80AAAAD9EFAAD9EFAAD9EF0E80AA0E80AAB2DDF0B2DDF0B2DDF00E80
      AAFF00FFFF00FFFF00FF0E80AADEF0F8C2E1EE3294B80E80AA283F49FF00FF22
      4857FF00FF1F5F77FF00FF0E80AA78C4E678C4E65BB0D40E80AA0E80AA79C3E4
      7FC7E87FC7E80E80AAFF00FFFF00FFFF00FF0E80AA0E80AA0E80AA0E80AAFF00
      FFFF00FFFF00FFFF00FFFF00FF0E80AA0E80AA4CAAD15EB7DF3098C20E80AAFF
      00FFFF00FF1384AD44A7D060BAE2339AC30E80AAFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AA2A90B785C6E378BFDE1C89
      B2FF00FFFF00FFFF00FFFF00FFFF00FF0E80AA3A9BC183C7E55AADCF0E80AAFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AAC9E6F4
      A3D2E60E80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AA2C91
      B7B4DCEEA2D1E60E80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF0E80AAF7FCFE82BED40E80AAFF00FFB78183B78183B78183B78183B78183
      B78183FF00FF0E80AABADBE8F3FAFD0E80AAFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF0E80AAEEF9FC7EBCD30E80AAFF00FFB78183FEECC6F5
      D9ABF3D29AF8DA9AB78183FF00FF0E80AAB7DBE8F0F9FC0E80AAFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AAE2F5FA78BAD20E80AAFF00
      FFB78183FBEACDF2D7B4EECEA0F5D599B78183FF00FF0E80AAAFD8E6E4F5FA0E
      80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AAD7F1F8
      73B8D10E80AAFF00FFB78183FCF0D7F4DDBDF0D4AAF5D69AB78183FF00FF0E80
      AAA6D5E5D9F1F80E80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF0E80AAD2EFF770B8D10E80AAFF00FFBA8E85FEF3E0F5E1C7F2D8B4F6D9A3
      B78183FF00FF0E80AAA1D3E4D2EFF70E80AAFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF0E80AAD2EFF770B8D10E80AAFF00FFBA8E85FFF7EBF7
      E6D0F4DCBDF8DDADB78183FF00FF0E80AAA1D3E4D2EFF70E80AAFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AAD2EFF770B8D10E80AAFF00
      FFCB9A82FFFCF6F8EAD9F5E0C6FAE2B7B78183FF00FF0E80AAA1D3E4D2EFF70E
      80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E80AA0E80AA
      70B8D10E80AAFF00FFDCA887FFFFFFFBEFE3F7E4D0FEE7C2B78183FF00FF0E80
      AAA1D3E40E80AA0E80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0E80AA0E80AAFF00FFDCA887FFFFFFFDF4EDFCEEDBF1E2C7
      B78183FF00FF0E80AA0E80AAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE3B18EFFFFFFFF
      FEFBF7E9DDCFB1A0B78183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFE3B18EFFFFFFFFFFFFB8857AB8857ABF8472FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFB8857ACE8E5DDE9F63FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDBD92FCFCFCFFFFFFB8857AC28568
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DC
      A887B8857AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 17
    OnClick = BB_GERARClick
  end
  object P_GERAR_ARQUIVO: TPanel
    Left = 40
    Top = 192
    Width = 473
    Height = 57
    BevelOuter = bvNone
    Caption = 'Aguarde....Gerando Arquivo......'
    Color = 15784647
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 18
    Visible = False
  end
  object P_AGUARDE: TPanel
    Left = 39
    Top = 194
    Width = 473
    Height = 57
    BevelOuter = bvNone
    Caption = 'Aguarde....Carregando Dados......'
    Color = 15784647
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 19
    Visible = False
  end
  object DBGrid8: TDBGrid
    Left = 224
    Top = 576
    Width = 569
    Height = 120
    DataSource = ds74
    TabOrder = 20
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_POSSE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INS_EST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end>
  end
  object ACBrSintegra: TACBrSintegra
    VersaoValidador = vv524
    Informa88SME = False
    Informa88SMS = False
    Informa88EAN = False
    Informa88C = False
    InformaSapiMG = False
    Left = 448
    Top = 236
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'c:\'
    Filter = 'Arquivos Texto|*.txt'
    InitialDir = 'c:\'
    Options = [ofHideReadOnly]
    Title = 'Salvar Arquivo'
    Left = 480
    Top = 236
  end
  object qEntradaNF: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' NF.ID_ENTRADA_NF,'#13#10' NF.ID_FORNECEDOR,'#13#10' NF.TIPO,'#13#10' NF.C' +
      'NPJ,'#13#10' NF.INSC,'#13#10' NF.DATA_EMI,'#13#10' NF.DATA_REC,'#13#10' NF.UF,'#13#10' NF.MODE' +
      'LO,'#13#10' NF.SERIE,'#13#10' NF.NUM_NOTA,'#13#10' NF.CFOP,'#13#10' NF.EMITENTE,'#13#10' NF.VA' +
      'LOR_TOTAL,'#13#10' NF.BASE_CALCULO_ICMS,'#13#10' NF.VALOR_ICMS,'#13#10' NF.VALOR_I' +
      'SENT_N_TRIBUTADO,'#13#10' NF.OUTROS_VALORES,'#13#10' NF.ALIQ_ICMS,'#13#10' NF.SITU' +
      'ACAO,'#13#10' NF.VALOR_PRODUTOS,'#13#10' NF.VALOR_IPI,'#13#10' NF.EXPORTADO,'#13#10' F.N' +
      'OME,'#13#10' F.CNPJ,'#13#10' F.INS_EST,'#13#10' F.CODIGO_MUNIC,'#13#10' M.UF, '#13#10' M.NOME ' +
      'AS CIDADE,'#13#10' CF.CFNOME AS DES_CFOP'#13#10'FROM TB_ENTRADA_NF NF'#13#10'LEFT ' +
      'OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = NF.ID_FORNECEDO' +
      'R)'#13#10'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIG' +
      'O_MUNIC)'#13#10'LEFT OUTER JOIN TB_CFOP CF ON (CF.CFCOD = NF.CFOP)'#13#10'WH' +
      'ERE NF.DATA_REC BETWEEN :DT_INI AND :DT_FIN'#13#10'AND NF.ID_FORNECEDO' +
      'R > 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 168
    Top = 208
    object qEntradaNFID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
      Required = True
    end
    object qEntradaNFID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qEntradaNFTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object qEntradaNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qEntradaNFINSC: TStringField
      FieldName = 'INSC'
      Size = 14
    end
    object qEntradaNFDATA_EMI: TDateField
      FieldName = 'DATA_EMI'
    end
    object qEntradaNFDATA_REC: TDateField
      FieldName = 'DATA_REC'
    end
    object qEntradaNFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qEntradaNFMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qEntradaNFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qEntradaNFNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object qEntradaNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qEntradaNFEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object qEntradaNFVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object qEntradaNFBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_ISENT_N_TRIBUTADO: TFMTBCDField
      FieldName = 'VALOR_ISENT_N_TRIBUTADO'
      Precision = 18
      Size = 3
    end
    object qEntradaNFOUTROS_VALORES: TFMTBCDField
      FieldName = 'OUTROS_VALORES'
      Precision = 18
      Size = 3
    end
    object qEntradaNFALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object qEntradaNFVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object qEntradaNFEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object qEntradaNFNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qEntradaNFCNPJ_1: TStringField
      FieldName = 'CNPJ_1'
      Size = 18
    end
    object qEntradaNFINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object qEntradaNFCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qEntradaNFUF_1: TStringField
      FieldName = 'UF_1'
      Size = 2
    end
    object qEntradaNFCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object qEntradaNFDES_CFOP: TStringField
      FieldName = 'DES_CFOP'
      Size = 500
    end
  end
  object dspEntradaNF: TDataSetProvider
    DataSet = qEntradaNF
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 200
    Top = 208
  end
  object cdsEntradaNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspEntradaNF'
    Left = 232
    Top = 208
    object cdsEntradaNFID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
      Required = True
    end
    object cdsEntradaNFID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsEntradaNFTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object cdsEntradaNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsEntradaNFINSC: TStringField
      FieldName = 'INSC'
      Size = 14
    end
    object cdsEntradaNFDATA_EMI: TDateField
      FieldName = 'DATA_EMI'
    end
    object cdsEntradaNFDATA_REC: TDateField
      FieldName = 'DATA_REC'
    end
    object cdsEntradaNFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEntradaNFMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsEntradaNFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEntradaNFNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object cdsEntradaNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsEntradaNFEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object cdsEntradaNFVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_ISENT_N_TRIBUTADO: TFMTBCDField
      FieldName = 'VALOR_ISENT_N_TRIBUTADO'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFOUTROS_VALORES: TFMTBCDField
      FieldName = 'OUTROS_VALORES'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object cdsEntradaNFVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object cdsEntradaNFNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsEntradaNFCNPJ_1: TStringField
      FieldName = 'CNPJ_1'
      Size = 18
    end
    object cdsEntradaNFINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object cdsEntradaNFCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsEntradaNFUF_1: TStringField
      FieldName = 'UF_1'
      Size = 2
    end
    object cdsEntradaNFCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object cdsEntradaNFDES_CFOP: TStringField
      FieldName = 'DES_CFOP'
      Size = 500
    end
  end
  object dsEntradaNF: TDataSource
    DataSet = cdsEntradaNF
    Left = 264
    Top = 208
  end
  object qItemEntrada: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' E.ID_ITEM_ENTRADA_NF,'#13#10' E.ID_FORNECEDOR,'#13#10' E.ID_ENTRADA' +
      '_NF,'#13#10' E.ITEM,'#13#10' E.TIPO,'#13#10' E.CNPJ,'#13#10' E.MODELO,'#13#10' E.SERIE,'#13#10' E.NU' +
      'M_NOTA,'#13#10' E.CFOP,'#13#10' E.CST,'#13#10' E.CODIGO_PRODUTO,'#13#10' E.QUANTIDADE,'#13#10 +
      ' E.VALOR_TOTAL,'#13#10' E.VALOR_DESC,'#13#10' E.BASE_CALC_ICMS,'#13#10' E.BASE_CAL' +
      'C_ICMS_SUBS,'#13#10' E.VALOR_IPI,'#13#10' E.ALIQ_ICMS,'#13#10' E.ID_PRODUTO,'#13#10' E.I' +
      'D_GRUPO_PRODUTO,'#13#10' E.ALIQ_IPI,'#13#10' E.VALOR_UNI,'#13#10' p.CD_BARRA,'#13#10' p.' +
      'DESCRICAO,'#13#10' p.UNIDADE,'#13#10' P.NCM,'#13#10' NF.CFOP AS CFOP_NOTA'#13#10'FROM TB' +
      '_ITEM_ENTRADA_NF E'#13#10'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FOR' +
      'NECEDOR = E.ID_FORNECEDOR)'#13#10'LEFT OUTER JOIN TB_ENTRADA_NF NF ON ' +
      '(NF.ID_ENTRADA_NF = E.ID_ENTRADA_NF)'#13#10'LEFT OUTER JOIN TB_CST T O' +
      'N (T.COD_CST = E.CST)'#13#10'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRO' +
      'DUTO = E.ID_PRODUTO AND P.ID_GRUPO_PRODUTO = E.ID_GRUPO_PRODUTO)' +
      #13#10'WHERE E.ID_ENTRADA_NF = :ID_ENTRADA'#13#10'ORDER BY E.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 144
    Top = 296
    object qItemEntradaID_ITEM_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ITEM_ENTRADA_NF'
      Required = True
    end
    object qItemEntradaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qItemEntradaID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
    end
    object qItemEntradaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemEntradaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object qItemEntradaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qItemEntradaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qItemEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qItemEntradaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object qItemEntradaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qItemEntradaCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object qItemEntradaCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 14
    end
    object qItemEntradaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 18
      Size = 3
    end
    object qItemEntradaBASE_CALC_ICMS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS'
      Precision = 18
      Size = 3
    end
    object qItemEntradaBASE_CALC_ICMS_SUBS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBS'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object qItemEntradaALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object qItemEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemEntradaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemEntradaALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Precision = 18
      Size = 3
    end
    object qItemEntradaCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object qItemEntradaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qItemEntradaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qItemEntradaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qItemEntradaCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Size = 4
    end
  end
  object dspItemEntrada: TDataSetProvider
    DataSet = qItemEntrada
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 176
    Top = 296
  end
  object cdsItemEntrada: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ENTRADA_NF'
    MasterFields = 'ID_ENTRADA_NF'
    MasterSource = dsEntradaNF
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ENTRADA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemEntrada'
    Left = 208
    Top = 296
    object cdsItemEntradaID_ITEM_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ITEM_ENTRADA_NF'
      Required = True
    end
    object cdsItemEntradaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsItemEntradaID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
    end
    object cdsItemEntradaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsItemEntradaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object cdsItemEntradaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsItemEntradaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsItemEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsItemEntradaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object cdsItemEntradaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsItemEntradaCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object cdsItemEntradaCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 14
    end
    object cdsItemEntradaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaBASE_CALC_ICMS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaBASE_CALC_ICMS_SUBS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBS'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemEntradaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemEntradaALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsItemEntradaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsItemEntradaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsItemEntradaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsItemEntradaCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Size = 4
    end
  end
  object dsItemEntrada: TDataSource
    DataSet = cdsItemEntrada
    Left = 240
    Top = 296
  end
  object qReducaoZ: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#39'60M'#39'AS REGISTRO,'#13#10'R.DATAMOVI,'#13#10'R.NUMSERIE,'#13#10#39'001'#39' AS N_' +
      'ORDEM,'#13#10#39'2D'#39' AS COD_FISC,'#13#10'R.CONT_INI,'#13#10'R.CONT_FIM,'#13#10'R.CONT_Z,'#13#10 +
      'R.CONT_REI,'#13#10'R.GTOT_INI,'#13#10'(R.GTOT_FIM-R.GTOT_INI)AS TOTAL_VENDA,' +
      #13#10'R.GTOT_FIM,'#13#10'R.DT_MOVI'#13#10'FROM REDUCAOZDTO R'#13#10'WHERE R.DT_MOVI BE' +
      'TWEEN :DT_INI AND :DT_FIM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM_FISCAL.qConexaoFiscal
    Left = 144
    Top = 352
    object qReducaoZREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qReducaoZDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qReducaoZNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qReducaoZN_ORDEM: TStringField
      FieldName = 'N_ORDEM'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qReducaoZCOD_FISC: TStringField
      FieldName = 'COD_FISC'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qReducaoZCONT_INI: TFloatField
      FieldName = 'CONT_INI'
    end
    object qReducaoZCONT_FIM: TFloatField
      FieldName = 'CONT_FIM'
    end
    object qReducaoZCONT_Z: TFloatField
      FieldName = 'CONT_Z'
    end
    object qReducaoZCONT_REI: TFloatField
      FieldName = 'CONT_REI'
    end
    object qReducaoZGTOT_INI: TFloatField
      FieldName = 'GTOT_INI'
    end
    object qReducaoZTOTAL_VENDA: TFloatField
      FieldName = 'TOTAL_VENDA'
    end
    object qReducaoZGTOT_FIM: TFloatField
      FieldName = 'GTOT_FIM'
    end
    object qReducaoZDT_MOVI: TDateField
      FieldName = 'DT_MOVI'
    end
  end
  object dspReducaoZ: TDataSetProvider
    DataSet = qReducaoZ
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 176
    Top = 352
  end
  object cdsReducaoZ: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspReducaoZ'
    Left = 208
    Top = 352
    object cdsReducaoZREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsReducaoZDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsReducaoZNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsReducaoZN_ORDEM: TStringField
      FieldName = 'N_ORDEM'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsReducaoZCOD_FISC: TStringField
      FieldName = 'COD_FISC'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsReducaoZCONT_INI: TFloatField
      FieldName = 'CONT_INI'
    end
    object cdsReducaoZCONT_FIM: TFloatField
      FieldName = 'CONT_FIM'
    end
    object cdsReducaoZCONT_Z: TFloatField
      FieldName = 'CONT_Z'
    end
    object cdsReducaoZCONT_REI: TFloatField
      FieldName = 'CONT_REI'
    end
    object cdsReducaoZGTOT_INI: TFloatField
      FieldName = 'GTOT_INI'
    end
    object cdsReducaoZTOTAL_VENDA: TFloatField
      FieldName = 'TOTAL_VENDA'
    end
    object cdsReducaoZGTOT_FIM: TFloatField
      FieldName = 'GTOT_FIM'
    end
    object cdsReducaoZDT_MOVI: TDateField
      FieldName = 'DT_MOVI'
    end
  end
  object dsReducaoZ: TDataSource
    DataSet = cdsReducaoZ
    Left = 240
    Top = 352
  end
  object q60A: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' A.ID,'#13#10' A.REDUCAOZDTO_ID,'#13#10' A.VALOR,'#13#10' A.DT_MOVI,'#13#10' A.N' +
      'UMSERIE,'#13#10' A.ALIQUOTA,'#13#10' A.DATAMOVI'#13#10'FROM TB_60A A'#13#10'WHERE A.DT_M' +
      'OVI = :DT_MOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    SQLConnection = DM_FISCAL.qConexaoFiscal
    Left = 144
    Top = 384
    object q60AID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q60AREDUCAOZDTO_ID: TLargeintField
      FieldName = 'REDUCAOZDTO_ID'
    end
    object q60AVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object q60ADT_MOVI: TDateField
      FieldName = 'DT_MOVI'
    end
    object q60ANUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object q60AALIQUOTA: TStringField
      FieldName = 'ALIQUOTA'
      Size = 4
    end
    object q60ADATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
  end
  object dsp60A: TDataSetProvider
    DataSet = q60A
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 176
    Top = 384
  end
  object cds60A: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DT_MOVI'
    MasterFields = 'DT_MOVI'
    MasterSource = dsReducaoZ
    PacketRecords = 0
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp60A'
    Left = 208
    Top = 384
    object cds60AID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds60AREDUCAOZDTO_ID: TLargeintField
      FieldName = 'REDUCAOZDTO_ID'
    end
    object cds60AVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cds60ADT_MOVI: TDateField
      FieldName = 'DT_MOVI'
    end
    object cds60ANUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cds60AALIQUOTA: TStringField
      FieldName = 'ALIQUOTA'
      Size = 4
    end
    object cds60ADATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
  end
  object ds60A: TDataSource
    DataSet = cds60A
    Left = 240
    Top = 384
  end
  object q60D: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#39'60D'#39' AS TP_REG,'#13#10'I.DATAMOVIF,'#13#10'I.DATAMOVI,'#13#10'I.NUMSERIE,' +
      #13#10'I.NUMCUPOM,'#13#10'I.ITEM,'#13#10'P.CD_BARRA,'#13#10'P.DESCRICAO,'#13#10'P.UNIDADE,'#13#10'P' +
      '.NCM,'#13#10'SUM(I.QTDVENDA) AS QTD_VENDA,'#13#10'SUM(I.PCOVENDA * I.QTDVEND' +
      'A)AS VL_VENDA,'#13#10'SUM(I.PCOVENDA * I.QTDVENDA)AS BASE_ICMS,'#13#10'I.ALI' +
      'QUOTA,'#13#10'SUM(I.PCOVENDA * I.QTDVENDA)*(I.ALIQUOTA)/100 AS TOTAL_I' +
      'MPOSTO'#13#10'FROM TB_ITEMVENDADTO I'#13#10'LEFT OUTER JOIN TB_PRODUTO P ON(' +
      'P.ID_PRODUTO = I.ID_PRODUTO AND P.ID_GRUPO_PRODUTO = I.ID_GRUPO_' +
      'PRODUTO)'#13#10'WHERE I.DATAMOVIF =:DT_MOV'#13#10'AND I.CANCELADO ='#39'N'#39#13#10'GROU' +
      'P BY'#13#10'I.DATAMOVIF,'#13#10'I.DATAMOVI,'#13#10'I.NUMSERIE,'#13#10'I.NUMCUPOM,'#13#10'I.ITE' +
      'M,'#13#10'P.CD_BARRA,'#13#10'P.DESCRICAO,'#13#10'P.UNIDADE,'#13#10'P.NCM,'#13#10'I.ALIQUOTA'#13#10'O' +
      'RDER BY I.NUMCUPOM, I.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 144
    Top = 416
    object q60DTP_REG: TStringField
      FieldName = 'TP_REG'
      Required = True
      FixedChar = True
      Size = 3
    end
    object q60DDATAMOVIF: TDateField
      FieldName = 'DATAMOVIF'
    end
    object q60DDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object q60DNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object q60DNUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object q60DITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object q60DCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object q60DDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object q60DUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object q60DNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object q60DQTD_VENDA: TFloatField
      FieldName = 'QTD_VENDA'
    end
    object q60DVL_VENDA: TFloatField
      FieldName = 'VL_VENDA'
    end
    object q60DBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object q60DALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object q60DTOTAL_IMPOSTO: TFloatField
      FieldName = 'TOTAL_IMPOSTO'
    end
  end
  object dsp60D: TDataSetProvider
    DataSet = q60D
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 176
    Top = 416
  end
  object cds60D: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DATAMOVIF'
    MasterFields = 'DT_MOVI'
    MasterSource = dsReducaoZ
    PacketRecords = 0
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp60D'
    Left = 208
    Top = 416
    object cds60DTP_REG: TStringField
      FieldName = 'TP_REG'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds60DDATAMOVIF: TDateField
      FieldName = 'DATAMOVIF'
    end
    object cds60DDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cds60DNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cds60DNUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object cds60DITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cds60DCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cds60DDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cds60DUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cds60DNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cds60DQTD_VENDA: TFloatField
      FieldName = 'QTD_VENDA'
    end
    object cds60DVL_VENDA: TFloatField
      FieldName = 'VL_VENDA'
    end
    object cds60DBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cds60DALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object cds60DTOTAL_IMPOSTO: TFloatField
      FieldName = 'TOTAL_IMPOSTO'
    end
  end
  object ds60D: TDataSource
    DataSet = cds60D
    Left = 240
    Top = 416
  end
  object q60I: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#39'60I'#39' AS TP_REG,'#13#10'I.DATAMOVIF,'#13#10'I.DATAMOVI,'#13#10'I.NUMSERIE,' +
      #13#10#39'2D'#39' AS MODELO,'#13#10'I.NUMCUPOM,'#13#10'I.ITEM,'#13#10'P.CD_BARRA,'#13#10'P.DESCRICA' +
      'O,'#13#10'SUM(I.QTDVENDA) AS QTD_VENDA,'#13#10'SUM(I.PCOVENDA * I.QTDVENDA)A' +
      'S VL_VENDA,'#13#10'I.PCOVENDA,'#13#10'SUM(I.PCOVENDA * I.QTDVENDA)AS BASE_IC' +
      'MS,'#13#10'I.ALIQUOTA,'#13#10'SUM(I.PCOVENDA * I.QTDVENDA)*(I.ALIQUOTA)/100 ' +
      'AS TOTAL_IMPOSTO'#13#10'FROM TB_ITEMVENDADTO I'#13#10'LEFT OUTER JOIN TB_PRO' +
      'DUTO P ON(P.ID_PRODUTO = I.ID_PRODUTO AND P.ID_GRUPO_PRODUTO = I' +
      '.ID_GRUPO_PRODUTO)'#13#10'WHERE I.DATAMOVIF = :DT_MOV'#13#10'AND I.CANCELADO' +
      ' ='#39'N'#39#13#10'GROUP BY'#13#10'I.DATAMOVIF,'#13#10'I.DATAMOVI,'#13#10'I.NUMSERIE,'#13#10'I.NUMCU' +
      'POM,'#13#10'I.ITEM,'#13#10'P.CD_BARRA,'#13#10'P.DESCRICAO,'#13#10'I.PCOVENDA,'#13#10'I.ALIQUOT' +
      'A'#13#10'ORDER BY I.NUMCUPOM, I.ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 280
    Top = 384
    object q60ITP_REG: TStringField
      FieldName = 'TP_REG'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object q60IDATAMOVIF: TDateField
      FieldName = 'DATAMOVIF'
      ReadOnly = True
    end
    object q60IDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      ReadOnly = True
      Size = 256
    end
    object q60INUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      ReadOnly = True
      Size = 256
    end
    object q60IMODELO: TStringField
      FieldName = 'MODELO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object q60INUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
      ReadOnly = True
    end
    object q60IITEM: TIntegerField
      FieldName = 'ITEM'
      ReadOnly = True
    end
    object q60ICD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ReadOnly = True
      Size = 13
    end
    object q60IDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 50
    end
    object q60IQTD_VENDA: TFloatField
      FieldName = 'QTD_VENDA'
      ReadOnly = True
    end
    object q60IVL_VENDA: TFloatField
      FieldName = 'VL_VENDA'
      ReadOnly = True
    end
    object q60IPCOVENDA: TFloatField
      FieldName = 'PCOVENDA'
      ReadOnly = True
    end
    object q60IBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ReadOnly = True
    end
    object q60IALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      ReadOnly = True
    end
    object q60ITOTAL_IMPOSTO: TFloatField
      FieldName = 'TOTAL_IMPOSTO'
      ReadOnly = True
    end
  end
  object dsp60I: TDataSetProvider
    DataSet = q60I
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 312
    Top = 384
  end
  object cds60I: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DATAMOVIF'
    MasterFields = 'DT_MOVI'
    MasterSource = dsReducaoZ
    PacketRecords = 0
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp60I'
    Left = 344
    Top = 384
    object cds60ITP_REG: TStringField
      FieldName = 'TP_REG'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds60IDATAMOVIF: TDateField
      FieldName = 'DATAMOVIF'
      ReadOnly = True
      EditMask = '##/##/####'
    end
    object cds60IDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      ReadOnly = True
      Size = 256
    end
    object cds60INUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      ReadOnly = True
      Size = 256
    end
    object cds60IMODELO: TStringField
      FieldName = 'MODELO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object cds60INUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
      ReadOnly = True
    end
    object cds60IITEM: TIntegerField
      FieldName = 'ITEM'
      ReadOnly = True
    end
    object cds60ICD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ReadOnly = True
      Size = 13
    end
    object cds60IDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 50
    end
    object cds60IQTD_VENDA: TFloatField
      FieldName = 'QTD_VENDA'
      ReadOnly = True
    end
    object cds60IVL_VENDA: TFloatField
      FieldName = 'VL_VENDA'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cds60IPCOVENDA: TFloatField
      FieldName = 'PCOVENDA'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cds60IBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cds60IALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cds60ITOTAL_IMPOSTO: TFloatField
      FieldName = 'TOTAL_IMPOSTO'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
  end
  object ds60I: TDataSource
    DataSet = cds60I
    Left = 376
    Top = 384
  end
  object q74: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'E.ID_PRODUTO,'#13#10'E.ID_GRUPO_PRODUTO,'#13#10'P.CD_BARRA,'#13#10'P.CODIG' +
      'O,'#13#10'P.NCM,'#13#10'P.ESTOQUE,'#13#10'P.VL_CUSTO,'#13#10'SUM(P.ESTOQUE * P.VL_CUSTO)' +
      ' AS TOTAL,'#13#10#39'1'#39' AS COD_POSSE,'#13#10'L.CNPJ,'#13#10'L.INS_EST,'#13#10'L.UF'#13#10'FROM T' +
      'B_ITEM_ENTRADA_NF E'#13#10'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODU' +
      'TO = E.ID_PRODUTO AND P.ID_GRUPO_PRODUTO = E.ID_GRUPO_PRODUTO)'#13#10 +
      'LEFT OUTER JOIN TB_ENTRADA_NF EE ON (EE.ID_ENTRADA_NF = E.ID_ENT' +
      'RADA_NF)'#13#10'LEFT JOIN TB_LOJAS L ON (L.ID_LOJA = 26)'#13#10'WHERE EE.ID_' +
      'ENTRADA_NF > 1'#13#10'AND EE.DATA_REC BETWEEN :DT_INI AND :DT_FIN'#13#10'GRO' +
      'UP BY'#13#10'E.ID_PRODUTO,'#13#10'E.ID_GRUPO_PRODUTO,'#13#10'P.CD_BARRA,'#13#10'P.CODIGO' +
      ','#13#10'P.NCM,'#13#10'P.ESTOQUE,'#13#10'P.VL_CUSTO,'#13#10'L.CNPJ,'#13#10'L.INS_EST,'#13#10'L.UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 332
    Top = 333
    object q74ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object q74ID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object q74CD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object q74CODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object q74NCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object q74ESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object q74VL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Precision = 18
      Size = 2
    end
    object q74TOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object q74COD_POSSE: TStringField
      FieldName = 'COD_POSSE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object q74CNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 14
    end
    object q74INS_EST: TStringField
      FieldName = 'INS_EST'
      ReadOnly = True
      Size = 14
    end
    object q74UF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 2
    end
  end
  object dsp74: TDataSetProvider
    DataSet = q74
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 364
    Top = 333
  end
  object cds74: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dsp74'
    Left = 396
    Top = 333
    object cds74ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cds74ID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cds74CD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cds74CODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object cds74NCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cds74ESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object cds74VL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cds74TOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 5
    end
    object cds74COD_POSSE: TStringField
      FieldName = 'COD_POSSE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds74CNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 14
    end
    object cds74INS_EST: TStringField
      FieldName = 'INS_EST'
      ReadOnly = True
      Size = 14
    end
    object cds74UF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      Size = 2
    end
  end
  object ds74: TDataSource
    DataSet = cds74
    Left = 428
    Top = 333
  end
  object q50: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' E.ID_ENTRADA_NF,'#13#10' E.TIPO,'#13#10' E.CNPJ,'#13#10' E.MODELO,'#13#10' E.SE' +
      'RIE,'#13#10' E.NUM_NOTA,'#13#10' E.ID_FORNECEDOR,'#13#10' F.INS_EST,'#13#10' NF.CFOP,'#13#10' ' +
      'NF.EMITENTE,'#13#10' NF.SITUACAO,'#13#10' SUM(E.VALOR_TOTAL) AS VALOR_TOTAL,' +
      #13#10' SUM(E.VALOR_DESC) AS VALOR_DESC,'#13#10' SUM(E.BASE_CALC_ICMS)AS BA' +
      'SE_CALC_ICMS,'#13#10' SUM(E.BASE_CALC_ICMS_SUBS)AS BASE_CALC_ICMS_SUBS' +
      ','#13#10' SUM(E.BASE_CALC_ICMS * E.ALIQ_ICMS)/100 AS VALOR_ICMS,'#13#10' SUM' +
      '(E.VALOR_IPI)AS VALOR_IPI,'#13#10' NF.VALOR_ISENT_N_TRIBUTADO,'#13#10' NF.OU' +
      'TROS_VALORES,'#13#10' E.ALIQ_ICMS,'#13#10' NF.CFOP AS CFOP_NOTA,'#13#10' M.UF'#13#10'FRO' +
      'M TB_ITEM_ENTRADA_NF E'#13#10'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID' +
      '_FORNECEDOR = E.ID_FORNECEDOR)'#13#10'LEFT OUTER JOIN TB_ENTRADA_NF NF' +
      ' ON (NF.ID_ENTRADA_NF = E.ID_ENTRADA_NF)'#13#10'LEFT OUTER JOIN TB_CST' +
      ' T ON (T.COD_CST = E.CST)'#13#10'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID' +
      '_PRODUTO = E.ID_PRODUTO AND P.ID_GRUPO_PRODUTO = E.ID_GRUPO_PROD' +
      'UTO)'#13#10'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.COD' +
      'IGO_MUNIC)'#13#10'WHERE E.ID_ENTRADA_NF = :ID_ENTRADA'#13#10'GROUP BY'#13#10' E.ID' +
      '_ENTRADA_NF,'#13#10' E.TIPO,'#13#10' E.CNPJ,'#13#10' E.MODELO,'#13#10' E.SERIE,'#13#10' E.NUM_' +
      'NOTA,'#13#10' E.ALIQ_ICMS,'#13#10' E.ID_FORNECEDOR,'#13#10' F.INS_EST,'#13#10' NF.CFOP,'#13 +
      #10' NF.EMITENTE,'#13#10' NF.VALOR_ISENT_N_TRIBUTADO,'#13#10' NF.OUTROS_VALORES' +
      ','#13#10' NF.SITUACAO,'#13#10' M.UF,'#13#10' NF.CFOP,'#13#10' F.CODIGO_MUNIC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 169
    Top = 241
  end
  object dsp50: TDataSetProvider
    DataSet = q50
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 199
    Top = 242
  end
  object cds50: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ENTRADA_NF'
    MasterFields = 'ID_ENTRADA_NF'
    MasterSource = dsEntradaNF
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ENTRADA'
        ParamType = ptInput
      end>
    ProviderName = 'dsp50'
    Left = 231
    Top = 242
    object cds50ID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
    end
    object cds50TIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object cds50CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cds50MODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cds50SERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cds50NUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object cds50ID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cds50INS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object cds50CFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cds50EMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object cds50SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object cds50VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object cds50VALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 18
      Size = 3
    end
    object cds50BASE_CALC_ICMS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS'
      Precision = 18
      Size = 3
    end
    object cds50BASE_CALC_ICMS_SUBS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBS'
      Precision = 18
      Size = 3
    end
    object cds50VALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 6
    end
    object cds50VALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object cds50VALOR_ISENT_N_TRIBUTADO: TFMTBCDField
      FieldName = 'VALOR_ISENT_N_TRIBUTADO'
      Precision = 18
      Size = 3
    end
    object cds50OUTROS_VALORES: TFMTBCDField
      FieldName = 'OUTROS_VALORES'
      Precision = 18
      Size = 3
    end
    object cds50ALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object cds50CFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Size = 4
    end
    object cds50UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object ds50: TDataSource
    DataSet = cds50
    Left = 263
    Top = 242
  end
end
