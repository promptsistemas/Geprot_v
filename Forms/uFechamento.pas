unit uFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RLReport, Vcl.ComCtrls,
  RLFilters, RLPDFFilter, Vcl.Imaging.pngimage;

type
  TfrmFechamento = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    lblCliente: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    edtCli: TEdit;
    BB_LOCALIZAR: TBitBtn;
    BB_IMPRIMIR: TBitBtn;
    dsFornecedor: TDataSource;
    cdsFornecedor: TClientDataSet;
    dspFornecedor: TDataSetProvider;
    qFornecedor: TSQLQuery;
    dsServicos: TDataSource;
    cdsServicos: TClientDataSet;
    dspServicos: TDataSetProvider;
    qServicos: TSQLQuery;
    qServicosID_SERVICO_TINTURARIA: TIntegerField;
    qServicosID_SERVICO: TIntegerField;
    qServicosID_PRECO_TINTURARIA: TIntegerField;
    qServicosID_ARTIGO_TINTURARIA: TIntegerField;
    qServicosID_ARTIGO: TIntegerField;
    qServicosVALOR: TFMTBCDField;
    qServicosDESCRICAO: TStringField;
    qServicosQUANT: TFMTBCDField;
    qServicosTOTAL: TFMTBCDField;
    cdsServicosID_SERVICO_TINTURARIA: TIntegerField;
    cdsServicosID_SERVICO: TIntegerField;
    cdsServicosID_PRECO_TINTURARIA: TIntegerField;
    cdsServicosID_ARTIGO_TINTURARIA: TIntegerField;
    cdsServicosID_ARTIGO: TIntegerField;
    cdsServicosVALOR: TFMTBCDField;
    cdsServicosDESCRICAO: TStringField;
    cdsServicosQUANT: TFMTBCDField;
    cdsServicosTOTAL: TFMTBCDField;
    DBGrid1: TDBGrid;
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
    Label5: TLabel;
    ME_INI: TMaskEdit;
    Label6: TLabel;
    ME_FIM: TMaskEdit;
    dsNotas: TDataSource;
    cdsNotas: TClientDataSet;
    dspNotas: TDataSetProvider;
    qNotas: TSQLQuery;
    qNotasID_ITEM_PRODUCAO: TIntegerField;
    qNotasID_PRODUCAO: TIntegerField;
    qNotasID_MATERIA_PRIMA: TIntegerField;
    qNotasQUANT_FATURADO: TFMTBCDField;
    qNotasVL_UNIT: TFMTBCDField;
    qNotasVL_TOTAL: TFMTBCDField;
    qNotasVL_UNIT_REAL: TFMTBCDField;
    qNotasVL_TOTAL_REAL: TFMTBCDField;
    qNotasQUANT_PROD: TFMTBCDField;
    qNotasCLIENTE: TStringField;
    qNotasFORNECEDOR: TStringField;
    cdsNotasID_ITEM_PRODUCAO: TIntegerField;
    cdsNotasID_PRODUCAO: TIntegerField;
    cdsNotasID_MATERIA_PRIMA: TIntegerField;
    cdsNotasQUANT_FATURADO: TFMTBCDField;
    cdsNotasVL_UNIT: TFMTBCDField;
    cdsNotasVL_TOTAL: TFMTBCDField;
    cdsNotasVL_UNIT_REAL: TFMTBCDField;
    cdsNotasVL_TOTAL_REAL: TFMTBCDField;
    cdsNotasQUANT_PROD: TFMTBCDField;
    cdsNotasCLIENTE: TStringField;
    cdsNotasFORNECEDOR: TStringField;
    DBGrid2: TDBGrid;
    qNotasNR_NOTA_FISCAL: TIntegerField;
    qNotasNR_NF_REMESSA: TIntegerField;
    cdsNotasNR_NOTA_FISCAL: TIntegerField;
    cdsNotasNR_NF_REMESSA: TIntegerField;
    dsFaturamento: TDataSource;
    cdsFaturamento: TClientDataSet;
    dspFaturamento: TDataSetProvider;
    qFaturamento: TSQLQuery;
    Panel3: TPanel;
    Label1: TLabel;
    qFaturamentoMyColumn1: TStringField;
    qFaturamentoNR_NOTA_FISCAL: TIntegerField;
    qFaturamentoDT_EMISSAO: TDateField;
    qFaturamentoVL_NOTA: TFMTBCDField;
    qFaturamentoFORNECEDOR: TStringField;
    cdsFaturamentoMyColumn1: TStringField;
    cdsFaturamentoNR_NOTA_FISCAL: TIntegerField;
    cdsFaturamentoDT_EMISSAO: TDateField;
    cdsFaturamentoVL_NOTA: TFMTBCDField;
    cdsFaturamentoFORNECEDOR: TStringField;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Label7: TLabel;
    Panel5: TPanel;
    Label8: TLabel;
    dsNotaQuebra: TDataSource;
    cdsNotaQuebra: TClientDataSet;
    dspNotaQuebra: TDataSetProvider;
    qNotaQuebra: TSQLQuery;
    qNotaQuebraID_NOTA_QUEBRA: TIntegerField;
    qNotaQuebraID_TINGIMENTO: TIntegerField;
    qNotaQuebraID_FOR_TINGIMENTO: TIntegerField;
    qNotaQuebraID_FOR_TINT: TIntegerField;
    qNotaQuebraID_CLIENTE: TIntegerField;
    qNotaQuebraQUANT: TFMTBCDField;
    qNotaQuebraVALOR: TFMTBCDField;
    qNotaQuebraNR_NOTA_QUEBRA: TIntegerField;
    qNotaQuebraMALHARIA: TStringField;
    qNotaQuebraTITURARIA: TStringField;
    cdsNotaQuebraID_NOTA_QUEBRA: TIntegerField;
    cdsNotaQuebraID_TINGIMENTO: TIntegerField;
    cdsNotaQuebraID_FOR_TINGIMENTO: TIntegerField;
    cdsNotaQuebraID_FOR_TINT: TIntegerField;
    cdsNotaQuebraID_CLIENTE: TIntegerField;
    cdsNotaQuebraQUANT: TFMTBCDField;
    cdsNotaQuebraVALOR: TFMTBCDField;
    cdsNotaQuebraNR_NOTA_QUEBRA: TIntegerField;
    cdsNotaQuebraMALHARIA: TStringField;
    cdsNotaQuebraTITURARIA: TStringField;
    DBGrid4: TDBGrid;
    qNotaQuebraDT_EMISSAO: TDateField;
    cdsNotaQuebraDT_EMISSAO: TDateField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QR_FECHAMENTO: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    qNotasNOME_MATERIA: TStringField;
    cdsNotasNOME_MATERIA: TStringField;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLBand6: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    qNotasDT_EMISSAO: TDateField;
    cdsNotasDT_EMISSAO: TDateField;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    L_DIAS: TLabel;
    RLLabel11: TRLLabel;
    RLL_dias: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand7: TRLBand;
    RLLabel12: TRLLabel;
    RLBand8: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand9: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand10: TRLBand;
    RLLabel17: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    L_CUSTO: TLabel;
    RLL_CUSTO: TRLLabel;
    L_COMPRA_MATERIA: TLabel;
    RLBand11: TRLBand;
    RLLabel18: TRLLabel;
    RLL_COMPRA_MATERIA: TRLLabel;
    RLL_COMPRA_MATERIA_TOTAL: TRLLabel;
    L_COMPRA_MATERIA_TOTAL: TLabel;
    RLL_CUSTO_TOTAL: TRLLabel;
    L_CUSTO_TOTAL: TLabel;
    RLBand12: TRLBand;
    L_SALDO: TLabel;
    L_PERCENTUAL: TLabel;
    RLL_SALDO: TRLLabel;
    RLL_PERCENTUAL: TRLLabel;
    RLLabel19: TRLLabel;
    RLL_TOTAL_CUSTO_QUERA: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand13: TRLBand;
    RLLabel21: TRLLabel;
    RLL_CUSTO_TOTAL_MALAHA_ACABADA: TRLLabel;
    RLL_SOMA_CUSTO_TOTAL: TRLLabel;
    RLBand14: TRLBand;
    RLLabel24: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand15: TRLBand;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand16: TRLBand;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand17: TRLBand;
    RLLabel30: TRLLabel;
    RLBand18: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLBand19: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    qNotasID_FORNECEDOR: TIntegerField;
    cdsNotasID_FORNECEDOR: TIntegerField;
    qNotasID_FORN_REM: TIntegerField;
    cdsNotasID_FORN_REM: TIntegerField;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText8: TRLDBText;
    dsQuebraEstamparia: TDataSource;
    cdsQuebraEstamparia: TClientDataSet;
    dspQuebraEstamparia: TDataSetProvider;
    qQuebraEstamparia: TSQLQuery;
    qQuebraEstampariaID_NOTA_QUEBRA: TIntegerField;
    qQuebraEstampariaID_TINGIMENTO: TIntegerField;
    qQuebraEstampariaID_FOR_TINGIMENTO: TIntegerField;
    qQuebraEstampariaID_FOR_TINT: TIntegerField;
    qQuebraEstampariaID_CLIENTE: TIntegerField;
    qQuebraEstampariaQUANT: TFMTBCDField;
    qQuebraEstampariaVALOR: TFMTBCDField;
    qQuebraEstampariaNR_NOTA_QUEBRA: TIntegerField;
    cdsQuebraEstampariaID_NOTA_QUEBRA: TIntegerField;
    cdsQuebraEstampariaID_TINGIMENTO: TIntegerField;
    cdsQuebraEstampariaID_FOR_TINGIMENTO: TIntegerField;
    cdsQuebraEstampariaID_FOR_TINT: TIntegerField;
    cdsQuebraEstampariaID_CLIENTE: TIntegerField;
    cdsQuebraEstampariaQUANT: TFMTBCDField;
    cdsQuebraEstampariaVALOR: TFMTBCDField;
    cdsQuebraEstampariaNR_NOTA_QUEBRA: TIntegerField;
    RLL_QUEBRA: TRLLabel;
    RLL_VALOR: TRLLabel;
    RLL_PERCENTUAL_E: TRLLabel;
    RLBand20: TRLBand;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel39: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_LOCALIZARClick(Sender: TObject);
    procedure edtCliExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure edtCliKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamento: TfrmFechamento;
  qQuebra : Integer;
  vCustoMateria, vCusto, vTotalQuebra, vCompraMateriaTotal, vCustoTotal : Double;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM;

