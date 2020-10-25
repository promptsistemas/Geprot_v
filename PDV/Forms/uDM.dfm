object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 511
  Width = 852
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=127.0.0.1:c:\Sintegra\bdados\dincash.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 32
    Top = 16
  end
  object qDinamica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 144
    Top = 8
  end
  object dspDinamica: TDataSetProvider
    DataSet = qDinamica
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 176
    Top = 8
  end
  object cdsDinamica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDinamica'
    Left = 208
    Top = 8
  end
  object dsDinamica: TDataSource
    DataSet = cdsDinamica
    Left = 240
    Top = 8
  end
  object sds_Tabela: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 312
    Top = 8
  end
  object dsp_Tabela: TDataSetProvider
    DataSet = sds_Tabela
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 344
    Top = 8
  end
  object cds_Tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Tabela'
    Left = 376
    Top = 8
  end
  object ds_Tabela: TDataSource
    DataSet = cds_Tabela
    Left = 408
    Top = 8
  end
  object qEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    L.ID_LOJA,'
      '    L.R_SOCIAL,'
      '    L.FANTASIA,'
      '    L.ENDERECO,'
      '    L.COMPLEMENTO,'
      '    L.NUMERO,'
      '    L.BAIRRO,'
      '    L.CEP,'
      '    L.CONTATO,'
      '    L.CPF_CONTATO,'
      '    L.CNPJ,'
      '    L.INS_EST,'
      '    L.TELEFONE,'
      '    L.FAX,'
      '    L.EMAIL,'
      '    L.DT_CADASTRO,'
      '    L.SITUACAO,'
      '    L.DT_ABERTURA,'
      '    L.CNAE_PRINCIPAL,'
      '    L.CNAE_SECUNDARIO,'
      '    L.CODIGO_MUNIC,'
      '    M.NOME AS CIDADE,'
      '    M.UF'
      'FROM TB_LOJAS L'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = L.CODIGO_MU' +
        'NIC)')
    SQLConnection = Conexao
    Left = 24
    Top = 64
    object qEmpresaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qEmpresaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      Size = 35
    end
    object qEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 35
    end
    object qEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 34
    end
    object qEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object qEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 5
    end
    object qEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object qEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 28
    end
    object qEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qEmpresaCPF_CONTATO: TStringField
      FieldName = 'CPF_CONTATO'
      Size = 14
    end
    object qEmpresaINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object qEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object qEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object qEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qEmpresaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qEmpresaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qEmpresaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qEmpresaCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object qEmpresaCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object qEmpresaCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qEmpresa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspEmpresaGetTableName
    Left = 56
    Top = 64
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 88
    Top = 64
    object cdsEmpresaID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsEmpresaR_SOCIAL: TStringField
      DisplayLabel = 'R. Social'
      FieldName = 'R_SOCIAL'
      Size = 35
    end
    object cdsEmpresaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 35
    end
    object cdsEmpresaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 34
    end
    object cdsEmpresaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object cdsEmpresaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 5
    end
    object cdsEmpresaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 15
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpresaCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 28
    end
    object cdsEmpresaCPF_CONTATO: TStringField
      FieldName = 'CPF_CONTATO'
      Size = 14
    end
    object cdsEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEmpresaINS_EST: TStringField
      DisplayLabel = 'Insc. Est'
      FieldName = 'INS_EST'
      Size = 14
    end
    object cdsEmpresaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 12
    end
    object cdsEmpresaFAX: TStringField
      DisplayLabel = 'Telefone '
      FieldName = 'FAX'
      Size = 10
    end
    object cdsEmpresaEMAIL: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsEmpresaDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsEmpresaSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsEmpresaDT_ABERTURA: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'DT_ABERTURA'
      EditMask = '##/##/####'
    end
    object cdsEmpresaCNAE_PRINCIPAL: TStringField
      DisplayLabel = 'CNAE Principal'
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object cdsEmpresaCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object cdsEmpresaCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsEmpresaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsEmpresaUF: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 120
    Top = 64
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    C.ID_CLIENTE              ,'
      '    C.CODIGO_MUNIC             ,'
      '    C.DT_CADASTRO             ,'
      '    C.TP_CLIENTE              ,'
      '    C.CNPJ_CPF                ,'
      '    C.INSC_RG                 ,'
      '    C.R_SOCIAL                ,'
      '    C.FANTASIA                ,'
      '    C.ENDERECO                ,'
      '    C.COMPLEMENTO             ,'
      '    C.NUMERO                  ,'
      '    C.BAIRRO                  ,'
      '    C.CEP                     ,'
      '    C.DT_NASCIMENTO           ,'
      '    C.SEXO                    ,'
      '    C.ESTADO_CIVIL            ,'
      '    C.VL_LIMITE               ,'
      '    C.EMAIL                   ,'
      '    C.TELEFONE                ,'
      '    C.CELULAR                 ,'
      '    C.WHATSAPP                ,'
      '    C.CONTATO                ,'
      '    C.OBS                     ,'
      '    C.ATIVO                   ,'
      '    C.SPC                     ,'
      '    C.DT_CONSULTA_SPC         ,'
      '    C.VL_ULT_DESC             ,'
      '    C.DT_ULT_COMPRA           ,'
      '    C.VL_ULT_COMPRA           ,'
      '    C.INFORMACOES             ,'
      '    C.BLOQUEIO                ,'
      '    C.PONTO_REF,'
      '    M.uf,'
      '    M.nome AS CIDADE,'
      '    M.ddd'
      'FROM tb_cliente C'
      'JOIN tb_municipios M ON (M.codigo_munic = C.codigo_munic)')
    SQLConnection = Conexao
    Left = 24
    Top = 112
    object qClienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object qClienteCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qClienteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 10
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qClienteINSC_RG: TStringField
      FieldName = 'INSC_RG'
      Size = 14
    end
    object qClienteR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      Size = 50
    end
    object qClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object qClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object qClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qClienteDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object qClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object qClienteESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object qClienteVL_LIMITE: TFMTBCDField
      FieldName = 'VL_LIMITE'
      Precision = 18
      Size = 2
    end
    object qClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qClienteWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object qClienteCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object qClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qClienteSPC: TStringField
      FieldName = 'SPC'
      Size = 1
    end
    object qClienteDT_CONSULTA_SPC: TDateField
      FieldName = 'DT_CONSULTA_SPC'
    end
    object qClienteVL_ULT_DESC: TFMTBCDField
      FieldName = 'VL_ULT_DESC'
      Precision = 18
      Size = 2
    end
    object qClienteDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object qClienteVL_ULT_COMPRA: TFMTBCDField
      FieldName = 'VL_ULT_COMPRA'
      Precision = 18
      Size = 2
    end
    object qClienteINFORMACOES: TStringField
      FieldName = 'INFORMACOES'
      Size = 200
    end
    object qClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object qClientePONTO_REF: TStringField
      FieldName = 'PONTO_REF'
      Size = 50
    end
    object qClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qClienteDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qCliente
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspClienteGetTableName
    Left = 56
    Top = 112
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 88
    Top = 112
    object cdsClienteID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object cdsClienteCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsClienteDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 10
    end
    object cdsClienteCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteINSC_RG: TStringField
      DisplayLabel = 'INSC/RG'
      FieldName = 'INSC_RG'
      Size = 14
    end
    object cdsClienteR_SOCIAL: TStringField
      DisplayLabel = 'Nome/R.Social'
      FieldName = 'R_SOCIAL'
      Size = 50
    end
    object cdsClienteFANTASIA: TStringField
      DisplayLabel = 'Apelido/Fantasia'
      FieldName = 'FANTASIA'
      Size = 50
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsClienteDT_NASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DT_NASCIMENTO'
      EditMask = '##/##/####'
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object cdsClienteESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object cdsClienteVL_LIMITE: TFMTBCDField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'VL_LIMITE'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsClienteWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object cdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object cdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsClienteSPC: TStringField
      FieldName = 'SPC'
      Size = 1
    end
    object cdsClienteDT_CONSULTA_SPC: TDateField
      FieldName = 'DT_CONSULTA_SPC'
      EditMask = '##/##/####'
    end
    object cdsClienteVL_ULT_DESC: TFMTBCDField
      FieldName = 'VL_ULT_DESC'
      Precision = 18
      Size = 2
    end
    object cdsClienteDT_ULT_COMPRA: TDateField
      DisplayLabel = 'Data Ult.Compra'
      FieldName = 'DT_ULT_COMPRA'
      EditMask = '##/##/####'
    end
    object cdsClienteVL_ULT_COMPRA: TFMTBCDField
      DisplayLabel = 'Vl. Ult.Compra'
      FieldName = 'VL_ULT_COMPRA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsClienteINFORMACOES: TStringField
      FieldName = 'INFORMACOES'
      Size = 200
    end
    object cdsClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object cdsClientePONTO_REF: TStringField
      FieldName = 'PONTO_REF'
      Size = 50
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsClienteDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 120
    Top = 112
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PRODUTO,'
      ' P.ID_GRUPO_PRODUTO,'
      ' P.ID_FORNECEDOR,'
      ' P.ID_NCM,'
      ' P.COD_CST,'
      ' P.DESCRICAO,'
      ' P.UNIDADE,'
      ' P.EMBALGEM,'
      ' P.CD_BARRA,'
      ' P.REFERENCIA,'
      ' P.CODIGO,'
      ' P.ESTOQUE,'
      ' P.ESTOQ_MIN,'
      ' P.VL_CUSTO,'
      ' P.VL_VENDA_ATAC,'
      ' P.VL_VENDA_VARE,'
      ' P.VL_MARGEM,'
      ' P.VL_VENDA_NF,'
      ' P.DT_ULT_COMPRA,'
      ' P.DT_ULT_VENDA,'
      ' P.VL_DESC_MAX,'
      ' P.ST,'
      ' P.NCM,'
      ' P.ESTOQUE_1,'
      ' P.EXPORTADO,'
      ' P. ALIQUOTA ,'
      ' P.TIPO_ALIQ,'
      ' P.COD_COFINS,'
      ' P.COD_TRIBUTARIO,'
      ' P.COD_IPI,'
      ' P.ALIQUOTA_PIS,'
      ' P.ALIQUOTA_IPI,'
      ' P.ALIQUOTA_COFINS,'
      ' P.BALANCA,'
      ' P.ATIVO,'
      ' SC.COD_SIT||'#39' - '#39'||SC.DESCRICAO AS SIT_COFINS,'
      ' ST.COD_SIT||'#39' - '#39'||ST.DESCRICAO AS SIT_TRIBUTARIO,'
      ' SI.COD_SIT||'#39' - '#39'||SI.DESCRICAO AS SIT_IPI,'
      ' GP.descricao AS GRUPO,'
      ' F.nome AS FORNECEDOR,'
      ' CS.DESC_CST'
      'FROM'
      ' TB_PRODUTO P'
      
        'LEFT OUTER JOIN tb_grupo_produto GP ON (GP.id_grupo_produto = P.' +
        'id_grupo_produto)'
      
        'LEFT OUTER JOIN tb_fornecedor F ON (F.id_fornecedor = P.id_forne' +
        'cedor)'
      'LEFT OUTER JOIN TB_CST CS ON (CS.COD_CST = P.COD_CST)'
      'LEFT OUTER JOIN TB_SIT_COFINS SC ON (SC.COD_SIT = P.COD_COFINS)'
      
        'LEFT OUTER JOIN TB_SIT_TRIBUTARIA ST ON (ST.COD_SIT = P.COD_TRIB' +
        'UTARIO)'
      'LEFT OUTER JOIN TB_SIT_IPI SI ON (SI.COD_SIT = P.COD_IPI)'
      'LEFT OUTER JOIN TB_ALIQ_IBPT A ON (A.ID_NCM = P.ID_NCM)')
    SQLConnection = Conexao
    Left = 184
    Top = 64
    object qProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qProdutoID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object qProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object qProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qProdutoEMBALGEM: TStringField
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object qProdutoCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object qProdutoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_VENDA_ATAC: TFMTBCDField
      FieldName = 'VL_VENDA_ATAC'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_VENDA_VARE: TFMTBCDField
      FieldName = 'VL_VENDA_VARE'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_MARGEM: TFMTBCDField
      FieldName = 'VL_MARGEM'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_VENDA_NF: TFMTBCDField
      FieldName = 'VL_VENDA_NF'
      Precision = 18
      Size = 2
    end
    object qProdutoDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object qProdutoDT_ULT_VENDA: TDateField
      FieldName = 'DT_ULT_VENDA'
    end
    object qProdutoVL_DESC_MAX: TFMTBCDField
      FieldName = 'VL_DESC_MAX'
      Precision = 18
      Size = 4
    end
    object qProdutoST: TStringField
      FieldName = 'ST'
      Size = 3
    end
    object qProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qProdutoBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object qProdutoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object qProdutoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 30
    end
    object qProdutoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object qProdutoESTOQ_MIN: TFMTBCDField
      FieldName = 'ESTOQ_MIN'
      Precision = 18
      Size = 3
    end
    object qProdutoESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      Precision = 18
      Size = 3
    end
    object qProdutoCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object qProdutoDESC_CST: TStringField
      FieldName = 'DESC_CST'
      ProviderFlags = []
      Size = 255
    end
    object qProdutoCOD_COFINS: TStringField
      FieldName = 'COD_COFINS'
      Size = 3
    end
    object qProdutoCOD_TRIBUTARIO: TStringField
      FieldName = 'COD_TRIBUTARIO'
      Size = 3
    end
    object qProdutoSIT_COFINS: TStringField
      FieldName = 'SIT_COFINS'
      ProviderFlags = []
      Size = 261
    end
    object qProdutoSIT_TRIBUTARIO: TStringField
      FieldName = 'SIT_TRIBUTARIO'
      ProviderFlags = []
      Size = 261
    end
    object qProdutoCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 3
    end
    object qProdutoSIT_IPI: TStringField
      FieldName = 'SIT_IPI'
      ProviderFlags = []
      Size = 261
    end
    object qProdutoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 2
    end
    object qProdutoALIQUOTA_PIS: TFMTBCDField
      FieldName = 'ALIQUOTA_PIS'
      Precision = 9
      Size = 2
    end
    object qProdutoALIQUOTA_IPI: TFMTBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object qProdutoALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'ALIQUOTA_COFINS'
      Precision = 9
      Size = 2
    end
    object qProdutoTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      Size = 1
    end
    object qProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspProdutoGetTableName
    Left = 212
    Top = 64
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 242
    Top = 63
    object cdsProdutoID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsProdutoEMBALGEM: TStringField
      DisplayLabel = 'Embalagem'
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object cdsProdutoCD_BARRA: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsProdutoVL_CUSTO: TFMTBCDField
      DisplayLabel = 'Vl. Custo'
      FieldName = 'VL_CUSTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoREFERENCIA: TStringField
      DisplayLabel = 'C'#243'd.Interno'
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 7
    end
    object cdsProdutoVL_VENDA_ATAC: TFMTBCDField
      DisplayLabel = 'Vl Venda Atacado'
      FieldName = 'VL_VENDA_ATAC'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 2
    end
    object cdsProdutoVL_VENDA_VARE: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VL_VENDA_VARE'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 2
    end
    object cdsProdutoVL_MARGEM: TFMTBCDField
      DisplayLabel = 'Vl Margen Lucro'
      FieldName = 'VL_MARGEM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoVL_VENDA_NF: TFMTBCDField
      DisplayLabel = 'Vl Venda NF'
      FieldName = 'VL_VENDA_NF'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoDT_ULT_COMPRA: TDateField
      DisplayLabel = 'Data Ult Compra'
      FieldName = 'DT_ULT_COMPRA'
      EditMask = '##/##/####'
    end
    object cdsProdutoDT_ULT_VENDA: TDateField
      DisplayLabel = 'Data Ult Venda'
      FieldName = 'DT_ULT_VENDA'
      EditMask = '##/##/####'
    end
    object cdsProdutoID_GRUPO_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd Grupo'
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd Fornecedor'
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object cdsProdutoBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object cdsProdutoGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 30
    end
    object cdsProdutoFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutoVL_DESC_MAX: TFMTBCDField
      DisplayLabel = 'Perc.Desc. M'#225'x.'
      FieldName = 'VL_DESC_MAX'
      DisplayFormat = '###,###0.0000'
      EditFormat = '###,###0.0000'
      Precision = 18
      Size = 2
    end
    object cdsProdutoST: TStringField
      FieldName = 'ST'
      Size = 3
    end
    object cdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsProdutoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object cdsProdutoESTOQUE: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdutoESTOQ_MIN: TFMTBCDField
      DisplayLabel = 'Estoque Min'
      FieldName = 'ESTOQ_MIN'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdutoESTOQUE_1: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE_1'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdutoCOD_CST: TStringField
      DisplayLabel = 'C'#243'd. CST'
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsProdutoCOD_COFINS: TStringField
      FieldName = 'COD_COFINS'
      Size = 3
    end
    object cdsProdutoCOD_TRIBUTARIO: TStringField
      FieldName = 'COD_TRIBUTARIO'
      Size = 3
    end
    object cdsProdutoCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 3
    end
    object cdsProdutoSIT_IPI: TStringField
      FieldName = 'SIT_IPI'
      ProviderFlags = []
      Size = 261
    end
    object cdsProdutoSIT_TRIBUTARIO: TStringField
      FieldName = 'SIT_TRIBUTARIO'
      ProviderFlags = []
      Size = 261
    end
    object cdsProdutoSIT_COFINS: TStringField
      FieldName = 'SIT_COFINS'
      ProviderFlags = []
      Size = 261
    end
    object cdsProdutoDESC_CST: TStringField
      FieldName = 'DESC_CST'
      ProviderFlags = []
      Size = 255
    end
    object cdsProdutoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 9
      Size = 2
    end
    object cdsProdutoALIQUOTA_PIS: TFMTBCDField
      FieldName = 'ALIQUOTA_PIS'
      Precision = 9
      Size = 2
    end
    object cdsProdutoALIQUOTA_IPI: TFMTBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object cdsProdutoALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'ALIQUOTA_COFINS'
      Precision = 9
      Size = 2
    end
    object cdsProdutoTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      Size = 1
    end
    object cdsProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 273
    Top = 64
  end
  object sdsGrupoProduto: TSQLDataSet
    CommandText = 'select * from TB_GRUPO_PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 185
    Top = 113
    object sdsGrupoProdutoID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object sdsGrupoProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sdsGrupoProdutoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
  end
  object dspGrupoProduto: TDataSetProvider
    DataSet = sdsGrupoProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 216
    Top = 113
  end
  object cdsGrupoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoProduto'
    Left = 245
    Top = 113
    object cdsGrupoProdutoID_GRUPO_PRODUTO: TIntegerField
      DisplayLabel = 'Grupo Produto'
      DisplayWidth = 10
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsGrupoProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Grupo'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsGrupoProdutoEXPORTADO: TStringField
      DisplayWidth = 1
      FieldName = 'EXPORTADO'
      Visible = False
      Size = 1
    end
  end
  object dsGrupoProduto: TDataSource
    DataSet = cdsGrupoProduto
    Left = 277
    Top = 113
  end
  object qVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'V.ID_VENDEDOR,'
      'V.ID_LOJA    ,'
      'V.CODIGO_MUNIC,'
      'V.NOME        ,'
      'V.ENDERECO    ,'
      'V.NUMERO      ,'
      'V.BAIRRO      ,'
      'V.COMPLEMENTO ,'
      'V.CEP         ,'
      'V.CPF         ,'
      'V.RG          ,'
      'V.TELEFONE    ,'
      'V.CELULAR     ,'
      'V.WHATSAPP    ,'
      'V.EMAIL       ,'
      'V.DT_NASCIMENTO ,'
      'V.DT_CADASTRO ,'
      'V.ATIVO       ,'
      'V.VL_COMISSAO ,'
      'L.FANTASIA AS NOME_LOJA,'
      'M.NOME AS CIDADE,'
      'M.UF,'
      'M.DDD'
      'FROM TB_VENDEDOR V'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = V.ID_LOJA)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = V.CODIGO_MU' +
        'NIC)')
    SQLConnection = Conexao
    Left = 24
    Top = 160
    object qVendedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object qVendedorID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qVendedorCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qVendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object qVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object qVendedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qVendedorCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qVendedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object qVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qVendedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qVendedorWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object qVendedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object qVendedorDT_NASCIMENTO: TStringField
      FieldName = 'DT_NASCIMENTO'
      FixedChar = True
      Size = 18
    end
    object qVendedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qVendedorATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qVendedorVL_COMISSAO: TFMTBCDField
      FieldName = 'VL_COMISSAO'
      Precision = 18
      Size = 2
    end
    object qVendedorNOME_LOJA: TStringField
      FieldName = 'NOME_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qVendedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qVendedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = qVendedor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspVendedorGetTableName
    Left = 56
    Top = 160
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 88
    Top = 160
    object cdsVendedorID_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object cdsVendedorID_LOJA: TIntegerField
      DisplayLabel = 'Cod.Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsVendedorCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsVendedorNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsVendedorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsVendedorNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsVendedorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsVendedorCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsVendedorCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object cdsVendedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsVendedorTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsVendedorCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsVendedorWHATSAPP: TStringField
      DisplayLabel = 'WhatsApp'
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object cdsVendedorEMAIL: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'EMAIL'
      Size = 70
    end
    object cdsVendedorDT_NASCIMENTO: TStringField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DT_NASCIMENTO'
      EditMask = '##/##/####'
      FixedChar = True
      Size = 18
    end
    object cdsVendedorDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsVendedorATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsVendedorVL_COMISSAO: TFMTBCDField
      DisplayLabel = 'Vl. Comiss'#227'o'
      FieldName = 'VL_COMISSAO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsVendedorNOME_LOJA: TStringField
      DisplayLabel = 'Loja Filiado'
      FieldName = 'NOME_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsVendedorCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsVendedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsVendedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 120
    Top = 160
  end
  object qPlanoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PLANO_PAGAMENTO,'
      ' P.DESCRICAO_PAGAMENTO,'
      ' P.QT_PARCELAS,'
      ' P.QT_DIAS_ENTRE_PARCELAS,'
      ' P.QT_DIAS_PRIMEIRA_PARCELA'
      'FROM TB_PLANO_PAGAMENTO P')
    SQLConnection = Conexao
    Left = 192
    Top = 160
    object qPlanoPagamentoID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
      Required = True
    end
    object qPlanoPagamentoDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qPlanoPagamentoQT_PARCELAS: TIntegerField
      FieldName = 'QT_PARCELAS'
    end
    object qPlanoPagamentoQT_DIAS_ENTRE_PARCELAS: TIntegerField
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object qPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
  end
  object dspPlanoPagamento: TDataSetProvider
    DataSet = qPlanoPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 224
    Top = 160
  end
  object cdsPlanoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoPagamento'
    Left = 256
    Top = 160
    object cdsPlanoPagamentoID_PLANO_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PLANO_PAGAMENTO'
      Required = True
    end
    object cdsPlanoPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Plano de Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsPlanoPagamentoQT_PARCELAS: TIntegerField
      DisplayLabel = 'Quant Parcelas'
      FieldName = 'QT_PARCELAS'
    end
    object cdsPlanoPagamentoQT_DIAS_ENTRE_PARCELAS: TIntegerField
      DisplayLabel = 'Dias Entre Parcelas'
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object cdsPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      DisplayLabel = 'Dias 1'#186' Parcela'
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
  end
  object dsPlanoPagamento: TDataSource
    DataSet = cdsPlanoPagamento
    Left = 288
    Top = 160
  end
  object qFormaPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' F.ID_FORMA_PAGAMENTO,'
      ' F.DESCRICAO_PAGAMENTO'
      'FROM TB_FORMA_PAGAMENTO F')
    SQLConnection = Conexao
    Left = 192
    Top = 207
    object qFormaPagamentoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object qFormaPagamentoDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dspFormaPagamento: TDataSetProvider
    DataSet = qFormaPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 224
    Top = 207
  end
  object cdsFormaPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFormaPagamento'
    Left = 256
    Top = 207
    object cdsFormaPagamentoID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object cdsFormaPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dsFormaPagamento: TDataSource
    DataSet = cdsFormaPagamento
    Left = 288
    Top = 207
  end
  object qMunicipio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' M.codigo_munic,'
      ' M.uf,'
      ' M.nome,'
      ' M.ddd,'
      ' M.populacao,'
      ' M.distancia,'
      ' M.regiao'
      'FROM tb_municipios M')
    SQLConnection = Conexao
    Left = 24
    Top = 208
    object qMunicipioCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qMunicipioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qMunicipioNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object qMunicipioDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object qMunicipioPOPULACAO: TIntegerField
      FieldName = 'POPULACAO'
    end
    object qMunicipioDISTANCIA: TIntegerField
      FieldName = 'DISTANCIA'
    end
    object qMunicipioREGIAO: TStringField
      FieldName = 'REGIAO'
      Size = 50
    end
  end
  object dspMunicipio: TDataSetProvider
    DataSet = qMunicipio
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 56
    Top = 208
  end
  object cdsMunicipio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMunicipio'
    Left = 88
    Top = 208
    object cdsMunicipioCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'd. Municipio'
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsMunicipioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsMunicipioNOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME'
      Size = 35
    end
    object cdsMunicipioDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cdsMunicipioPOPULACAO: TIntegerField
      DisplayLabel = 'Popula'#231#227'o'
      FieldName = 'POPULACAO'
    end
    object cdsMunicipioDISTANCIA: TIntegerField
      FieldName = 'DISTANCIA'
    end
    object cdsMunicipioREGIAO: TStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REGIAO'
      Size = 50
    end
  end
  object dsMunicipio: TDataSource
    DataSet = cdsMunicipio
    Left = 120
    Top = 208
  end
  object qUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' U.ID_USUARIO,'
      ' U.ID_LOJA,'
      ' U.NOME_USUARIO,'
      ' U.SENHA,'
      ' U.NIVEL,'
      ' L.R_SOCIAL'
      'FROM TB_USUARIO U'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = U.ID_LOJA)')
    SQLConnection = Conexao
    Left = 24
    Top = 256
    object qUsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qUsuarioID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qUsuarioNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object qUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object qUsuarioNIVEL: TSmallintField
      FieldName = 'NIVEL'
    end
    object qUsuarioR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = qUsuario
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspUsuarioGetTableName
    Left = 56
    Top = 256
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 88
    Top = 256
    object cdsUsuarioID_USUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object cdsUsuarioID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd. Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsUsuarioNOME_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object cdsUsuarioSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsUsuarioNIVEL: TSmallintField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'NIVEL'
    end
    object cdsUsuarioR_SOCIAL: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 120
    Top = 256
  end
  object qPagamentoPDV: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PG.ID_PAGAMENTO_PDV,'
      ' PG.ID_PDV,'
      ' PG.ID_PLANO_PAGAMENTO,'
      ' PG.ID_FORMA_PAGAMENTO,'
      ' PG.ID_LOJA,'
      ' PG.ID_USUARIO,'
      ' PG.VL_PAGAMENTO,'
      ' PG.VL_RECEBIDO,'
      ' PG.DT_MOV,'
      ' PG.CAIXA,'
      ' L.R_SOCIAL AS LOJA,'
      ' U.NOME_USUARIO,'
      ' PL.DESCRICAO_PAGAMENTO AS PLANO_PAGAMENTO,'
      ' FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO'
      'FROM TB_PAGAMENTO_PDV PG'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = PG.ID_LOJA)'
      'LEFT OUTER JOIN TB_PDV P ON (P.ID_PDV = PG.ID_PDV)'
      'LEFT OUTER JOIN TB_USUARIO U ON (U.ID_USUARIO = PG.ID_USUARIO)'
      
        'LEFT OUTER JOIN TB_PLANO_PAGAMENTO PL ON (PL.ID_PLANO_PAGAMENTO ' +
        '= PG.ID_PLANO_PAGAMENTO)'
      
        'LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP ON (FP.ID_FORMA_PAGAMENTO ' +
        '= PG.ID_FORMA_PAGAMENTO)'
      'WHERE  PG.ID_PDV  = :ID_PDV')
    SQLConnection = Conexao
    Left = 24
    Top = 304
    object qPagamentoPDVID_PAGAMENTO_PDV: TIntegerField
      FieldName = 'ID_PAGAMENTO_PDV'
      Required = True
    end
    object qPagamentoPDVID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qPagamentoPDVID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object qPagamentoPDVID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qPagamentoPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qPagamentoPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qPagamentoPDVVL_PAGAMENTO: TFMTBCDField
      FieldName = 'VL_PAGAMENTO'
      Precision = 18
      Size = 2
    end
    object qPagamentoPDVVL_RECEBIDO: TFMTBCDField
      FieldName = 'VL_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object qPagamentoPDVDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qPagamentoPDVCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qPagamentoPDVLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qPagamentoPDVNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qPagamentoPDVPLANO_PAGAMENTO: TStringField
      FieldName = 'PLANO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qPagamentoPDVFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dspPagamentoPDV: TDataSetProvider
    DataSet = qPagamentoPDV
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspPagamentoPDVGetTableName
    Left = 56
    Top = 304
  end
  object cdsPagamentoPDV: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspPagamentoPDV'
    Left = 88
    Top = 304
    object cdsPagamentoPDVID_PAGAMENTO_PDV: TIntegerField
      FieldName = 'ID_PAGAMENTO_PDV'
      Required = True
    end
    object cdsPagamentoPDVID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsPagamentoPDVID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object cdsPagamentoPDVID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsPagamentoPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsPagamentoPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPagamentoPDVVL_PAGAMENTO: TFMTBCDField
      DisplayLabel = 'Vl. Pagmento'
      FieldName = 'VL_PAGAMENTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoPDVVL_RECEBIDO: TFMTBCDField
      DisplayLabel = 'Vl. Recebido'
      FieldName = 'VL_RECEBIDO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoPDVDT_MOV: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_MOV'
      EditMask = '##/##/####'
    end
    object cdsPagamentoPDVCAIXA: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
    end
    object cdsPagamentoPDVLOJA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsPagamentoPDVNOME_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsPagamentoPDVPLANO_PAGAMENTO: TStringField
      DisplayLabel = 'Plano Pagamento'
      FieldName = 'PLANO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsPagamentoPDVFORMA_PAGAMENTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPagamentoPDV: TDataSource
    DataSet = cdsPagamentoPDV
    Left = 120
    Top = 304
  end
  object qItemPdv: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IP.ID_ITEM_PDV,'
      ' IP.ID_PDV,'
      ' IP.ID_PRODUTO,'
      ' IP.ID_GRUPO_PRODUTO,'
      ' IP.ITEM,'
      ' IP.QUANT,'
      ' IP.VL_UNIT,'
      ' IP.VL_TOTAL,'
      ' IP.ALIQFED,'
      ' IP.ALIQEST,'
      ' IP.ALIQMUN,'
      ' IP.VL_ALIQFED,'
      ' IP.VL_ALIQEST,'
      ' IP.VL_ALIQMUN,'
      ' IP.ICMS,'
      ' P.DESCRICAO,'
      ' P.NCM,'
      ' P.VL_CUSTO,'
      ' P.CODIGO,'
      ' P.CD_BARRA,'
      ' P.REFERENCIA,'
      ' P.UNIDADE,'
      ' P.TIPO_ALIQ,'
      ' P.COD_CST,'
      ' P.ALIQUOTA,'
      ' P.ESTOQUE,'
      ' P.ESTOQUE_1,'
      ' p.NCM'
      'FROM TB_ITEM_PDV IP'
      ' JOIN TB_PDV PD ON (PD.ID_PDV = IP.ID_PDV)'
      
        ' JOIN TB_PRODUTO P ON (P.ID_PRODUTO = IP.ID_PRODUTO AND P.ID_GRU' +
        'PO_PRODUTO = IP.ID_GRUPO_PRODUTO)'
      ' LEFT OUTER JOIN TB_NCM N ON (N.NCM = P.NCM)'
      ''
      'WHERE PD.ID_PDV =:ID_PDV'
      'ORDER BY IP.ITEM')
    SQLConnection = Conexao
    Left = 192
    Top = 304
    object qItemPdvID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object qItemPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qItemPdvID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemPdvID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemPdvITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemPdvCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qItemPdvCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object qItemPdvREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object qItemPdvDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemPdvUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 10
    end
    object qItemPdvTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      ProviderFlags = []
      Size = 1
    end
    object qItemPdvALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      ProviderFlags = []
      Precision = 9
      Size = 2
    end
    object qItemPdvNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object qItemPdvESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qItemPdvQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object qItemPdvALIQFED: TFMTBCDField
      FieldName = 'ALIQFED'
      Precision = 18
      Size = 2
    end
    object qItemPdvALIQEST: TFMTBCDField
      FieldName = 'ALIQEST'
      Precision = 18
      Size = 2
    end
    object qItemPdvALIQMUN: TFMTBCDField
      FieldName = 'ALIQMUN'
      Precision = 18
      Size = 2
    end
    object qItemPdvVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      Precision = 18
      Size = 2
    end
    object qItemPdvVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      Precision = 18
      Size = 2
    end
    object qItemPdvVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      Precision = 18
      Size = 2
    end
    object qItemPdvICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qItemPdvVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qItemPdvCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object qItemPdvESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qItemPdvNCM_1: TStringField
      FieldName = 'NCM_1'
      ProviderFlags = []
      Size = 10
    end
    object qItemPdvVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qItemPdvVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object dspItemPdv: TDataSetProvider
    DataSet = qItemPdv
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspItemPdvGetTableName
    Left = 224
    Top = 304
  end
  object cdsItemPdv: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PDV'
    MasterFields = 'ID_PDV'
    MasterSource = dsPDV
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemPdv'
    Left = 256
    Top = 304
    object cdsItemPdvID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object cdsItemPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsItemPdvID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemPdvID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemPdvITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object cdsItemPdvCD_BARRA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object cdsItemPdvCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsItemPdvREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsItemPdvDESCRICAO: TStringField
      DisplayLabel = 'Descr'#231#227'o do Produto'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemPdvUNIDADE: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemPdvTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      ProviderFlags = []
      Size = 1
    end
    object cdsItemPdvALIQUOTA: TFMTBCDField
      DisplayLabel = 'Aliq'
      FieldName = 'ALIQUOTA'
      ProviderFlags = []
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 9
      Size = 2
    end
    object cdsItemPdvNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemPdvESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cdsItemPdvQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsItemPdvALIQFED: TFMTBCDField
      FieldName = 'ALIQFED'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvALIQEST: TFMTBCDField
      FieldName = 'ALIQEST'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvALIQMUN: TFMTBCDField
      FieldName = 'ALIQMUN'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object cdsItemPdvCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object cdsItemPdvESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cdsItemPdvNCM_1: TStringField
      FieldName = 'NCM_1'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemPdvVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsItemPdv: TDataSource
    DataSet = cdsItemPdv
    Left = 288
    Top = 304
  end
  object qSangria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' S.ID_SANGRIA,'
      ' S.ID_USUARIO,'
      ' S.ID_TIPO_PAGAMENTO,'
      ' S.ID_LOJA,'
      ' S.CAIXA,'
      ' S.DT_SANGRIA,'
      ' S.HR_SANGRIA,'
      ' S.DESCRICAO,'
      ' S.VALOR,'
      ' S.TIPO_MOVIMENTO,'
      ' T.DESCRICAO_PAGAMENTO,'
      ' U.NOME_USUARIO,'
      ' L.R_SOCIAL AS LOJA'
      'FROM TB_SANGRIA S'
      
        'JOIN TB_PLANO_PAGAMENTO T ON (T.ID_PLANO_PAGAMENTO = S.ID_TIPO_P' +
        'AGAMENTO)'
      'JOIN TB_USUARIO U ON (U.ID_USUARIO = S.ID_USUARIO)'
      'JOIN TB_LOJAS L ON (L.ID_LOJA = S.ID_LOJA)')
    SQLConnection = Conexao
    Left = 328
    Top = 112
    object qSangriaID_SANGRIA: TIntegerField
      FieldName = 'ID_SANGRIA'
      Required = True
    end
    object qSangriaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qSangriaID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object qSangriaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qSangriaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qSangriaDT_SANGRIA: TDateField
      FieldName = 'DT_SANGRIA'
    end
    object qSangriaHR_SANGRIA: TTimeField
      FieldName = 'HR_SANGRIA'
    end
    object qSangriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qSangriaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qSangriaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Size = 60
    end
    object qSangriaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qSangriaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qSangriaLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspSangria: TDataSetProvider
    DataSet = qSangria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspSangriaGetTableName
    Left = 360
    Top = 112
  end
  object cdsSangria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSangria'
    Left = 392
    Top = 112
    object cdsSangriaID_SANGRIA: TIntegerField
      FieldName = 'ID_SANGRIA'
      Required = True
    end
    object cdsSangriaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsSangriaID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object cdsSangriaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsSangriaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsSangriaDT_SANGRIA: TDateField
      FieldName = 'DT_SANGRIA'
    end
    object cdsSangriaHR_SANGRIA: TTimeField
      FieldName = 'HR_SANGRIA'
    end
    object cdsSangriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsSangriaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsSangriaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      Size = 60
    end
    object cdsSangriaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsSangriaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsSangriaLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsSangria: TDataSource
    DataSet = cdsSangria
    Left = 424
    Top = 112
  end
  object qSuprimento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' S.ID_SUPRIMENTO,'
      ' S.ID_USUARIO,'
      ' S.ID_LOJA,'
      ' S.CAIXA,'
      ' S.DT_SUPRIMENTO,'
      ' S.HR_SUPRIMENTO,'
      ' S.VALOR'
      'FROM TB_SUPRIMENTO S')
    SQLConnection = Conexao
    Left = 323
    Top = 64
    object qSuprimentoID_SUPRIMENTO: TIntegerField
      FieldName = 'ID_SUPRIMENTO'
      Required = True
    end
    object qSuprimentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qSuprimentoID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qSuprimentoCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qSuprimentoDT_SUPRIMENTO: TDateField
      FieldName = 'DT_SUPRIMENTO'
    end
    object qSuprimentoHR_SUPRIMENTO: TTimeField
      FieldName = 'HR_SUPRIMENTO'
    end
    object qSuprimentoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object dspSuprimento: TDataSetProvider
    DataSet = qSuprimento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 352
    Top = 64
  end
  object cdsSuprimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuprimento'
    Left = 384
    Top = 64
    object cdsSuprimentoID_SUPRIMENTO: TIntegerField
      FieldName = 'ID_SUPRIMENTO'
      Required = True
    end
    object cdsSuprimentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsSuprimentoID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsSuprimentoCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsSuprimentoDT_SUPRIMENTO: TDateField
      FieldName = 'DT_SUPRIMENTO'
    end
    object cdsSuprimentoHR_SUPRIMENTO: TTimeField
      FieldName = 'HR_SUPRIMENTO'
    end
    object cdsSuprimentoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsSuprimento: TDataSource
    DataSet = cdsSuprimento
    Left = 416
    Top = 64
  end
  object dsLojaUsuario: TDataSource
    DataSet = cdsLojaUsuario
    Left = 432
    Top = 208
  end
  object cdsLojaUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLojaUsuario'
    Left = 400
    Top = 208
    object cdsLojaUsuarioID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsLojaUsuarioR_SOCIAL: TStringField
      DisplayLabel = 'R. Social'
      FieldName = 'R_SOCIAL'
      Size = 35
    end
    object cdsLojaUsuarioFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 35
    end
    object cdsLojaUsuarioENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 34
    end
    object cdsLojaUsuarioCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object cdsLojaUsuarioNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 5
    end
    object cdsLojaUsuarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object cdsLojaUsuarioCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsLojaUsuarioCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 28
    end
    object cdsLojaUsuarioCPF_CONTATO: TStringField
      FieldName = 'CPF_CONTATO'
      Size = 14
    end
    object cdsLojaUsuarioCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsLojaUsuarioINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object cdsLojaUsuarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object cdsLojaUsuarioFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object cdsLojaUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsLojaUsuarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsLojaUsuarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsLojaUsuarioDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object cdsLojaUsuarioCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object cdsLojaUsuarioCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object cdsLojaUsuarioCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsLojaUsuarioCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsLojaUsuarioUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspLojaUsuario: TDataSetProvider
    DataSet = qLojaUsuario
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 368
    Top = 208
  end
  object qLojaUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '    L.ID_LOJA,'
      '    L.R_SOCIAL,'
      '    L.FANTASIA,'
      '    L.ENDERECO,'
      '    L.COMPLEMENTO,'
      '    L.NUMERO,'
      '    L.BAIRRO,'
      '    L.CEP,'
      '    L.CONTATO,'
      '    L.CPF_CONTATO,'
      '    L.CNPJ,'
      '    L.INS_EST,'
      '    L.TELEFONE,'
      '    L.FAX,'
      '    L.EMAIL,'
      '    L.DT_CADASTRO,'
      '    L.SITUACAO,'
      '    L.DT_ABERTURA,'
      '    L.CNAE_PRINCIPAL,'
      '    L.CNAE_SECUNDARIO,'
      '    L.CODIGO_MUNIC,'
      '    M.NOME AS CIDADE,'
      '    M.UF'
      'FROM TB_LOJAS L'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = L.CODIGO_MU' +
        'NIC)'
      'WHERE L.ID_LOJA = :ID_LOJA')
    SQLConnection = Conexao
    Left = 336
    Top = 208
    object qLojaUsuarioID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qLojaUsuarioR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      Size = 35
    end
    object qLojaUsuarioFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 35
    end
    object qLojaUsuarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 34
    end
    object qLojaUsuarioCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object qLojaUsuarioNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 5
    end
    object qLojaUsuarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object qLojaUsuarioCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qLojaUsuarioCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 28
    end
    object qLojaUsuarioCPF_CONTATO: TStringField
      FieldName = 'CPF_CONTATO'
      Size = 14
    end
    object qLojaUsuarioCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qLojaUsuarioINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object qLojaUsuarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object qLojaUsuarioFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object qLojaUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qLojaUsuarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qLojaUsuarioSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qLojaUsuarioDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qLojaUsuarioCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object qLojaUsuarioCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object qLojaUsuarioCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qLojaUsuarioCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qLojaUsuarioUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object qFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' F.ID_FORNECEDOR,'
      ' F.CODIGO_MUNIC,'
      ' F.DT_CADASTRO,'
      ' F.NOME,'
      ' F.TP_LOGRADOURO,'
      ' F.ENDERECO,'
      ' F.COMPLEMENTO,'
      ' F.NUMERO,'
      ' F.BAIRRO,'
      ' F.CEP,'
      ' F.TELFONE,'
      ' F.FAX,'
      ' F.CELULAR,'
      ' F.EMAIL,'
      ' F.CNPJ,'
      ' F.INS_EST,'
      ' F.CONTATO,'
      ' F.SITE,'
      ' F.FANTASIA,'
      ' F.SITUACAO,'
      ' F.DT_ABERTURA,'
      ' F.CNAE_PRINCIPAL,'
      ' F.CNAE_SECUNDARIO,'
      ' M.NOME AS CIDADE,'
      ' M.UF AS UF,'
      ' M.DDD'
      'FROM TB_FORNECEDOR F'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MU' +
        'NIC)')
    SQLConnection = Conexao
    Left = 328
    Top = 160
    object qFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object qFornecedorCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qFornecedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qFornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object qFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qFornecedorTELFONE: TStringField
      FieldName = 'TELFONE'
      Size = 14
    end
    object qFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object qFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qFornecedorINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object qFornecedorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qFornecedorDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qFornecedorCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object qFornecedorCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object qFornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object qFornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 70
    end
    object qFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qFornecedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qFornecedorTP_LOGRADOURO: TStringField
      FieldName = 'TP_LOGRADOURO'
      Size = 30
    end
    object qFornecedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object qFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qFornecedor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspFornecedorGetTableName
    Left = 360
    Top = 160
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 389
    Top = 159
    object cdsFornecedorID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Forn'
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object cdsFornecedorCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsFornecedorDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsFornecedorNOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornecedorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornecedorCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsFornecedorNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object cdsFornecedorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsFornecedorCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorTELFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELFONE'
      Size = 14
    end
    object cdsFornecedorFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 14
    end
    object cdsFornecedorCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsFornecedorEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsFornecedorINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object cdsFornecedorSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsFornecedorDT_ABERTURA: TDateField
      DisplayLabel = 'Dt Abertura'
      FieldName = 'DT_ABERTURA'
      EditMask = '##/##/####'
    end
    object cdsFornecedorCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object cdsFornecedorCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object cdsFornecedorCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsFornecedorSITE: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITE'
      Size = 70
    end
    object cdsFornecedorCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsFornecedorUF: TStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsFornecedorTP_LOGRADOURO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'TP_LOGRADOURO'
      Size = 30
    end
    object cdsFornecedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 416
    Top = 160
  end
  object dspRegOpenCloseCaixa: TDataSetProvider
    DataSet = qRegOpenCloseCaixa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 545
    Top = 69
  end
  object cdsRegOpenCloseCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegOpenCloseCaixa'
    Left = 576
    Top = 69
    object cdsRegOpenCloseCaixaID_REG: TIntegerField
      FieldName = 'ID_REG'
      ProviderFlags = []
    end
    object cdsRegOpenCloseCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsRegOpenCloseCaixaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsRegOpenCloseCaixaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsRegOpenCloseCaixaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object cdsRegOpenCloseCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object cdsRegOpenCloseCaixaDT_FECHAMENTO: TDateField
      FieldName = 'DT_FECHAMENTO'
    end
    object cdsRegOpenCloseCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object cdsRegOpenCloseCaixaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsRegOpenCloseCaixaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsRegOpenCloseCaixaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object cdsRegOpenCloseCaixaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsRegOpenCloseCaixa: TDataSource
    DataSet = cdsRegOpenCloseCaixa
    Left = 608
    Top = 69
  end
  object qRegOpenCloseCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'OCC.ID_REG,'
      'OCC.ID_USUARIO,'
      'OCC.ID_LOJA,'
      'OCC.CAIXA,'
      'OCC.DT_ABERTURA,'
      'OCC.HORA_ABERTURA,'
      'OCC.DT_FECHAMENTO,'
      'OCC.HORA_FECHAMENTO,'
      'OCC.STATUS,'
      'U.NOME_USUARIO,'
      'L.R_SOCIAL,'
      'L.FANTASIA'
      'FROM'
      'TB_REG_OPEN_CLOSE_CAIXA OCC'
      'JOIN TB_USUARIO U ON (U.id_USUARIO = OCC.id_USUARIO)'
      'JOIN TB_LOJAS   L ON (L.ID_LOJA    = OCC.ID_LOJA)'
      'WHERE STATUS ='#39'A'#39)
    SQLConnection = Conexao
    Left = 515
    Top = 69
    object qRegOpenCloseCaixaID_REG: TIntegerField
      FieldName = 'ID_REG'
      ProviderFlags = []
    end
    object qRegOpenCloseCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qRegOpenCloseCaixaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qRegOpenCloseCaixaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qRegOpenCloseCaixaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qRegOpenCloseCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object qRegOpenCloseCaixaDT_FECHAMENTO: TDateField
      FieldName = 'DT_FECHAMENTO'
    end
    object qRegOpenCloseCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object qRegOpenCloseCaixaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qRegOpenCloseCaixaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qRegOpenCloseCaixaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object qRegOpenCloseCaixaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspFechaCaixa: TDataSetProvider
    DataSet = qFechaCaixa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 545
    Top = 117
  end
  object cdsFechaCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFechaCaixa'
    Left = 576
    Top = 117
    object cdsFechaCaixaID_REG: TIntegerField
      FieldName = 'ID_REG'
      Required = True
    end
    object cdsFechaCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsFechaCaixaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsFechaCaixaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsFechaCaixaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object cdsFechaCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object cdsFechaCaixaDT_FECHAMENTO: TDateField
      FieldName = 'DT_FECHAMENTO'
    end
    object cdsFechaCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object cdsFechaCaixaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsFechaCaixaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsFechaCaixaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object cdsFechaCaixaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsFechaCaixa: TDataSource
    DataSet = cdsFechaCaixa
    Left = 608
    Top = 117
  end
  object qFechaCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'OCC.ID_REG,'
      'OCC.ID_USUARIO,'
      'OCC.ID_LOJA,'
      'OCC.CAIXA,'
      'OCC.DT_ABERTURA,'
      'OCC.HORA_ABERTURA,'
      'OCC.DT_FECHAMENTO,'
      'OCC.HORA_FECHAMENTO,'
      'OCC.STATUS,'
      'U.NOME_USUARIO,'
      'L.R_SOCIAL,'
      'L.FANTASIA'
      'FROM'
      'TB_REG_OPEN_CLOSE_CAIXA OCC'
      'JOIN TB_USUARIO U ON (U.id_USUARIO = OCC.id_USUARIO)'
      'JOIN TB_LOJAS   L ON (L.ID_LOJA    = OCC.ID_LOJA)'
      'WHERE STATUS ='#39'A'#39)
    SQLConnection = Conexao
    Left = 515
    Top = 118
    object qFechaCaixaID_REG: TIntegerField
      FieldName = 'ID_REG'
      Required = True
    end
    object qFechaCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qFechaCaixaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qFechaCaixaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qFechaCaixaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qFechaCaixaHORA_ABERTURA: TTimeField
      FieldName = 'HORA_ABERTURA'
    end
    object qFechaCaixaDT_FECHAMENTO: TDateField
      FieldName = 'DT_FECHAMENTO'
    end
    object qFechaCaixaHORA_FECHAMENTO: TTimeField
      FieldName = 'HORA_FECHAMENTO'
    end
    object qFechaCaixaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qFechaCaixaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qFechaCaixaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object qFechaCaixaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsPDV: TDataSource
    DataSet = cdsPDV
    Left = 288
    Top = 256
  end
  object cdsPDV: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPDV'
    Left = 256
    Top = 256
    object cdsPDVID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '#########0000000000'
      EditFormat = '#########0000000000'
    end
    object cdsPDVID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      DisplayFormat = '#########0'
      EditFormat = '#########0'
    end
    object cdsPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsPDVID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPDVDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object cdsPDVHR_VENDA: TTimeField
      FieldName = 'HR_VENDA'
    end
    object cdsPDVVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsPDVVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object cdsPDVVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object cdsPDVPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 18
      Size = 2
    end
    object cdsPDVSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsPDVCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object cdsPDVCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsPDVNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsPDVLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsPDVR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsPDVVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVVL_ALIQFED: TFMTBCDField
      DisplayLabel = 'Trib Fed'
      FieldName = 'VL_ALIQFED'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPDVVL_ALIQEST: TFMTBCDField
      DisplayLabel = 'Trib Est'
      FieldName = 'VL_ALIQEST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPDVVL_ALIQMUN: TFMTBCDField
      DisplayLabel = 'Trib Mun'
      FieldName = 'VL_ALIQMUN'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPDVINSC_RG: TStringField
      DisplayLabel = 'IE'
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object cdsPDVENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsPDVCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      ProviderFlags = []
      Size = 7
    end
    object cdsPDVCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsPDVUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsPDVCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object cdsPDVBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsPDVTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 14
    end
    object cdsPDVID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
    end
    object cdsPDVID_MESA: TIntegerField
      FieldName = 'ID_MESA'
    end
  end
  object dspPDV: TDataSetProvider
    DataSet = qPDV
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspPDVGetTableName
    Left = 224
    Top = 256
  end
  object qPDV: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LOJA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PDV,'
      ' P.ID_CLIENTE,'
      ' P.ID_USUARIO,'
      ' P.ID_LOJA,'
      ' P.ID_VENDEDOR,'
      ' P.DT_VENDA,'
      ' P.HR_VENDA,'
      ' P.VL_VENDA,'
      ' P.VL_DESC,'
      ' P.VL_LIQ,'
      ' P.PERC_DESC,'
      ' P.STATUS,'
      ' P.CUPOM,'
      ' P.CAIXA,'
      ' P.VL_ALIQFED,'
      ' P.VL_ALIQEST,'
      ' P.VL_ALIQMUN,'
      ' P.ID_COMANDA,'
      ' P.ID_MESA,'
      ' U.NOME_USUARIO,'
      ' L.R_SOCIAL AS LOJA,'
      ' C.R_SOCIAL,'
      ' C.CNPJ_CPF,'
      ' C.INSC_RG,'
      ' C.ENDERECO,'
      ' C.NUMERO,'
      ' C.COMPLEMENTO,'
      ' C.CODIGO_MUNIC,'
      ' M.NOME AS CIDADE,'
      ' M.UF,'
      ' C.CEP,'
      ' C.BAIRRO,'
      ' C.TELEFONE,'
      ' V.NOME AS VENDEDOR'
      ''
      'FROM TB_PDV P'
      'JOIN TB_LOJAS L ON (L.ID_LOJA = P.ID_LOJA)'
      'JOIN TB_USUARIO U ON (U.ID_USUARIO = P.ID_USUARIO)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = P.ID_CLIENTE)'
      'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = P.ID_VENDEDOR)'
      'JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MUNIC)'
      'WHERE P.STATUS ='#39'A'#39
      'AND P.CAIXA = :CAIXA'
      'AND P.ID_LOJA = :LOJA')
    SQLConnection = Conexao
    Left = 192
    Top = 256
    object qPDVID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPDVID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qPDVID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qPDVDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object qPDVHR_VENDA: TTimeField
      FieldName = 'HR_VENDA'
    end
    object qPDVVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object qPDVVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qPDVVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object qPDVPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 18
      Size = 2
    end
    object qPDVSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qPDVCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object qPDVCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qPDVNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qPDVLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qPDVR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qPDVCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qPDVVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qPDVVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      Precision = 18
      Size = 2
    end
    object qPDVVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      Precision = 18
      Size = 2
    end
    object qPDVVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      Precision = 18
      Size = 2
    end
    object qPDVINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object qPDVENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qPDVNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qPDVCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qPDVCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      ProviderFlags = []
      Size = 7
    end
    object qPDVCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qPDVUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qPDVCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object qPDVBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qPDVTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 14
    end
    object qPDVID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
    end
    object qPDVID_MESA: TIntegerField
      FieldName = 'ID_MESA'
    end
  end
  object DataSource2: TDataSource
    Left = 768
    Top = 344
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 344
  end
  object DataSetProvider2: TDataSetProvider
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 704
    Top = 344
  end
  object SQLQuery2: TSQLQuery
    Params = <>
    Left = 672
    Top = 344
  end
  object qBarras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODBARRA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' B.CODBARRAS,'
      ' B.ID_PRODUTO,'
      ' B.ID_GRUPO_PRODUTO,'
      ' B.CODPRODUTO,'
      ' B.DESC_ACRES,'
      ' B.PORCENTAGEM,'
      ' B.QTDEMBALAGEM'
      'FROM TB_BARRAS B'
      'WHERE B.CODBARRAS = :CODBARRA')
    SQLConnection = Conexao
    Left = 344
    Top = 253
    object qBarrasCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Required = True
      FixedChar = True
    end
    object qBarrasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qBarrasID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object qBarrasCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 7
    end
    object qBarrasDESC_ACRES: TStringField
      FieldName = 'DESC_ACRES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qBarrasPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
    object qBarrasQTDEMBALAGEM: TFMTBCDField
      FieldName = 'QTDEMBALAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dspBarras: TDataSetProvider
    DataSet = qBarras
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 253
  end
  object cdsBarras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODBARRA'
        ParamType = ptInput
      end>
    ProviderName = 'dspBarras'
    Left = 408
    Top = 253
    object cdsBarrasCODBARRAS: TStringField
      DisplayLabel = 'C'#243'd Barra Alternativo'
      FieldName = 'CODBARRAS'
      Required = True
      FixedChar = True
    end
    object cdsBarrasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsBarrasID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object cdsBarrasCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CODPRODUTO'
      Size = 7
    end
    object cdsBarrasDESC_ACRES: TStringField
      FieldName = 'DESC_ACRES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsBarrasPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsBarrasQTDEMBALAGEM: TFMTBCDField
      FieldName = 'QTDEMBALAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsBarras: TDataSource
    DataSet = cdsBarras
    Left = 440
    Top = 253
  end
  object spGravaEstoque: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    StoredProcName = 'GRAVA_ESTOQUE_PRODUTO'
    Left = 648
    Top = 200
  end
  object dspGravaEstoque: TDataSetProvider
    DataSet = spGravaEstoque
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 680
    Top = 200
  end
  object cdsGravaEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspGravaEstoque'
    Left = 710
    Top = 200
  end
  object dsEstoque: TDataSource
    DataSet = cdsEstoque
    Left = 728
    Top = 256
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque'
    Left = 696
    Top = 256
    object cdsEstoqueID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
      Required = True
    end
    object cdsEstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoqueID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsEstoqueID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsEstoqueDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object cdsEstoqueDOC: TStringField
      FieldName = 'DOC'
      Size = 30
    end
    object cdsEstoqueENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueTP_MOV: TStringField
      FieldName = 'TP_MOV'
      Size = 1
    end
    object cdsEstoqueSALDO_ANTERIOR: TFMTBCDField
      FieldName = 'SALDO_ANTERIOR'
      Precision = 18
      Size = 3
    end
    object cdsEstoqueDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object cdsEstoqueDT_ULT_VENDA: TDateField
      FieldName = 'DT_ULT_VENDA'
    end
  end
  object dspEstoque: TDataSetProvider
    DataSet = qEstoque
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 256
  end
  object qEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TB_ESTOQUE')
    SQLConnection = Conexao
    Left = 632
    Top = 256
    object qEstoqueID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
      Required = True
    end
    object qEstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qEstoqueID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qEstoqueID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qEstoqueDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qEstoqueDOC: TStringField
      FieldName = 'DOC'
      Size = 30
    end
    object qEstoqueENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 3
    end
    object qEstoqueSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 3
    end
    object qEstoqueSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 3
    end
    object qEstoqueTP_MOV: TStringField
      FieldName = 'TP_MOV'
      Size = 1
    end
    object qEstoqueSALDO_ANTERIOR: TFMTBCDField
      FieldName = 'SALDO_ANTERIOR'
      Precision = 18
      Size = 3
    end
    object qEstoqueDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object qEstoqueDT_ULT_VENDA: TDateField
      FieldName = 'DT_ULT_VENDA'
    end
  end
  object dsAliqIBPT: TDataSource
    DataSet = cdsAliqIBPT
    Left = 608
    Top = 16
  end
  object cdsAliqIBPT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAliqIBPT'
    Left = 576
    Top = 16
    object cdsAliqIBPTNCM: TStringField
      FieldName = 'NCM'
      Required = True
    end
    object cdsAliqIBPTEXTIPI: TStringField
      FieldName = 'EXTIPI'
    end
    object cdsAliqIBPTTABELA: TStringField
      FieldName = 'TABELA'
      FixedChar = True
      Size = 1
    end
    object cdsAliqIBPTALIQNAC: TSingleField
      FieldName = 'ALIQNAC'
    end
    object cdsAliqIBPTALIQIMP: TSingleField
      FieldName = 'ALIQIMP'
    end
    object cdsAliqIBPTDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAliqIBPTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsAliqIBPTALIQEST: TSingleField
      FieldName = 'ALIQEST'
    end
    object cdsAliqIBPTALIQMUN: TSingleField
      FieldName = 'ALIQMUN'
    end
    object cdsAliqIBPTDT_VIG_INI: TDateField
      FieldName = 'DT_VIG_INI'
    end
    object cdsAliqIBPTDT_VIG_FIN: TDateField
      FieldName = 'DT_VIG_FIN'
    end
    object cdsAliqIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 10
    end
    object cdsAliqIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1000
    end
    object cdsAliqIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 10
    end
  end
  object dspAliqIBPT: TDataSetProvider
    DataSet = qAliqIBPT
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 544
    Top = 16
  end
  object qAliqIBPT: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'A.*'
      'FROM TB_ALIQ_IBPT A')
    SQLConnection = Conexao
    Left = 512
    Top = 16
    object qAliqIBPTNCM: TStringField
      FieldName = 'NCM'
      Required = True
    end
    object qAliqIBPTEXTIPI: TStringField
      FieldName = 'EXTIPI'
    end
    object qAliqIBPTTABELA: TStringField
      FieldName = 'TABELA'
      FixedChar = True
      Size = 1
    end
    object qAliqIBPTALIQNAC: TSingleField
      FieldName = 'ALIQNAC'
    end
    object qAliqIBPTALIQIMP: TSingleField
      FieldName = 'ALIQIMP'
    end
    object qAliqIBPTDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object qAliqIBPTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qAliqIBPTALIQEST: TSingleField
      FieldName = 'ALIQEST'
    end
    object qAliqIBPTALIQMUN: TSingleField
      FieldName = 'ALIQMUN'
    end
    object qAliqIBPTDT_VIG_INI: TDateField
      FieldName = 'DT_VIG_INI'
    end
    object qAliqIBPTDT_VIG_FIN: TDateField
      FieldName = 'DT_VIG_FIN'
    end
    object qAliqIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 10
    end
    object qAliqIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1000
    end
    object qAliqIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 10
    end
  end
  object dsNFCe: TDataSource
    DataSet = cdsNFCe
    Left = 440
    Top = 304
  end
  object cdsNFCe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspNFCe'
    Left = 408
    Top = 304
    object cdsNFCeID_NFCE: TIntegerField
      FieldName = 'ID_NFCE'
      Required = True
    end
    object cdsNFCeN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 10
    end
    object cdsNFCeID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsNFCeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNFCeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNFCeID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsNFCeID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNFCeCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsNFCeNR_NFCE: TIntegerField
      FieldName = 'NR_NFCE'
      DisplayFormat = '###########00000000000'
      EditFormat = '###########00000000000'
    end
    object cdsNFCeVL_TOTAL_NOTA: TFMTBCDField
      FieldName = 'VL_TOTAL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeVL_TOTAL_PRODUTO: TFMTBCDField
      FieldName = 'VL_TOTAL_PRODUTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeVL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeBC_VL_ICMS_ST: TFMTBCDField
      FieldName = 'BC_VL_ICMS_ST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeVL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsNFCeDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
    end
    object cdsNFCeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object cdsNFCeALIQ: TFMTBCDField
      FieldName = 'ALIQ'
      Precision = 18
      Size = 2
    end
    object cdsNFCeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsNFCeQT_VOL: TStringField
      FieldName = 'QT_VOL'
      Size = 15
    end
    object cdsNFCeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object cdsNFCePESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Precision = 18
      Size = 2
    end
    object cdsNFCePESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 18
      Size = 2
    end
    object cdsNFCeVL_TOTAL_DESC: TFMTBCDField
      FieldName = 'VL_TOTAL_DESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 100
    end
    object cdsNFCeDT_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DT_AUTORIZACAO'
    end
    object cdsNFCePROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'PROTOCOLO_AUTORIZACAO'
      Size = 100
    end
    object cdsNFCeCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 150
    end
    object cdsNFCeVL_ACRESCIMO: TFMTBCDField
      FieldName = 'VL_ACRESCIMO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeRECIBO: TStringField
      FieldName = 'RECIBO'
      ProviderFlags = []
      Size = 150
    end
    object cdsNFCeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCeENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCeNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsNFCeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsNFCeCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsNFCeINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object cdsNFCeTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
    object cdsNFCeCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsNFCeUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsNFCeVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCeLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsNFCeFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
    object cdsNFCeCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object cdsNFCeDESC_CFOP: TStringField
      FieldName = 'DESC_CFOP'
      ProviderFlags = []
      Size = 500
    end
    object cdsNFCeVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFCeVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspNFCe: TDataSetProvider
    DataSet = qNFCe
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 304
  end
  object qNFCe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'N.ID_NFCE                 ,'
      'N.N_SERIE                ,'
      'N.ID_PDV                 ,'
      'N.ID_CLIENTE             ,'
      'N.ID_VENDEDOR            ,'
      'N.ID_LOJA                ,'
      'N.ID_CFOP                ,'
      'N.CODIGO_MUNIC           ,'
      'N.NR_NFCE                ,'
      'N.VL_TOTAL_NOTA          ,'
      'N.VL_TOTAL_PRODUTO       ,'
      'N.VL_ICMS                ,'
      'N.BC_VL_ICMS_ST          ,'
      'N.VL_ICMS_ST             ,'
      'N.DT_EMISSAO             ,'
      'N.DT_SAIDA               ,'
      'N.CFOP                   ,'
      'N.ALIQ                   ,'
      'N.STATUS                 ,'
      'N.QT_VOL                 ,'
      'N.ESPECIE                ,'
      'N.PESO_LIQ               ,'
      'N.PESO_BRUTO             ,'
      'N.VL_TOTAL_DESC          ,'
      'N.SITUACAO               ,'
      'N.DT_AUTORIZACAO         ,'
      'N.PROTOCOLO_AUTORIZACAO  ,'
      'N.CHAVE_NFE              ,'
      'N.VL_ACRESCIMO           ,'
      'N.RECIBO                 ,'
      'N.VL_ALIQFED,'
      'N.VL_ALIQEST,'
      'N.VL_ALIQMUN,'
      'C.R_SOCIAL AS CLIENTE    ,'
      'C.ENDERECO,'
      'C.NUMERO,'
      'C.COMPLEMENTO,'
      'C.BAIRRO,'
      'C.CNPJ_CPF,'
      'C.INSC_RG,'
      'C.TP_CLIENTE,'
      'C.CEP,'
      'M.NOME AS CIDADE,'
      'M.UF,'
      'V.NOME AS VENDEDOR,'
      'L.R_SOCIAL AS LOJA,'
      'L.FANTASIA,'
      'CF.CFNOME AS DESC_CFOP'
      'FROM TB_NFCE N'
      'LEFT OUTER JOIN TB_CFOP CF ON (CF.CFCOD = N.ID_CFOP)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = N.ID_CLIENTE)'
      'JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = N.CODIGO_MUNIC)'
      'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = N.ID_VENDEDOR)'
      'JOIN TB_LOJAS L ON (L.ID_LOJA = N.ID_LOJA)'
      'WHERE N.STATUS ='#39'N'#39
      'AND N.ID_LOJA = :ID_LOJA')
    SQLConnection = Conexao
    Left = 344
    Top = 304
    object qNFCeID_NFCE: TIntegerField
      FieldName = 'ID_NFCE'
      Required = True
    end
    object qNFCeN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 10
    end
    object qNFCeID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qNFCeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qNFCeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qNFCeID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qNFCeID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object qNFCeCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qNFCeNR_NFCE: TIntegerField
      FieldName = 'NR_NFCE'
    end
    object qNFCeVL_TOTAL_NOTA: TFMTBCDField
      FieldName = 'VL_TOTAL_NOTA'
      Precision = 18
      Size = 2
    end
    object qNFCeVL_TOTAL_PRODUTO: TFMTBCDField
      FieldName = 'VL_TOTAL_PRODUTO'
      Precision = 18
      Size = 2
    end
    object qNFCeVL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object qNFCeBC_VL_ICMS_ST: TFMTBCDField
      FieldName = 'BC_VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qNFCeVL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qNFCeDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qNFCeDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
    end
    object qNFCeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qNFCeALIQ: TFMTBCDField
      FieldName = 'ALIQ'
      Precision = 18
      Size = 2
    end
    object qNFCeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qNFCeQT_VOL: TStringField
      FieldName = 'QT_VOL'
      Size = 15
    end
    object qNFCeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object qNFCePESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Precision = 18
      Size = 2
    end
    object qNFCePESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 18
      Size = 2
    end
    object qNFCeVL_TOTAL_DESC: TFMTBCDField
      FieldName = 'VL_TOTAL_DESC'
      Precision = 18
      Size = 2
    end
    object qNFCeSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 100
    end
    object qNFCeDT_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DT_AUTORIZACAO'
    end
    object qNFCePROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'PROTOCOLO_AUTORIZACAO'
      Size = 100
    end
    object qNFCeCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 150
    end
    object qNFCeVL_ACRESCIMO: TFMTBCDField
      FieldName = 'VL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qNFCeRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 150
    end
    object qNFCeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qNFCeENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qNFCeNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qNFCeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qNFCeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qNFCeCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qNFCeINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object qNFCeTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
    object qNFCeCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qNFCeUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qNFCeVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qNFCeLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qNFCeFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
    object qNFCeCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object qNFCeDESC_CFOP: TStringField
      FieldName = 'DESC_CFOP'
      ProviderFlags = []
      Size = 500
    end
    object qNFCeVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      Precision = 18
      Size = 2
    end
    object qNFCeVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      Precision = 18
      Size = 2
    end
    object qNFCeVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      Precision = 18
      Size = 2
    end
  end
  object dsItemNFCe: TDataSource
    DataSet = cdsItemNFCe
    Left = 440
    Top = 352
  end
  object cdsItemNFCe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_NFCE'
    MasterFields = 'ID_NFCE'
    MasterSource = dsNFCe
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NFCE'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemNFCe'
    Left = 408
    Top = 352
    object cdsItemNFCeID_ITEM_NFCE: TIntegerField
      FieldName = 'ID_ITEM_NFCE'
      Required = True
    end
    object cdsItemNFCeID_NFCE: TIntegerField
      FieldName = 'ID_NFCE'
    end
    object cdsItemNFCeID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemNFCeID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemNFCeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object cdsItemNFCeITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object cdsItemNFCeUNIDADE: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 10
    end
    object cdsItemNFCeQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_UNI: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNI'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVLR_ICMS: TFMTBCDField
      FieldName = 'VLR_ICMS'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeBC_ICMS_ST: TFMTBCDField
      FieldName = 'BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_TOTAL_DESC_ITEM: TFMTBCDField
      FieldName = 'VL_TOTAL_DESC_ITEM'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object cdsItemNFCeDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemNFCeUNID: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNID'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemNFCeCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsItemNFCeREFERENCIA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsItemNFCeNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemNFCeST: TStringField
      FieldName = 'ST'
      ProviderFlags = []
      Size = 3
    end
    object cdsItemNFCeMVA: TFMTBCDField
      FieldName = 'MVA'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      ProviderFlags = []
      Size = 3
    end
    object cdsItemNFCeCD_BARRA: TStringField
      DisplayLabel = 'C'#243'd.Barra'
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object cdsItemNFCeCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object cdsItemNFCeALIQFED: TFMTBCDField
      FieldName = 'ALIQFED'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeALIQEST: TFMTBCDField
      FieldName = 'ALIQEST'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeALIQMUN: TFMTBCDField
      FieldName = 'ALIQMUN'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      Precision = 18
      Size = 2
    end
    object cdsItemNFCeVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      Precision = 18
      Size = 2
    end
  end
  object dspItemNFCe: TDataSetProvider
    DataSet = qItemNFCe
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 352
  end
  object qItemNFCe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NFCE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  INF.ID_ITEM_NFCE,'
      '  INF.ID_NFCE,'
      '  INF.ID_PRODUTO,'
      '  INF.ID_GRUPO_PRODUTO,'
      '  INF.CFOP,'
      '  INF.ITEM,'
      '  INF.UNIDADE,'
      '  INF.QUANT,'
      '  INF.VL_UNI,'
      '  INF.VL_TOTAL,'
      '  INF.VALOR_ACRESCIMO,'
      '  INF.BC_ICMS,'
      '  INF.VLR_ICMS,'
      '  INF.ALIQ_ICMS,'
      '  INF.BC_ICMS_ST,'
      '  INF.VL_ICMS_ST,'
      '  INF.VL_TOTAL_DESC_ITEM,'
      '  INF.CST,'
      '  INF.ALIQFED,'
      '  INF.ALIQEST,'
      '  INF.ALIQMUN,'
      '  INF.VL_ALIQFED,'
      '  INF.VL_ALIQEST,'
      '  INF.VL_ALIQMUN,'
      '  P.DESCRICAO,'
      '  P.UNIDADE AS UNID,'
      '  P.CODIGO,'
      '  p.CD_BARRA,'
      '  P.REFERENCIA,'
      '  P.NCM,'
      '  P.ST,'
      '  P.MVA,'
      '  P.COD_CSOSN,'
      '  P.COD_CST'
      'FROM TB_ITEM_NFCE INF'
      
        'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODUTO = INF.ID_PRODUTO A' +
        'ND P.ID_GRUPO_PRODUTO = INF.ID_GRUPO_PRODUTO)'
      'WHERE INF.ID_NFCE = :ID_NFCE')
    SQLConnection = Conexao
    Left = 344
    Top = 352
    object qItemNFCeID_ITEM_NFCE: TIntegerField
      FieldName = 'ID_ITEM_NFCE'
      Required = True
    end
    object qItemNFCeID_NFCE: TIntegerField
      FieldName = 'ID_NFCE'
    end
    object qItemNFCeID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemNFCeID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemNFCeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qItemNFCeITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemNFCeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 10
    end
    object qItemNFCeQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_UNI: TFMTBCDField
      FieldName = 'VL_UNI'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qItemNFCeBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVLR_ICMS: TFMTBCDField
      FieldName = 'VLR_ICMS'
      Precision = 18
      Size = 2
    end
    object qItemNFCeALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object qItemNFCeBC_ICMS_ST: TFMTBCDField
      FieldName = 'BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_TOTAL_DESC_ITEM: TFMTBCDField
      FieldName = 'VL_TOTAL_DESC_ITEM'
      Precision = 18
      Size = 2
    end
    object qItemNFCeCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object qItemNFCeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemNFCeUNID: TStringField
      FieldName = 'UNID'
      ProviderFlags = []
      Size = 10
    end
    object qItemNFCeCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object qItemNFCeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object qItemNFCeNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object qItemNFCeST: TStringField
      FieldName = 'ST'
      ProviderFlags = []
      Size = 3
    end
    object qItemNFCeMVA: TFMTBCDField
      FieldName = 'MVA'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qItemNFCeCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      ProviderFlags = []
      Size = 3
    end
    object qItemNFCeCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qItemNFCeCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object qItemNFCeALIQFED: TFMTBCDField
      FieldName = 'ALIQFED'
      Precision = 18
      Size = 2
    end
    object qItemNFCeALIQEST: TFMTBCDField
      FieldName = 'ALIQEST'
      Precision = 18
      Size = 2
    end
    object qItemNFCeALIQMUN: TFMTBCDField
      FieldName = 'ALIQMUN'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_ALIQFED: TFMTBCDField
      FieldName = 'VL_ALIQFED'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_ALIQEST: TFMTBCDField
      FieldName = 'VL_ALIQEST'
      Precision = 18
      Size = 2
    end
    object qItemNFCeVL_ALIQMUN: TFMTBCDField
      FieldName = 'VL_ALIQMUN'
      Precision = 18
      Size = 2
    end
  end
  object qPagamentoNFCe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NFCE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'PD.ID_PAGAMENTO_NFCE,'
      'PD.ID_NFCE,'
      'N.NR_NFCE,'
      'PD.ID_PLANO_PAGAMENTO,'
      'PD.ID_FORMA_PAGAMENTO,'
      'PL.DESCRICAO_PAGAMENTO AS PLANO_PAGAMENTO,'
      'FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO,'
      'PD.ID_LOJA,'
      'PD.ID_USUARIO,'
      'PD.VL_PAGAMENTO,'
      'PD.VL_RECEBIDO,'
      'PD.DT_MOV,'
      'PD.CAIXA'
      'FROM TB_PAGAMENTO_NFCE PD'
      
        'JOIN TB_PLANO_PAGAMENTO PL ON (PL.ID_PLANO_PAGAMENTO = PD.ID_PLA' +
        'NO_PAGAMENTO)'
      
        'JOIN TB_FORMA_PAGAMENTO FP ON (FP.ID_FORMA_PAGAMENTO = PD.ID_FOR' +
        'MA_PAGAMENTO)'
      'JOIN TB_NFCE N ON (N.ID_NFCE = PD.ID_NFCE)'
      'WHERE PD.ID_NFCE = :ID_NFCE')
    SQLConnection = Conexao
    Left = 344
    Top = 400
    object qPagamentoNFCeID_PAGAMENTO_NFCE: TIntegerField
      FieldName = 'ID_PAGAMENTO_NFCE'
      Required = True
    end
    object qPagamentoNFCeID_NFCE: TIntegerField
      FieldName = 'ID_NFCE'
    end
    object qPagamentoNFCeID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object qPagamentoNFCeID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qPagamentoNFCePLANO_PAGAMENTO: TStringField
      FieldName = 'PLANO_PAGAMENTO'
      Size = 40
    end
    object qPagamentoNFCeFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 40
    end
    object qPagamentoNFCeID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qPagamentoNFCeID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qPagamentoNFCeVL_PAGAMENTO: TFMTBCDField
      FieldName = 'VL_PAGAMENTO'
      Precision = 18
      Size = 2
    end
    object qPagamentoNFCeVL_RECEBIDO: TFMTBCDField
      FieldName = 'VL_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object qPagamentoNFCeDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qPagamentoNFCeCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qPagamentoNFCeNR_NFCE: TIntegerField
      FieldName = 'NR_NFCE'
    end
  end
  object dspPagamentoNFCe: TDataSetProvider
    DataSet = qPagamentoNFCe
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 374
    Top = 402
  end
  object cdsPagamentoNFCe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_NFCE'
    MasterFields = 'ID_NFCE'
    MasterSource = dsNFCe
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NFCE'
        ParamType = ptInput
      end>
    ProviderName = 'dspPagamentoNFCe'
    Left = 403
    Top = 402
    object cdsPagamentoNFCeID_PAGAMENTO_NFCE: TIntegerField
      FieldName = 'ID_PAGAMENTO_NFCE'
      Required = True
    end
    object cdsPagamentoNFCeID_NFCE: TIntegerField
      FieldName = 'ID_NFCE'
    end
    object cdsPagamentoNFCeID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object cdsPagamentoNFCeID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsPagamentoNFCePLANO_PAGAMENTO: TStringField
      DisplayLabel = 'Plano Pagamento'
      FieldName = 'PLANO_PAGAMENTO'
      Size = 40
    end
    object cdsPagamentoNFCeFORMA_PAGAMENTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'FORMA_PAGAMENTO'
      Size = 40
    end
    object cdsPagamentoNFCeID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsPagamentoNFCeID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPagamentoNFCeVL_PAGAMENTO: TFMTBCDField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'VL_PAGAMENTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoNFCeVL_RECEBIDO: TFMTBCDField
      FieldName = 'VL_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoNFCeDT_MOV: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_MOV'
      EditMask = '##/##/####'
    end
    object cdsPagamentoNFCeCAIXA: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
    end
    object cdsPagamentoNFCeNR_NFCE: TIntegerField
      DisplayLabel = 'N'#186' NFC-e'
      FieldName = 'NR_NFCE'
    end
  end
  object dsPagamentoNFCe: TDataSource
    DataSet = cdsPagamentoNFCe
    Left = 433
    Top = 402
  end
  object qComanda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' C.ID_COMANDA,'
      ' C.ID_CLIENTE,'
      ' C.ID_VENDEDOR,'
      ' C.ID_MESA,'
      ' C.ID_EMPRESA,'
      ' C.DT_ABERTURA,'
      ' C.HR_ABERTURA,'
      ' C.DT_FECHAMENTO,'
      ' C.HR_FECHAMENTO,'
      ' C.NR_COMANDA,'
      ' C.STATUS,'
      ' C.VL_TOTAL,'
      ' C.VL_ACRES,'
      ' C.VL_SERVICO,'
      ' C.VL_DESC,'
      ' C.VL_LIQ,'
      ' C.VALE_BRINDE,'
      ' C.ID_TIPO_PAGAMENTO,'
      ' C.ID_FORMA_PAGAMENTO,'
      ' C.TEMPO_OCUPADO,'
      ' C.ID_USUARIO,'
      ' FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO,'
      ' T.DESCRICAO_PAGAMENTO,'
      ' CL.R_SOCIAL,'
      ' V.NOME AS VENDEDOR,'
      ' M.NOME_MESA,'
      ' M.STATUS as ST_MESA,'
      ' E.R_SOCIAL AS EMPRESA'
      'FROM TB_COMANDA C'
      'LEFT OUTER JOIN TB_CLIENTE CL  ON (CL.ID_CLIENTE = C.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_VENDEDOR V  ON (V.ID_VENDEDOR = C.ID_VENDEDOR' +
        ')'
      'LEFT OUTER JOIN TB_MESA M      ON (M.ID_MESA     = C.ID_MESA)'
      'LEFT OUTER JOIN TB_LOJAS E   ON (E.ID_LOJA  = C.ID_EMPRESA)'
      
        'LEFT OUTER JOIN TB_PLANO_PAGAMENTO T   ON (T.ID_PLANO_PAGAMENTO ' +
        ' = C.ID_TIPO_PAGAMENTO)'
      
        'LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP   ON (FP.ID_FORMA_PAGAMENT' +
        'O  = C.ID_FORMA_PAGAMENTO)'
      'WHERE  C.STATUS = '#39'O'#39)
    SQLConnection = Conexao
    Left = 184
    Top = 359
    object qComandaID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
      Required = True
    end
    object qComandaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qComandaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qComandaID_MESA: TIntegerField
      FieldName = 'ID_MESA'
    end
    object qComandaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qComandaHR_ABERTURA: TTimeField
      FieldName = 'HR_ABERTURA'
    end
    object qComandaDT_FECHAMENTO: TDateField
      FieldName = 'DT_FECHAMENTO'
    end
    object qComandaHR_FECHAMENTO: TTimeField
      FieldName = 'HR_FECHAMENTO'
    end
    object qComandaNR_COMANDA: TStringField
      FieldName = 'NR_COMANDA'
    end
    object qComandaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qComandaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qComandaVL_ACRES: TFMTBCDField
      FieldName = 'VL_ACRES'
      Precision = 18
      Size = 2
    end
    object qComandaVL_SERVICO: TFMTBCDField
      FieldName = 'VL_SERVICO'
      Precision = 18
      Size = 2
    end
    object qComandaVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qComandaVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object qComandaVALE_BRINDE: TFMTBCDField
      FieldName = 'VALE_BRINDE'
      Precision = 18
      Size = 3
    end
    object qComandaID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object qComandaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qComandaTEMPO_OCUPADO: TTimeField
      FieldName = 'TEMPO_OCUPADO'
    end
    object qComandaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qComandaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qComandaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qComandaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qComandaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qComandaNOME_MESA: TStringField
      FieldName = 'NOME_MESA'
      ProviderFlags = []
      Size = 40
    end
    object qComandaST_MESA: TStringField
      FieldName = 'ST_MESA'
      ProviderFlags = []
      Size = 1
    end
    object qComandaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object qComandaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
  end
  object dspComanda: TDataSetProvider
    DataSet = qComanda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 359
  end
  object cdsComanda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComanda'
    Left = 248
    Top = 359
    object cdsComandaID_COMANDA: TIntegerField
      DisplayLabel = 'N'#186' Comanda'
      FieldName = 'ID_COMANDA'
      Required = True
    end
    object cdsComandaID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsComandaID_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsComandaID_MESA: TIntegerField
      DisplayLabel = 'N'#186' Mesa'
      FieldName = 'ID_MESA'
    end
    object cdsComandaDT_ABERTURA: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'DT_ABERTURA'
      EditMask = '##/##/####'
    end
    object cdsComandaHR_ABERTURA: TTimeField
      DisplayLabel = 'Hora Abertura'
      FieldName = 'HR_ABERTURA'
      EditMask = '##:##:##'
    end
    object cdsComandaDT_FECHAMENTO: TDateField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DT_FECHAMENTO'
      EditMask = '##/##/####'
    end
    object cdsComandaHR_FECHAMENTO: TTimeField
      DisplayLabel = 'Hora Fechamento'
      FieldName = 'HR_FECHAMENTO'
      EditMask = '##:##:##'
    end
    object cdsComandaNR_COMANDA: TStringField
      DisplayLabel = 'N'#186' Comanda'
      FieldName = 'NR_COMANDA'
    end
    object cdsComandaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsComandaVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_ACRES: TFMTBCDField
      DisplayLabel = 'Vl.Acrescimo'
      FieldName = 'VL_ACRES'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_SERVICO: TFMTBCDField
      DisplayLabel = 'Vl Servi'#231'o'
      FieldName = 'VL_SERVICO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_DESC: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VL_DESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_LIQ: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VL_LIQ'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVALE_BRINDE: TFMTBCDField
      DisplayLabel = 'Vale Brinde'
      FieldName = 'VALE_BRINDE'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsComandaID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object cdsComandaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsComandaTEMPO_OCUPADO: TTimeField
      DisplayLabel = 'Tempo Ocupado'
      FieldName = 'TEMPO_OCUPADO'
      EditMask = '##:##:##'
    end
    object cdsComandaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsComandaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsComandaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsComandaR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsComandaVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsComandaNOME_MESA: TStringField
      DisplayLabel = 'Mesa'
      FieldName = 'NOME_MESA'
      ProviderFlags = []
      Size = 40
    end
    object cdsComandaST_MESA: TStringField
      FieldName = 'ST_MESA'
      ProviderFlags = []
      Size = 1
    end
    object cdsComandaEMPRESA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object cdsComandaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
  end
  object dsComanda: TDataSource
    DataSet = cdsComanda
    Left = 280
    Top = 359
  end
  object spRecebeComanda: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_COMANDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PDV'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    StoredProcName = 'RECEBE_COMANDA_PDV'
    Left = 648
    Top = 160
  end
  object dspRecebeComanda: TDataSetProvider
    DataSet = spRecebeComanda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 680
    Top = 160
  end
  object cdsRecebeComanda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_COMANDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspRecebeComanda'
    Left = 712
    Top = 160
  end
end