object frmSangria: TfrmSangria
  Left = 355
  Top = 121
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Sangria de Caixa'
  ClientHeight = 408
  ClientWidth = 332
  Color = 15395541
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 332
    Height = 408
    Align = alClient
    Color = 14811135
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 249
      Height = 45
      Caption = 'Sangria de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 93
      Width = 58
      Height = 16
      Caption = 'Esp'#233'cie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 139
      Width = 38
      Height = 16
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 240
      Width = 81
      Height = 20
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 43
      Top = 53
      Width = 65
      Height = 17
      DataField = 'DT_SANGRIA'
      DataSource = DM.dsSangria
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 171
      Top = 53
      Width = 65
      Height = 17
      DataField = 'HR_SANGRIA'
      DataSource = DM.dsSangria
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 43
      Top = 74
      Width = 65
      Height = 17
      DataField = 'CAIXA'
      DataSource = DM.dsSangria
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 50
      Width = 29
      Height = 17
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 131
      Top = 50
      Width = 30
      Height = 17
      Caption = 'Hora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 3
      Top = 70
      Width = 33
      Height = 17
      Caption = 'Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 131
      Top = 74
      Width = 47
      Height = 17
      Caption = 'Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 187
      Top = 78
      Width = 65
      Height = 17
      DataField = 'NOME_USUARIO'
      DataSource = DM.dsSangria
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 190
      Width = 112
      Height = 16
      Caption = 'Tipo Movimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 108
      Width = 321
      Height = 30
      Ctl3D = False
      DataField = 'ID_TIPO_PAGAMENTO'
      DataSource = DM.dsSangria
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ID_PLANO_PAGAMENTO'
      ListField = 'DESCRICAO_PAGAMENTO'
      ListSource = DM.dsPlanoPagamento
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 5
      Top = 156
      Width = 321
      Height = 31
      Ctl3D = False
      DataField = 'VALOR'
      DataSource = DM.dsSangria
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBMemo1: TDBMemo
      Left = 5
      Top = 259
      Width = 321
      Height = 92
      Ctl3D = False
      DataField = 'DESCRICAO'
      DataSource = DM.dsSangria
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object BB_ABRIR: TBitBtn
      Left = 11
      Top = 353
      Width = 88
      Height = 46
      Caption = '&Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000095FFFF0095FFF9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000095FFFF0095FFFFFFFF
        FF000095FFFF0095FFF9FFFFFF000095FFF90095FFFFFFFFFF009C9C9CFF9C9C
        9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF0095FFFF1AFFFFFF00C6FFFF0095
        FFFF1AFFFFFF2AF3F3FF0495FDFF04C5FDFF2AF3F3FF0095FFFF9C9C9CFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0095FFFF5DFFFFFF8CFF
        FFFFB6FFFFFFB6FFFFFF8CFFFFFF5DFFFFFF0095FFFF9C9C9CFF9C9C9CFF9C9C
        9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF0095FFFF00C6
        FFFFCCFFFFFFCCFFFFFF00C6FFFF0095FFFFB0B0B0FF9C9C9CFF000000000085
        D7FF00D2FFFF00C3FFFF0085D7FF0013BFFF1B48E6FF0095FFFF5DFFFFFF8CFF
        FFFFB6FFFFFFB6FFFFFF8CFFFFFF5DFFFFFF0095FFFF00000000000000000085
        D7FF00D8FFFF00C9FFFF0088D7FF0013BFFF0095FFFF1AFFFFFF00C6FFFF0095
        FFFF1AFFFFFF18EFDFFF0094F7FF02C3F7FF1AFFFFE00095FFFF000000000085
        D7FF00DEFFFF00CFFFFF008BD7FF0013BFFF052CE6FF0095FFFF0095FFFF3672
        00FF0095FFFF0493FAFF0B8A0CFF0493FAFF0095FFF700000000000000000085
        D7FF00E5FFFF00D5FFFF008ED7FF0013BFFF0026E6FF0032FFFF0013BFFF3672
        00FF0095FFFF0898FFFF159117FF367200FF0000000000000000000000000085
        D7FF00EBFFFF00DBFFFF0091D7FF0013BFFF0013BFFF0019CCFF0013BFFF3672
        00FF58A75EFF29A02CFF1F9821FF367200FF0000000000000000000000000085
        D7FF40F4FFFF40E8FFFF2099D7FFFFFFFF00FFFFFF00FFFFFF00FFFFFF003672
        00FF5DAD64FF33A837FF29A02BFF367200FF0000000000000000000000000085
        D7FF0085D7FF0085D7FF0085D7FFFFFFFF00FFFFFF0000000000000000003672
        00FF62B26BFF3DAF41FF32A736FF367200FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003672
        00FF49985CFF51A160FF4E9F5EFF367200FF0000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003672
        00FF367200FF367200FF367200FF367200FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 4
      OnClick = BB_ABRIRClick
    end
    object BitBtn1: TBitBtn
      Left = 138
      Top = 353
      Width = 88
      Height = 46
      Caption = 'Cancela&r'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400000099FF0404040004040400040404000404040004040400040404000404
        04000404040004040400040404000000FFFF0404040004040400040404003333
        CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404003333
        CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
        040004040400040404000000FFFF040404000404040004040400040404000404
        04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
        0400040404000000FFFF04040400040404000404040004040400040404000404
        0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
        04000000FFFF000099FF04040400040404000404040004040400040404000404
        040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
        FFFF000099FF0404040004040400040404000404040004040400040404000404
        04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
        99FF040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
        0400040404000404040004040400040404000404040004040400040404000404
        04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
        99FF040404000404040004040400040404000404040004040400040404000404
        040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
        CCFF000099FF0404040004040400040404000404040004040400040404000404
        04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
        04000000CCFF000099FF04040400040404000404040004040400040404000000
        CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
        0400040404000000CCFF000099FF040404000404040004040400040404006666
        99FF0000CCFF666699FF04040400040404000404040004040400040404000404
        04000404040004040400040404000000CCFF0404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400040404000404
        0400040404000404040004040400040404000404040004040400}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object Memo1: TMemo
      Left = 232
      Top = 353
      Width = 310
      Height = 186
      Lines.Strings = (
        'Memo1')
      TabOrder = 6
      Visible = False
    end
    object DBComboBox2: TDBComboBox
      Left = 5
      Top = 205
      Width = 321
      Height = 32
      CharCase = ecUpperCase
      DataField = 'TIPO_MOVIMENTO'
      DataSource = DM.dsSangria
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'AD.SALARIO'
        'AGUA'
        'ALUGUEL'
        'BOLETOS'
        'CONTABILIDADE'
        'CUSTOS-FIXOS'
        'DEPOSITO-CHEQUE-PRE-DATADO'
        'DEPOSITO-FORNECEDOR'
        'DESPESAS'
        'EMPRESTIMO'
        'ENERGIA'
        'ESTACIONAMENTO'
        'FRETES'
        'GASOLINA'
        'IMPOSTOS'
        'INTERNET'
        'MATERIAL ESCRITORIO'
        'MATERIAL LIMPEZA'
        'OUTROS'
        'PRO-LABORE'
        'SALDO SALARIO'
        'TELEFONE FIXO'
        'TELEFONE MOVEL')
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
  end
end