procedure TfrmFechamento.BB_IMPRIMIRClick(Sender: TObject);
begin
  vTotalQuebra := (qQuebra * vCustoMateria);
  RLL_dias.Caption := L_DIAS.Caption+ ' Dias ';
  RLL_CUSTO.Caption := 'R$ '+L_CUSTO.Caption;
  RLL_CUSTO_TOTAL.Caption := 'R$ '+L_CUSTO_TOTAL.Caption;

  RLL_COMPRA_MATERIA.Caption := 'R$ '+L_COMPRA_MATERIA.Caption;
  RLL_COMPRA_MATERIA_TOTAL.Caption := 'R$ '+L_COMPRA_MATERIA_TOTAL.Caption;

  RLL_SALDO.Caption   := L_SALDO.Caption;
  RLL_PERCENTUAL.Caption   := L_PERCENTUAL.Caption+' %';

  RLL_TOTAL_CUSTO_QUERA.Caption := ' R$ '+FormatFloat('###,###0.00',vTotalQuebra);
  QR_FECHAMENTO.Preview(nil);
end;

procedure TfrmFechamento.BB_LOCALIZARClick(Sender: TObject);
Var
 sSqlServico, sSqlNotas, sSqlFaturamento, sSqlNotaQuebra : string;
begin
  if (ME_INI.Text ='  /  /    ') and (ME_FIM.Text ='  /  /    ') then
  begin
    ShowMessage('Favor Informar um Per�odo');
    ME_INI.SetFocus;
    Exit
  end;

    sSqlNotas := ' SELECT  IR.id_item_producao, ir.id_producao, ir.id_materia_prima, ir.quant_faturado, ir.vl_unit, '+
                 ' ir.vl_total, ir.vl_unit_real, ir.vl_total_real, ir.quant_prod, rp.nr_nota_fiscal, rp.nr_nf_remessa,rp.dt_emissao,'+
                 ' C.r_social AS CLIENTE, f.id_fornecedor, rp.id_forn_rem, F.nome AS FORNECEDOR, MP.nome_materia '+
                 ' FROM tb_item_producao IR '+
                 ' JOIN tb_producao RP ON (RP.id_producao = IR.id_producao)' +
                 ' JOIN tb_cliente C ON (C.id_cliente = RP.id_cliente) '+
                 ' JOIN tb_fornecedor F ON (F.id_fornecedor = RP.id_forncedor)'+
                 ' JOIN tb_materia_prima MP ON (MP.id_materia = IR.id_materia_prima)'+
                 ' WHERE RP.id_cliente = '+edtCli.Text+
                 ' AND RP.dt_emissao BETWEEN '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)));

    cdsNotas.Close;
    cdsNotas.CommandText := sSqlNotas;
    cdsNotas.Open;
    if cdsNotas.IsEmpty then
    begin
      ShowMessage('Nenhum Registro de Fio Encontrado.');
      cdsNotas.Close;
    end
    else
    begin
     DBGrid1.SetFocus;
     BB_IMPRIMIR.Enabled := True;

     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' SELECT SUM(ir.vl_unit), SUM(IR.vl_total) FROM tb_item_producao IR'+
                                   ' JOIN tb_producao RP ON (RP.id_producao = IR.id_producao)'+
                                   ' JOIN tb_cliente C ON (C.id_cliente = RP.id_cliente)'+
                                   ' JOIN tb_fornecedor F ON (F.id_fornecedor = RP.id_forncedor)'+
                                   ' JOIN tb_materia_prima MP ON (MP.id_materia = IR.id_materia_prima)'+
                                   ' where RP.id_cliente = '+edtCli.Text+
                                   ' AND RP.dt_emissao BETWEEN '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                  +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)));
     DM.cdsDinamica.Open;

     L_COMPRA_MATERIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
     L_COMPRA_MATERIA_TOTAL.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);
     vCustoMateria := DM.cdsDinamica.Fields[0].AsFloat;
     vCompraMateriaTotal := DM.cdsDinamica.Fields[1].AsFloat;
    end;



  sSqlServico := ' SELECT  ST.id_servico_tinturaria, st.id_servico, st.id_preco_tinturaria, st.id_artigo_tinturaria, st.id_artigo, st.valor,  s.descricao, '+
                 ' ( SELECT sum(IR.quant_faturado) FROM tb_item_remessa_producao IR '+
                 ' JOIN tb_remessa_producao RP ON (RP.id_remessa = IR.id_remessa) '+
                 ' JOIN tb_cliente C ON (C.id_cliente = RP.id_cliente)            '+
                 ' JOIN tb_fornecedor F ON (F.id_fornecedor = RP.id_forn_tint)    '+
                 ' WHERE C.id_grupo_empresa = '+edtCli.Text+
                 ' AND F.id_fornecedor = '+cdsFornecedorID_FORNECEDOR.AsString+
                 ' AND RP.dt_emissao BETWEEN '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                 ' )AS QUANT, '+
                 ' ST.valor *  ( SELECT sum(IR.quant_faturado) FROM tb_item_remessa_producao IR '+
                 ' JOIN tb_remessa_producao RP ON (RP.id_remessa = IR.id_remessa)'+
                 ' JOIN tb_cliente C ON (C.id_cliente = RP.id_cliente)           '+
                 ' JOIN tb_fornecedor F ON (F.id_fornecedor = RP.id_forn_tint)' +
                 ' WHERE C.id_grupo_empresa = '+edtCli.Text+
                 ' AND F.id_fornecedor = '+cdsFornecedorID_FORNECEDOR.AsString+
                 ' AND RP.dt_emissao BETWEEN '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                 ' ) AS TOTAL FROM tb_servico_tinturaria ST '+
                 ' JOIN tb_servico S ON (S.id_servico = ST.id_servico) '+
                 ' JOIN tb_preco_tinturaria P ON (P.id_preco_tinturaria = ST.id_preco_tinturaria)'+
                 ' JOIN tb_grupo_empresa G ON (G.id_grupo_empresa = P.id_grupo_empresa)'+
                 ' WHERE G.id_grupo_empresa = '+edtCli.Text+
                 ' AND P.id_fornecedor = '+cdsFornecedorID_FORNECEDOR.AsString;

  cdsServicos.Close;
  cdsServicos.IndexFieldNames:='' ;
  cdsServicos.CommandText := sSqlServico;
  cdsServicos.Open;
    if cdsServicos.IsEmpty then
    begin
      ShowMessage('Nenhum Registro de Servi�os Encontrado.');
      cdsServicos.Close;
    end
    else
    begin
     DBGrid1.SetFocus;
     BB_IMPRIMIR.Enabled := True;

     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' SELECT sum(st.valor) FROM tb_servico_tinturaria ST '+
                                   ' JOIN tb_servico S ON (S.id_servico = ST.id_servico)'+
                                   ' JOIN tb_preco_tinturaria P ON (P.id_preco_tinturaria = ST.id_preco_tinturaria)'+
                                   ' JOIN tb_grupo_empresa G ON (G.id_grupo_empresa = P.id_grupo_empresa)'+
                                   ' where G.id_grupo_empresa = '+edtCli.Text+
                                   ' AND P.id_fornecedor = '+cdsFornecedorID_FORNECEDOR.AsString;
     DM.cdsDinamica.Open;

     L_CUSTO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
     vCusto          := DM.cdsDinamica.Fields[0].AsFloat;

     //
     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText :=   ' SELECT  sum(ST.valor) *  ( '+
                                     ' SELECT sum(IR.quant_faturado) FROM tb_item_remessa_producao IR '+
                                     ' JOIN tb_remessa_producao RP ON (RP.id_remessa = IR.id_remessa) '+
                                     ' JOIN tb_cliente C ON (C.id_cliente = RP.id_cliente)            '+
                                     ' JOIN tb_fornecedor F ON (F.id_fornecedor = RP.id_forn_tint)    '+
                                     ' WHERE C.id_grupo_empresa = '+edtCli.Text+
                                     ' AND F.id_fornecedor = '+cdsFornecedorID_FORNECEDOR.AsString+
                                     ' ) AS TOTAL '+
                                     ' FROM tb_servico_tinturaria ST '+
                                     ' JOIN tb_servico S ON (S.id_servico = ST.id_servico)'+
                                     ' JOIN tb_preco_tinturaria P ON (P.id_preco_tinturaria = ST.id_preco_tinturaria)'+
                                     ' JOIN tb_grupo_empresa G ON (G.id_grupo_empresa = P.id_grupo_empresa) '+
                                     ' where G.id_grupo_empresa ='+edtCli.Text+
                                     ' AND P.id_fornecedor = '+cdsFornecedorID_FORNECEDOR.AsString;
     DM.cdsDinamica.Open;
     L_CUSTO_TOTAL.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
     vCustoTotal := DM.cdsDinamica.Fields[0].AsFloat;
     // SALDO

     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' SELECT RM.SALDO, RM.percentual FROM TB_REL_PROD_MALHARIA RM '+
                                   ' JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = RM.ID_MATERIA_PRIMA) '+
                                   ' WHERE RM.id_grupo_empresa = '+edtCli.Text+
                                   ' AND RM.nome = '+QuotedStr(cdsNotasFORNECEDOR.AsString);
     DM.cdsDinamica.Open;

     L_SALDO.Caption := FormatFloat('0',DM.cdsDinamica.Fields[0].AsInteger);
     L_PERCENTUAL.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);
     qQuebra := DM.cdsDinamica.Fields[0].AsInteger;


     cdsQuebraEstamparia.Close;
     cdsQuebraEstamparia.CommandText := ' SELECT  NQ.id_nota_quebra, nq.id_tingimento, nq.id_for_tingimento, nq.id_for_tint, '+
                                        ' nq.id_cliente, nq.quant, nq.valor, nq.nr_nota_quebra FROM tb_nota_quebra NQ '+
                                        ' JOIN tb_tingimento T ON (T.id_tingimento = NQ.id_tingimento)'+
                                        ' WHERE T.id_cliente = '+edtCli.Text+
                                        ' AND T.id_forn_tint = '+cdsFornecedorID_FORNECEDOR.AsString+
                                        ' AND NQ.quant <> '+IntToStr(DM.cdsDinamica.Fields[0].AsInteger);

     cdsQuebraEstamparia.Open;

     RLL_QUEBRA.Caption := cdsQuebraEstamparia.Fields[5].AsString;
     RLL_VALOR.Caption :=' R$ '+FormatFloat('###,###0.00',cdsQuebraEstamparia.Fields[6].AsFloat);


     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' select (NR.quant / '+
                                   '     (              '+
                                   '         SELECT T.quant_faturado '+
                                   '         FROM tb_tingimento t  '+
                                   '         JOIN tb_fornecedor F ON (F.id_fornecedor = t.id_for_tingimento) '+
                                   '         WHERE t.id_cliente = '+edtCli.Text+
                                   '         AND t.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))+
                                   ' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                                   ' AND T.id_for_tingimento = '+cdsFornecedorID_FORNECEDOR.AsString+
                                   '     )-1) * (100) * -1 '+
                                   '     FROM tb_nota_retorno NR '+
                                   '     JOIN tb_tingimento T ON (T.id_tingimento = NR.id_tingimento)'+
                                   '     JOIN tb_fornecedor F ON (F.id_fornecedor = NR.id_for_tingimento)'+
                                   '     WHERE NR.id_cliente = '+edtCli.Text+
                                   '     AND T.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))+
                                   ' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                                   ' AND T.id_for_tingimento = '+cdsFornecedorID_FORNECEDOR.AsString;


     DM.cdsDinamica.Open;
     RLL_PERCENTUAL_E.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat)+' %';





   end;


    sSqlFaturamento :=  'SELECT ''FIO'', p.nr_nota_fiscal, p.dt_emissao, p.vl_nota, F.nome AS FORNECEDOR '+
                        ' FROM tb_producao p '+
                        ' JOIN tb_fornecedor F ON (F.id_fornecedor = P.id_forncedor)'+
                        ' WHERE P.id_cliente = '+edtCli.Text+
                        ' AND P.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                        ' AND P.id_forn_rem = '+cdsNotasID_FORN_REM.AsString+
                        '  union '+
                        '  SELECT ''MALHARIA'', rp.nr_nota_fiscal, rp.dt_emissao, rp.vl_nota, F.nome AS FORNECEDOR'+
                        '  FROM tb_remessa_producao Rp '+
                        '  JOIN tb_fornecedor F ON (F.id_fornecedor = RP.id_for_remessa)'+
                        '  WHERE RP.id_cliente = '+edtCli.Text+
                        '  AND RP.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                        '  AND RP.id_forn_tint = '+cdsFornecedorID_FORNECEDOR.AsString+

                        '  union '+
                        '  SELECT ''TINTURARIA'', t.nr_nota_fiscal, t.dt_emissao, t.vl_nota, F.nome AS FORNECEDOR'+
                        '  FROM tb_tingimento t '+
                        '  JOIN tb_fornecedor F ON (F.id_fornecedor = t.id_for_tingimento) '+
                        '  WHERE t.id_cliente = '+edtCli.Text+
                        '  AND t.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                        '  AND T.id_for_tingimento = '+cdsFornecedorID_FORNECEDOR.AsString;

    cdsFaturamento.Close;
    cdsFaturamento.CommandText := sSqlFaturamento;
    cdsFaturamento.Open;

    if cdsFaturamento.IsEmpty then
    begin
      ShowMessage('Nenhum Registro de Faturamento Encontrado.');
      cdsFaturamento.Close;
    end
    else
    begin
     DBGrid1.SetFocus;
     BB_IMPRIMIR.Enabled := True;
    end;

    sSqlNotaQuebra := ' SELECT Q.id_nota_quebra,q.id_tingimento,q.id_for_tingimento,q.id_for_tint,q.id_cliente,q.quant,q.valor, '+
                      ' q.nr_nota_quebra,t.dt_emissao,F.nome AS MALHARIA,FF.nome AS TITURARIA FROM tb_nota_quebra Q '+
                      ' join tb_fornecedor F ON (F.id_fornecedor = Q.id_for_tingimento)'+
                      ' join tb_fornecedor FF ON (FF.id_fornecedor = Q.id_for_tint)'+
                      ' JOIN tb_tingimento T ON (T.id_tingimento = Q.id_tingimento)'+
                      ' WHERE T.id_cliente = '+edtCli.Text+
                      ' AND T.dt_emissao BETWEEN '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_INI.Text)))
                                     +' AND '+QuotedStr(FormatDateTime('MM/DD/YYYY',StrToDate(ME_FIM.Text)))+
                      ' AND T.id_forn_tint = '+cdsFornecedorID_FORNECEDOR.AsString;

    cdsNotaQuebra.Close;
    cdsNotaQuebra.CommandText := sSqlNotaQuebra;
    cdsNotaQuebra.Open;

    if cdsNotaQuebra.IsEmpty then
    begin
      ShowMessage('Nenhum Registro de Nota de Quebra Encontrado.');
      cdsNotaQuebra.Close;
    end
    else
    begin
     DBGrid1.SetFocus;
     BB_IMPRIMIR.Enabled := True;
    end;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT  T.dt_emissao - '+
                                  ' (SELECT RP.dt_emissao'+
                                  ' FROM tb_remessa_producao RP'+
                                  ' WHERE RP.id_cliente = '+edtCli.Text+
                                  ' AND RP.id_forn_tint = '+cdsFornecedorID_FORNECEDOR.AsString+
                                  ' AND RP.dt_emissao BETWEEN RP.dt_emissao AND RP.dt_emissao '+
                                  ' AND RP.nf_quebra =''N'')  AS DIAS '+
                                  ' FROM tb_tingimento T '+
                                  ' WHERE T.id_cliente = '+edtCli.Text+
                                  ' AND T.id_for_tingimento = '+cdsFornecedorID_FORNECEDOR.AsString+
                                  ' AND T.dt_emissao BETWEEN T.dt_emissao AND T.dt_emissao';
    DM.cdsDinamica.Open;

    if DM.cdsDinamica.IsEmpty then
    begin

    end
    else
    begin
      L_DIAS.Caption := DM.cdsDinamica.Fields[0].AsString;
    end;
