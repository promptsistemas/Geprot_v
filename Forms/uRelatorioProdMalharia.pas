unit uRelatorioProdMalharia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,StrUtils, QuickRpt,
  qrpctrls, qrpBaseCtrls, Vcl.ComCtrls, QRCtrls;

type
  TfrmRelatorioProdMalharia = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    edtCli: TEdit;
    Label2: TLabel;
    lblCliente: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    BB_LOCALIZAR: TBitBtn;
    BB_IMPRIMIR: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    qRelMalharia: TSQLDataSet;
    dspRelMalharia: TDataSetProvider;
    cdsRelMalharia: TClientDataSet;
    dsRelMalharia: TDataSource;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QR_GERAL: TQRPQuickrep;
    QRPBand1: TQRPBand;
    QRPBand3: TQRPBand;
    QRGroup1: TQRGroup;
    QRPBand2: TQRPBand;
    QRPBand4: TQRPBand;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRL_EMPRESA: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    QRL_TOTAL_FIOS: TQRLabel;
    QR_AGRUPADO: TQRPQuickrep;
    QRPBand5: TQRPBand;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel12: TQRLabel;
    QRPBand6: TQRPBand;
    QRGroup2: TQRGroup;
    QRPBand7: TQRPBand;
    QRPBand8: TQRPBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData6: TQRSysData;
    QRChildBand1: TQRChildBand;
    QRBand1: TQRBand;
    SpeedButton4: TSpeedButton;
    qFornecedor: TSQLDataSet;
    qFornecedorID_FORNECEDOR: TIntegerField;
    qFornecedorCODIGO_MUNIC: TStringField;
    qFornecedorDT_CADASTRO: TDateField;
    qFornecedorNOME: TStringField;
    qFornecedorTP_LOGRADOURO: TStringField;
    qFornecedorENDERECO: TStringField;
    qFornecedorCOMPLEMENTO: TStringField;
    qFornecedorNUMERO: TStringField;
    qFornecedorBAIRRO: TStringField;
    qFornecedorCEP: TStringField;
    qFornecedorTELFONE: TStringField;
    qFornecedorFAX: TStringField;
    qFornecedorCELULAR: TStringField;
    qFornecedorEMAIL: TStringField;
    qFornecedorCNPJ: TStringField;
    qFornecedorINS_EST: TStringField;
    qFornecedorCONTATO: TStringField;
    qFornecedorSITE: TStringField;
    qFornecedorFANTASIA: TStringField;
    qFornecedorSITUACAO: TStringField;
    qFornecedorDT_ABERTURA: TDateField;
    qFornecedorCNAE_PRINCIPAL: TStringField;
    qFornecedorCNAE_SECUNDARIO: TStringField;
    qFornecedorID_CATEGORIA: TIntegerField;
    qFornecedorCIDADE: TStringField;
    qFornecedorUF: TStringField;
    qFornecedorDDD: TStringField;
    qFornecedorNOME_CATEGORIA: TStringField;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    cdsFornecedorID_FORNECEDOR: TIntegerField;
    cdsFornecedorCODIGO_MUNIC: TStringField;
    cdsFornecedorDT_CADASTRO: TDateField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorTP_LOGRADOURO: TStringField;
    cdsFornecedorENDERECO: TStringField;
    cdsFornecedorCOMPLEMENTO: TStringField;
    cdsFornecedorNUMERO: TStringField;
    cdsFornecedorBAIRRO: TStringField;
    cdsFornecedorCEP: TStringField;
    cdsFornecedorTELFONE: TStringField;
    cdsFornecedorFAX: TStringField;
    cdsFornecedorCELULAR: TStringField;
    cdsFornecedorEMAIL: TStringField;
    cdsFornecedorCNPJ: TStringField;
    cdsFornecedorINS_EST: TStringField;
    cdsFornecedorCONTATO: TStringField;
    cdsFornecedorSITE: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    cdsFornecedorSITUACAO: TStringField;
    cdsFornecedorDT_ABERTURA: TDateField;
    cdsFornecedorCNAE_PRINCIPAL: TStringField;
    cdsFornecedorCNAE_SECUNDARIO: TStringField;
    cdsFornecedorID_CATEGORIA: TIntegerField;
    cdsFornecedorCIDADE: TStringField;
    cdsFornecedorUF: TStringField;
    cdsFornecedorDDD: TStringField;
    cdsFornecedorNOME_CATEGORIA: TStringField;
    dsFornecedor: TDataSource;
    qRelMalhariaIMPORTADORA: TStringField;
    qRelMalhariaFIO: TStringField;
    qRelMalhariaNR_NOTA_FISCAL: TIntegerField;
    qRelMalhariaNR_NF_REMESSA: TIntegerField;
    qRelMalhariaDT_EMISSAO: TDateField;
    qRelMalhariaID_FORN_REM: TIntegerField;
    qRelMalhariaID_CLIENTE: TIntegerField;
    qRelMalhariaCLIENTE: TStringField;
    qRelMalhariaID_MATERIA_PRIMA: TIntegerField;
    qRelMalhariaQUANT: TFMTBCDField;
    qRelMalhariaQT_FAT: TFMTBCDField;
    qRelMalhariaSALDO: TFMTBCDField;
    qRelMalhariaSTATUS: TStringField;
    cdsRelMalhariaIMPORTADORA: TStringField;
    cdsRelMalhariaFIO: TStringField;
    cdsRelMalhariaNR_NOTA_FISCAL: TIntegerField;
    cdsRelMalhariaNR_NF_REMESSA: TIntegerField;
    cdsRelMalhariaDT_EMISSAO: TDateField;
    cdsRelMalhariaID_FORN_REM: TIntegerField;
    cdsRelMalhariaID_CLIENTE: TIntegerField;
    cdsRelMalhariaCLIENTE: TStringField;
    cdsRelMalhariaID_MATERIA_PRIMA: TIntegerField;
    cdsRelMalhariaQUANT: TFMTBCDField;
    cdsRelMalhariaQT_FAT: TFMTBCDField;
    cdsRelMalhariaSALDO: TFMTBCDField;
    cdsRelMalhariaSTATUS: TStringField;
    qRelMalhariaNOME: TStringField;
    cdsRelMalhariaNOME: TStringField;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    qRelMalhariaID_GRUPO_EMPRESA: TIntegerField;
    cdsRelMalhariaID_GRUPO_EMPRESA: TIntegerField;
    qRelMalhariaNOME_DO_GRUPO: TStringField;
    cdsRelMalhariaNOME_DO_GRUPO: TStringField;
    QRLabel15: TQRLabel;
    QRPShape1: TQRPShape;
    qRelMalhariaELASTANO: TStringField;
    cdsRelMalhariaELASTANO: TStringField;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRL_TOTAL_ELASTANO: TQRLabel;
    QRLabel38: TQRLabel;
    QRL_TOTAL_MALHARIA: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRL_MALHARIA: TQRLabel;
    QRL_ELASTANO: TQRLabel;
    QRL_FIOS: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRL_GERAL_FIOS: TQRLabel;
    QRL_GERAL_ELASTANAO: TQRLabel;
    QRL_GERAL_MALHARIA: TQRLabel;
    TabSheet3: TTabSheet;
    QR_GRUPO: TQRPQuickrep;
    QRPBand9: TQRPBand;
    QRLabel43: TQRLabel;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRPBand10: TQRPBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRGroup3: TQRGroup;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel56: TQRLabel;
    QRPShape2: TQRPShape;
    QRPBand11: TQRPBand;
    QRLabel57: TQRLabel;
    QRLELASTANO: TQRLabel;
    QRLabel601: TQRLabel;
    QRL_MALHARIA_GRUPO: TQRLabel;
    QRL_ELASTANO_GRUPO: TQRLabel;
    QRL_FIO_GRUPO: TQRLabel;
    QRPBand12: TQRPBand;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRSysData9: TQRSysData;
    QRChildBand2: TQRChildBand;
    QRBand2: TQRBand;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRL_FIOS_GERAL: TQRLabel;
    QRL_ELASTANO_GERAL: TQRLabel;
    QRL_MALHARIA_GERAL: TQRLabel;
    qRelMalhariaPERCENTUAL: TFMTBCDField;
    qRelMalhariaNOME_MATERIA: TStringField;
    cdsRelMalhariaPERCENTUAL: TFMTBCDField;
    cdsRelMalhariaNOME_MATERIA: TStringField;
    QRLabel61: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel62: TQRLabel;
    QRDBText34: TQRDBText;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCliExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCliKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BB_LOCALIZARClick(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRPBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRPBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRPBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SomaTotal;
  end;

var
  frmRelatorioProdMalharia: TfrmRelatorioProdMalharia;
  sSql, sMov, sStatus : string;
  Total,TotPag, TotGeral : Double;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uRelatorioConPag;

procedure TfrmRelatorioProdMalharia.BB_IMPRIMIRClick(Sender: TObject);
begin
  if (edtCli.Text = '' ) AND (DBLookupComboBox1.Text = '') then
  begin
    cdsRelMalharia.IndexFieldNames := 'ID_GRUPO_EMPRESA;IMPORTADORA';
    QR_AGRUPADO.Preview;
  end;
  if (edtCli.Text <> '')  AND (DBLookupComboBox1.Text <> '') then
  begin
    QRL_EMPRESA.Caption := 'Material Em Produ��o : '+DBLookupComboBox1.Text;
    QR_GERAL.Preview;
  end;
  if (edtCli.Text <> '')  AND (DBLookupComboBox1.Text = '') then
  begin
    cdsRelMalharia.IndexFieldNames := 'ID_GRUPO_EMPRESA;IMPORTADORA';
//    QRL_EMPRESA.Caption := 'Material Em Produ��o : '+DBLookupComboBox1.Text;
    QR_GRUPO.Preview;
  end;
  if (edtCli.Text = '')  AND (DBLookupComboBox1.Text <> '') then
  begin
    QRL_EMPRESA.Caption := 'Material Em Produ��o : '+DBLookupComboBox1.Text;
    QR_GERAL.Preview;
  end;


end;

procedure TfrmRelatorioProdMalharia.BB_LOCALIZARClick(Sender: TObject);
Var
 sSql : string;
 TotalFios,TotalElastano,TotalGeral : double;
begin
  DM.cdsRelProdMalharia.Execute;

  sSql := ' SELECT RM.NOME, RM.IMPORTADORA, RM.FIO, RM.ELASTANO,RM.NR_NOTA_FISCAL,RM.NR_NF_REMESSA,RM.DT_EMISSAO,'+
          ' RM.ID_FORN_REM,RM.ID_CLIENTE, RM.CLIENTE, RM.ID_GRUPO_EMPRESA,RM.NOME_DO_GRUPO, RM.ID_MATERIA_PRIMA, '+
          ' RM.QUANT,RM.QT_FAT, RM.saldo,RM.STATUS, ABS((RM.qt_fat/RM.quant)-1)*100 AS PERCENTUAL, MP.NOME_MATERIA'+
          ' FROM TB_REL_PROD_MALHARIA RM                                                                                '+
          ' JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = RM.ID_MATERIA_PRIMA)                                           ';


  if (edtCli.Text ='' ) and (DBLookupComboBox1.Text = '') then
  begin
    cdsRelMalharia.Close;
    cdsRelMalharia.CommandText:= sSql + 'GROUP BY RM.NOME, RM.IMPORTADORA, RM.FIO, RM.ELASTANO,RM.NR_NOTA_FISCAL,RM.NR_NF_REMESSA,RM.DT_EMISSAO,'+
                                        'RM.ID_FORN_REM,RM.ID_CLIENTE, RM.CLIENTE, RM.ID_GRUPO_EMPRESA,RM.NOME_DO_GRUPO, RM.ID_MATERIA_PRIMA,   '+
                                        'RM.QUANT,RM.QT_FAT, RM.saldo,RM.status,MP.nome_materia                                                 '+
                                        'having RM.saldo > 0';
    cdsRelMalharia.Open;

    if cdsRelMalharia.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsRelMalharia.Close;
    end
    else
    begin
      DBGrid1.SetFocus;

     { DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=  ' SELECT RP.id_producao,RP.ELASTANO, '+
                                     ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                     ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                     ' FROM TB_REL_PROD_MALHARIA RP '+
                                     ' WHERE RP.ELASTANO = ''N'''+
                                     ' GROUP BY '+
                                     ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status';
      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalFios              := DM.cdsDinamica.Fields[4].AsFloat;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ELASTANO = ''S'''+
                                    ' GROUP BY '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                                                                              ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalElastano              := DM.cdsDinamica.Fields[4].AsFloat;
      if DM.cdsDinamica.Fields[4].IsNull then
      begin
        TotalElastano := 0;
        QRL_TOTAL_ELASTANO.Caption := '000';
      end;


      TotalGeral := TotalFios+TotalElastano;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral); }
    end;
  end;


  if (edtCli.Text <>'' ) and (DBLookupComboBox1.Text = '') then
  begin
    cdsRelMalharia.Close;
    cdsRelMalharia.CommandText:= sSql + ' WHERE RM.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                        'GROUP BY RM.NOME, RM.IMPORTADORA, RM.FIO, RM.ELASTANO,RM.NR_NOTA_FISCAL,RM.NR_NF_REMESSA,RM.DT_EMISSAO,'+
                                        'RM.ID_FORN_REM,RM.ID_CLIENTE, RM.CLIENTE, RM.ID_GRUPO_EMPRESA,RM.NOME_DO_GRUPO, RM.ID_MATERIA_PRIMA,   '+
                                        'RM.QUANT,RM.QT_FAT, RM.saldo,RM.status,MP.nome_materia                                                 '+
                                        'having RM.saldo > 0                                                                                    ';
    cdsRelMalharia.Open;

    if cdsRelMalharia.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsRelMalharia.Close;
    end
    else
    begin
      DBGrid1.SetFocus;

     { DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ELASTANO = ''N'''+
                                    ' AND RP.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)                                                            +
                                    ' AND RP.ELASTANO = ''N''                                                                                      '+
                                    ' GROUP BY '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                 ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalFios              := DM.cdsDinamica.Fields[4].AsFloat;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ELASTANO = ''N'''+
                                    ' AND RP.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)                                                            +
                                    ' AND RP.ELASTANO = ''S''                                                                                      '+
                                    ' GROUP BY '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                                                                                     ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalElastano              := DM.cdsDinamica.Fields[4].AsFloat;

      if DM.cdsDinamica.Fields[1].IsNull then
      begin
        TotalElastano := 0;
        QRL_TOTAL_ELASTANO.Caption := '000';
      end;


      TotalGeral := TotalFios+TotalElastano;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral); }


    end;

  end;

  if (edtCli.Text <>'' ) and (DBLookupComboBox1.Text <> '') then
  begin
    cdsRelMalharia.Close;
    cdsRelMalharia.CommandText:= sSql + ' WHERE RM.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                        ' AND RM.ID_FORN_REM = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                        'GROUP BY RM.NOME, RM.IMPORTADORA, RM.FIO, RM.ELASTANO,RM.NR_NOTA_FISCAL,RM.NR_NF_REMESSA,RM.DT_EMISSAO,'+
                                        'RM.ID_FORN_REM,RM.ID_CLIENTE, RM.CLIENTE, RM.ID_GRUPO_EMPRESA,RM.NOME_DO_GRUPO, RM.ID_MATERIA_PRIMA,   '+
                                        'RM.QUANT,RM.QT_FAT, RM.saldo,RM.status,MP.nome_materia                                                 '+
                                        'having RM.saldo > 0                                                                                    ';
    cdsRelMalharia.Open;

    if cdsRelMalharia.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsRelMalharia.Close;
    end
    else
    begin
      DBGrid1.SetFocus;

      {DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ELASTANO = ''N'''+
                                    ' AND RP.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)                                                            +
                                    ' AND RP.ID_FORN_REM = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    ' AND RP.ELASTANO = ''N''                                                                                      '+
                                    ' GROUP BY '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                                                                                   ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalFios              := DM.cdsDinamica.Fields[4].AsFloat;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ELASTANO = ''N'''+
                                    ' AND RP.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)                                                            +
                                    ' AND RP.ID_FORN_REM = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    ' AND RP.ELASTANO = ''S''                                                                                      '+
                                    ' GROUP BY '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                                                                                     ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalElastano              := DM.cdsDinamica.Fields[4].AsFloat;

      TotalGeral := TotalFios+TotalElastano;


      if DM.cdsDinamica.Fields[1].IsNull then
      begin
        TotalElastano := 0;
        QRL_TOTAL_ELASTANO.Caption := '000';
      end;


      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral); }


    end;

  end;

  if (edtCli.Text = '' ) and (DBLookupComboBox1.Text <> '') then
  begin
    cdsRelMalharia.Close;
    cdsRelMalharia.CommandText:= sSql + ' WHERE RM.ID_FORN_REM = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                        'GROUP BY RM.NOME, RM.IMPORTADORA, RM.FIO, RM.ELASTANO,RM.NR_NOTA_FISCAL,RM.NR_NF_REMESSA,RM.DT_EMISSAO,'+
                                        'RM.ID_FORN_REM,RM.ID_CLIENTE, RM.CLIENTE, RM.ID_GRUPO_EMPRESA,RM.NOME_DO_GRUPO, RM.ID_MATERIA_PRIMA,   '+
                                        'RM.QUANT,RM.QT_FAT, RM.saldo,RM.status,MP.nome_materia                                                 '+
                                        'having RM.saldo > 0                                                                                    ';
    cdsRelMalharia.Open;

    if cdsRelMalharia.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsRelMalharia.Close;
    end
    else
    begin
      DBGrid1.SetFocus;

  {    DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ID_FORN_REM = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    ' AND RP.ELASTANO = ''S''                                                                                      '+
                                    ' GROUP BY '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                                                                                     ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalFios              := DM.cdsDinamica.Fields[4].AsFloat;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT RP.id_producao,RP.ELASTANO, '+
                                    ' sum(RP.QUANT)-rP.quant as QUANT, SUM(RP.QT_FAT) AS QT_FAT, (sum(RP.QUANT)-rP.quant)-SUM(RP.QT_FAT) as SALDO,'+
                                    ' RP.STATUS, ABS(SUM(RP.qt_fat)/SUM(RP.quant)-1)*100 AS PERCENTUAL'+
                                    ' FROM TB_REL_PROD_MALHARIA RP '+
                                    ' WHERE RP.ELASTANO = ''S''                                                                                    '+
                                    ' AND RP.ID_FORN_REM = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    ' GROUP BY                                                                                                      '+
                                    ' RP.id_producao,   RP.ELASTANO,   RP.quant,   RP.status                                                                                                  ';
      DM.cdsDinamica.Open;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[4].AsFloat);
      TotalElastano              := DM.cdsDinamica.Fields[4].AsFloat;


      if DM.cdsDinamica.Fields[1].IsNull then
      begin
        TotalElastano := 0;
        QRL_TOTAL_ELASTANO.Caption := '000';
      end;


      TotalGeral := TotalFios+TotalElastano;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral); }


    end;
  end;
end;

procedure TfrmRelatorioProdMalharia.DBLookupComboBox1Enter(Sender: TObject);
begin
  cdsFornecedor.Open;
end;

procedure TfrmRelatorioProdMalharia.edtCliExit(Sender: TObject);
begin
  if edtCli.Text = '' Then
  begin
    exit;
  end;
  DM.cdsGrupoEmpresa.Open;
  if DM.cdsGrupoEmpresa.Locate('ID_GRUPO_EMPRESA',edtCli.Text,[]) then
  begin
    edtCli.Text        := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsString;
    lblCliente.Caption := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
    DBLookupComboBox1.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Grupo Cliente N�o Encontrado      '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end;

end;

procedure TfrmRelatorioProdMalharia.edtCliKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton1Click(self);
  end;
end;

procedure TfrmRelatorioProdMalharia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelatorioProdMalharia := nil;
end;

procedure TfrmRelatorioProdMalharia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmRelatorioProdMalharia.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  totalFios,TotalElastano,TotalGeral : double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo) '+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''N''                                                                                    ';
  DM.cdsDinamica.Open;

  QRL_GERAL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  totalFios := DM.cdsDinamica.Fields[2].AsFloat;


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo) '+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''S''                                                                                    ';
  DM.cdsDinamica.Open;

  QRL_GERAL_ELASTANAO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  TotalElastano := DM.cdsDinamica.Fields[2].AsFloat;

  TotalGeral := totalFios+TotalElastano;

  QRL_GERAL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral);

end;

procedure TfrmRelatorioProdMalharia.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  totalFios,TotalElastano,TotalGeral : double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''N''                                                                                    '+
                                ' AND RP.ID_GRUPO_EMPRESA = '+cdsRelMalhariaID_GRUPO_EMPRESA.AsString                                           +
                                ' AND RP.SALDO > 0';
  DM.cdsDinamica.Open;

  QRL_FIOS_GERAL.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  totalFios := DM.cdsDinamica.Fields[2].AsFloat;


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''S''                                                                                    '+
                                ' AND RP.ID_GRUPO_EMPRESA = '+cdsRelMalhariaID_GRUPO_EMPRESA.AsString                                             +
                                ' AND RP.SALDO > 0';
  DM.cdsDinamica.Open;

  QRL_ELASTANO_GERAL.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  TotalElastano := DM.cdsDinamica.Fields[2].AsFloat;

  TotalGeral := totalFios+TotalElastano;

  QRL_MALHARIA_GERAL.Caption := FormatFloat('###,###0.000',TotalGeral);

end;

procedure TfrmRelatorioProdMalharia.QRPBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  totalFios,TotalElastano,TotalGeral : double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''N''                                                                                    '+
                                ' AND RP.ID_GRUPO_EMPRESA = '+cdsRelMalhariaID_GRUPO_EMPRESA.AsString                                             +
                                ' AND RP.ID_FORN_REM =     '+cdsRelMalhariaID_FORN_REM.AsString                                                  +
                                ' AND RP.SALDO > 0';
  DM.cdsDinamica.Open;

  QRL_FIO_GRUPO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  totalFios := DM.cdsDinamica.Fields[2].AsFloat;


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''S''                                                                                    '+
                                ' AND RP.ID_GRUPO_EMPRESA = '+cdsRelMalhariaID_GRUPO_EMPRESA.AsString                                             +
                                ' AND RP.SALDO > 0';
  DM.cdsDinamica.Open;

  QRL_ELASTANO_GRUPO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  TotalElastano := DM.cdsDinamica.Fields[2].AsFloat;

  TotalGeral := totalFios+TotalElastano;

  QRL_MALHARIA_GRUPO.Caption := FormatFloat('###,###0.000',TotalGeral);

end;

procedure TfrmRelatorioProdMalharia.QRPBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  totalFios,TotalElastano,TotalGeral : double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''N''                                                                                    '+
                                ' AND RP.ID_FORN_REM =     '+cdsRelMalhariaID_FORN_REM.AsString                                                  +
                                ' AND RP.id_grupo_empresa ='+edtCli.Text+
                                ' AND RP.SALDO > 0';
  DM.cdsDinamica.Open;

  QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  totalFios := DM.cdsDinamica.Fields[2].AsFloat;


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''S''                                                                                    '+
                                ' AND RP.ID_FORN_REM =     '+cdsRelMalhariaID_FORN_REM.AsString                                                  +
                                ' AND RP.id_grupo_empresa ='+edtCli.Text+
                                ' AND RP.SALDO > 0';
  DM.cdsDinamica.Open;

  QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  TotalElastano := DM.cdsDinamica.Fields[2].AsFloat;

  TotalGeral := totalFios+TotalElastano;

  QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral);

end;

procedure TfrmRelatorioProdMalharia.QRPBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  totalFios,TotalElastano,TotalGeral : double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''N''                                                                                    '+
                               // ' AND RP.ID_GRUPO_EMPRESA = '+cdsRelMalhariaID_GRUPO_EMPRESA.AsString                                             +
                                ' AND RP.IMPORTADORA =     '+QuotedStr(cdsRelMalhariaIMPORTADORA.AsString)+
                                ' and rp.SALDO >0 ';
  DM.cdsDinamica.Open;

  QRL_FIOS.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  totalFios := DM.cdsDinamica.Fields[2].AsFloat;


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT sum(rp.quant), sum(rp.qt_fat), sum(rp.saldo)'+
                                ' FROM TB_REL_PROD_MALHARIA RP '+
                                ' WHERE RP.ELASTANO = ''S''                                                                                    '+
//                                ' AND RP.ID_GRUPO_EMPRESA = '+cdsRelMalhariaID_GRUPO_EMPRESA.AsString                                             +
                                ' AND RP.IMPORTADORA =     '+QuotedStr(cdsRelMalhariaIMPORTADORA.AsString)+
                                ' and rp.SALDO >0 ';
  DM.cdsDinamica.Open;

  QRL_ELASTANO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[2].AsFloat);
  TotalElastano := DM.cdsDinamica.Fields[2].AsFloat;

  TotalGeral := totalFios+TotalElastano;

  QRL_MALHARIA.Caption := FormatFloat('###,###0.000',TotalGeral);
end;

procedure TfrmRelatorioProdMalharia.SomaTotal;
begin
end;

procedure TfrmRelatorioProdMalharia.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Close;
  DM.cdsGrupoEmpresa.Open;
  Pesquisa(DM.cdsGrupoEmpresa,['NOME_DO_GRUPO','ID_GRUPO_EMPRESA'],['Grupo Cliente','C�digo'],[40,4],'','','','','Grupo Cliente','Grupo Cliente');
  edtCli.Text        := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsString;
  lblCliente.Caption := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
  DBLookupComboBox1.SetFocus;
end;

procedure TfrmRelatorioProdMalharia.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;
procedure TfrmRelatorioProdMalharia.SpeedButton4Click(Sender: TObject);
begin
  cdsFornecedor.Close;
end;

end.