end;

procedure TfrmFechamento.DBLookupComboBox1Enter(Sender: TObject);
begin
  cdsFornecedor.Open;
end;

procedure TfrmFechamento.edtCliExit(Sender: TObject);
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

procedure TfrmFechamento.edtCliKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmFechamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmFechamento := nil;
end;

procedure TfrmFechamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmFechamento.RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
Var
 vTotal, vSomaCustoTotal : Double;
 vResult : string;
begin
  vTotal:= (vCustoMateria+vCusto);
  vSomaCustoTotal :=  vCompraMateriaTotal+vCustoTotal;
  vResult := FormatFloat('###,###0.00',vSomaCustoTotal);
  RLL_CUSTO_TOTAL_MALAHA_ACABADA.Caption := ' R$  '+FloatToStr(vTotal);
  RLL_SOMA_CUSTO_TOTAL.Caption := ' R$  '+vResult;
end;

procedure TfrmFechamento.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if rlband9.Color =cl3dlight then
     rlband9.Color := clWhite
  else
     rlband9.Color:=cl3dlight;
end;

procedure TfrmFechamento.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Close;
  DM.cdsGrupoEmpresa.Open;
  Pesquisa(DM.cdsGrupoEmpresa,['NOME_DO_GRUPO','ID_GRUPO_EMPRESA'],['Grupo Cliente','C�digo'],[40,4],'','','','','Grupo Cliente','Grupo Cliente');
  edtCli.Text        := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsString;
  lblCliente.Caption := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
  DBLookupComboBox1.SetFocus;
end;

procedure TfrmFechamento.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.
