unit uQuebraFios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DB, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TfrmQuebraFio = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    itemProcucao: TPanel;
    DBNavigator2: TDBNavigator;
    BB_INCLUIR: TBitBtn;
    BB_ALTERAR: TBitBtn;
    BB_CANC: TBitBtn;
    BB_EXC: TBitBtn;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label12: TLabel;
    p_item: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    P_PRODUCAO: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    P_BOTOES: TPanel;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBEdit17: TDBEdit;
    Faturado: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    BB_SALVAR: TBitBtn;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    qItemNotaFiscal: TSQLQuery;
    dspItemNotaFiscal: TDataSetProvider;
    cdsItemNotaFiscal: TClientDataSet;
    dsItemNotaFiscal: TDataSource;
    qItemNotaFiscalID_ITEM_PRODUCAO: TIntegerField;
    qItemNotaFiscalID_PRODUCAO: TIntegerField;
    qItemNotaFiscalID_MATERIA_PRIMA: TIntegerField;
    qItemNotaFiscalQUANT_FATURADO: TFMTBCDField;
    qItemNotaFiscalVL_UNIT: TFMTBCDField;
    qItemNotaFiscalVL_TOTAL: TFMTBCDField;
    qItemNotaFiscalNOME_MATERIA: TStringField;
    qItemNotaFiscalPERC_FIO: TFMTBCDField;
    cdsItemNotaFiscalID_ITEM_PRODUCAO: TIntegerField;
    cdsItemNotaFiscalID_PRODUCAO: TIntegerField;
    cdsItemNotaFiscalID_MATERIA_PRIMA: TIntegerField;
    cdsItemNotaFiscalQUANT_FATURADO: TFMTBCDField;
    cdsItemNotaFiscalVL_UNIT: TFMTBCDField;
    cdsItemNotaFiscalVL_TOTAL: TFMTBCDField;
    cdsItemNotaFiscalNOME_MATERIA: TStringField;
    cdsItemNotaFiscalPERC_FIO: TFMTBCDField;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBEdit16: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    SpeedButton6: TSpeedButton;
    Label21: TLabel;
    Label22: TLabel;
    qDinamicaFios: TSQLQuery;
    dspDinamicaFios: TDataSetProvider;
    cdsDinamicaFios: TClientDataSet;
    dsDinamicaFios: TDataSource;
    qDinamicaFiosID_PRODUCAO: TIntegerField;
    qDinamicaFiosID_MATERIA_PRIMA: TIntegerField;
    qDinamicaFiosNOME_MATERIA: TStringField;
    qDinamicaFiosQUANT_FATURADO: TFMTBCDField;
    qDinamicaFiosID_FORNCEDOR: TIntegerField;
    qDinamicaFiosNOME: TStringField;
    qDinamicaFiosID_CLIENTE: TIntegerField;
    qDinamicaFiosR_SOCIAL: TStringField;
    qDinamicaFiosID_ARTIGO: TIntegerField;
    qDinamicaFiosNOME_ARTIGO: TStringField;
    cdsDinamicaFiosID_PRODUCAO: TIntegerField;
    cdsDinamicaFiosID_MATERIA_PRIMA: TIntegerField;
    cdsDinamicaFiosNOME_MATERIA: TStringField;
    cdsDinamicaFiosQUANT_FATURADO: TFMTBCDField;
    cdsDinamicaFiosID_FORNCEDOR: TIntegerField;
    cdsDinamicaFiosNOME: TStringField;
    cdsDinamicaFiosID_CLIENTE: TIntegerField;
    cdsDinamicaFiosR_SOCIAL: TStringField;
    cdsDinamicaFiosID_ARTIGO: TIntegerField;
    cdsDinamicaFiosNOME_ARTIGO: TStringField;
    dspVerifcaSaldoFios: TDataSetProvider;
    cdsVerifcaSaldoFios: TClientDataSet;
    spVerifcaSaldoFios: TSQLStoredProc;
    P_SALDO_FIOS: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    BB_CONFIRMAR: TBitBtn;
    B_CANCELAR: TBitBtn;
    DBGrid3: TDBGrid;
    qDinamicaFiosNR_NOTA_FISCAL: TIntegerField;
    qDinamicaFiosNR_NF_REMESSA: TIntegerField;
    cdsDinamicaFiosNR_NOTA_FISCAL: TIntegerField;
    cdsDinamicaFiosNR_NF_REMESSA: TIntegerField;
    qDinamicaFiosQUANT_PROD: TFMTBCDField;
    cdsDinamicaFiosQUANT_PROD: TFMTBCDField;
    qDinamicaFiosSALDO: TFMTBCDField;
    cdsDinamicaFiosSALDO: TFMTBCDField;
    spAtuSaldoFios: TSQLStoredProc;
    cdsAtuSaldoFios: TClientDataSet;
    dspAtuSaldoFios: TDataSetProvider;
    cdsItemProducao: TClientDataSet;
    dspItemProducao: TDataSetProvider;
    dsItemProducao: TDataSource;
    qItemProducao: TSQLDataSet;
    qItemProducaoID_PRODUCAO: TIntegerField;
    qItemProducaoID_MATERIA_PRIMA: TIntegerField;
    qItemProducaoQUANT_FATURADO: TFMTBCDField;
    qItemProducaoQUANT_PROD: TFMTBCDField;
    qItemProducaoID_FORNCEDOR: TIntegerField;
    qItemProducaoID_CLIENTE: TIntegerField;
    cdsItemProducaoID_PRODUCAO: TIntegerField;
    cdsItemProducaoID_MATERIA_PRIMA: TIntegerField;
    cdsItemProducaoQUANT_FATURADO: TFMTBCDField;
    cdsItemProducaoQUANT_PROD: TFMTBCDField;
    cdsItemProducaoID_FORNCEDOR: TIntegerField;
    cdsItemProducaoID_CLIENTE: TIntegerField;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    qContasPagar: TSQLDataSet;
    qContasPagarID_CONTAS_PAGAR: TIntegerField;
    qContasPagarID_CLIENTE: TIntegerField;
    qContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    qContasPagarID_USUARIO: TIntegerField;
    qContasPagarID_LOJA: TIntegerField;
    qContasPagarDT_EMISSAO: TDateField;
    qContasPagarDT_VENCIMENTO: TDateField;
    qContasPagarDT_PAGAMENTO: TDateField;
    qContasPagarQT_DIAS: TIntegerField;
    qContasPagarQT_DIAS_ATRAZO: TIntegerField;
    qContasPagarQT_PARCELA: TIntegerField;
    qContasPagarNR_DOC: TStringField;
    qContasPagarVL_COMPRA: TFMTBCDField;
    qContasPagarVL_PARCELA: TFMTBCDField;
    qContasPagarNR_PARCELA: TStringField;
    qContasPagarSTATUS: TStringField;
    qContasPagarDESCRICAO_PAGAMENTO: TStringField;
    qContasPagarCLIENTE: TStringField;
    qContasPagarFORNECEDOR: TStringField;
    qContasPagarFORN_REMESSA: TStringField;
    qContasPagarNOME_USUARIO: TStringField;
    qContasPagarEMPRESA: TStringField;
    qContasPagarID_FORNECEDOR: TIntegerField;
    qContasPagarID_FORN_REM: TIntegerField;
    qContasPagarNR_NOTA_FISCAL: TIntegerField;
    qContasPagarNR_NF_REMESSA: TIntegerField;
    qContasPagarORIGEM: TStringField;
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarID_CONTAS_PAGAR: TIntegerField;
    cdsContasPagarID_CLIENTE: TIntegerField;
    cdsContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    cdsContasPagarID_USUARIO: TIntegerField;
    cdsContasPagarID_LOJA: TIntegerField;
    cdsContasPagarDT_EMISSAO: TDateField;
    cdsContasPagarDT_VENCIMENTO: TDateField;
    cdsContasPagarDT_PAGAMENTO: TDateField;
    cdsContasPagarQT_DIAS: TIntegerField;
    cdsContasPagarQT_DIAS_ATRAZO: TIntegerField;
    cdsContasPagarQT_PARCELA: TIntegerField;
    cdsContasPagarNR_DOC: TStringField;
    cdsContasPagarVL_COMPRA: TFMTBCDField;
    cdsContasPagarVL_PARCELA: TFMTBCDField;
    cdsContasPagarNR_PARCELA: TStringField;
    cdsContasPagarSTATUS: TStringField;
    cdsContasPagarDESCRICAO_PAGAMENTO: TStringField;
    cdsContasPagarCLIENTE: TStringField;
    cdsContasPagarFORNECEDOR: TStringField;
    cdsContasPagarFORN_REMESSA: TStringField;
    cdsContasPagarNOME_USUARIO: TStringField;
    cdsContasPagarEMPRESA: TStringField;
    cdsContasPagarID_FORNECEDOR: TIntegerField;
    cdsContasPagarID_FORN_REM: TIntegerField;
    cdsContasPagarNR_NOTA_FISCAL: TIntegerField;
    cdsContasPagarNR_NF_REMESSA: TIntegerField;
    cdsContasPagarORIGEM: TStringField;
    dsContasPagar: TDataSource;
    L_AVISO: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit18: TDBEdit;
    Label8: TLabel;
    qDinamicaFiosQT_ARTIGO: TIntegerField;
    cdsDinamicaFiosQT_ARTIGO: TIntegerField;
    BB_CONCLUIR: TBitBtn;
    qContasPagarID_PRODUCAO: TIntegerField;
    cdsContasPagarID_PRODUCAO: TIntegerField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure BB_SALVARClick(Sender: TObject);
    procedure BB_INCLUIRClick(Sender: TObject);
    procedure BB_CANCClick(Sender: TObject);
    procedure BB_ALTERARClick(Sender: TObject);
    procedure BB_EXCClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure B_CANCELARClick(Sender: TObject);
    procedure BB_CONFIRMARClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl2Change(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure BB_CONCLUIRClick(Sender: TObject);
    procedure DBNavigator1DblClick(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure SomaTotal;
    Procedure VerficaSaldoFios;
    Procedure Somapagamentos;
    Procedure ValidacoesFinalizar;
  public
    { Public declarations }
  end;

var
  frmQuebraFio: TfrmQuebraFio;
  Tipo, Tp_operacao : string;
  sSaldo    : Double;
  Resultdo       : Boolean;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uContasPagarMalharia, uPesquisaPadrao, uDmFiscal;

procedure TfrmQuebraFio.BB_ALTERARClick(Sender: TObject);
begin
  if DM.cdsQuebraSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  tp_operacao := 'Edit';
  DM.cdsItemQuebra.Edit;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmQuebraFio.BB_CANCClick(Sender: TObject);
begin
  DM.cdsItemQuebra.Cancel;
  SomaTotal;
  GerenciaBotoes2;

end;

procedure TfrmQuebraFio.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsQuebra.Cancel;
  GerenciaBotoes;
end;

procedure TfrmQuebraFio.BB_EDITARClick(Sender: TObject);
begin
  if DM.cdsQuebraSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Edit';

  DM.cdsQuebra.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmQuebraFio.BB_EXCClick(Sender: TObject);
Var
 NR_NOTA_FISCAL, ID_MATERIA, ID_FORNECEDOR, ID_CLIENTE, ID_PRODUCAO : Integer;

begin
  if DM.cdsQuebraSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

    NR_NOTA_FISCAL := DM.cdsItemQuebraNR_NOTA_FISCAL.AsInteger;
    ID_MATERIA     := DM.cdsItemQuebraID_MATERIA.AsInteger;
    ID_FORNECEDOR  := DM.cdsItemQuebraID_FORNECEDOR.AsInteger;
    ID_CLIENTE     := DM.cdsItemQuebraID_CLIENTE.AsInteger;
    ID_PRODUCAO    := DM.cdsItemQuebraID_PRODUCAO.AsInteger;

  if Application.MessageBox('Deseja Realmente Excluir. S/N ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = IDYES Then
  begin
    DM.cdsItemQuebra.Delete;
    DM.cdsItemQuebra.ApplyUpdates(0);
    cdsAtuSaldoFios.Params[0].AsInteger := NR_NOTA_FISCAL;
    cdsAtuSaldoFios.Params[1].AsInteger := ID_MATERIA;
    cdsAtuSaldoFios.Params[2].AsInteger := ID_FORNECEDOR;
    cdsAtuSaldoFios.Params[3].AsInteger := ID_CLIENTE;
    cdsAtuSaldoFios.Params[4].AsInteger := ID_PRODUCAO;
    cdsAtuSaldoFios.Execute;
    cdsItemProducao.Close;
    cdsItemProducao.Params[0].AsInteger :=  ID_MATERIA;
    cdsItemProducao.Params[1].AsInteger :=  ID_CLIENTE;
    cdsItemProducao.Open;

    VerficaSaldoFios;
    cdsDinamicaFios.Close;

    SomaTotal;
  End
  else
  begin
    ShowMessage('Registro n�o Exclu�do');
    GerenciaBotoes2;
  end;


end;

procedure TfrmQuebraFio.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsQuebraSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if DM.cdsItemQuebra.RecordCount > 0  then
  begin
    ShowMessage('Impossiv�l Excluir Nota. Existe(m) Registro(s) Vinculado(s). Exclua o(s) Registro(s) Antes de Excluir a Nota. ');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsQuebra.Delete;
    DM.cdsQuebra.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Registro N�o Exclu�do');
  end;
    GerenciaBotoes;

  if DM.cdsQuebra.RecordCount > 0 then
  begin
    cdsItemNotaFiscal.Close;
    cdsItemNotaFiscal.Open;
  end;


end;

procedure TfrmQuebraFio.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
   { if DBEdit19.Text = '' then
    begin
      ShowMessage('Favor Informar Tinturaria.');
      DBEdit19.SetFocus;
      Exit;
    end;}
    {if DBEdit16.Text = '' then
    begin
      ShowMessage('Favor Informar N� NF Remessa.');
      DBEdit16.SetFocus;
      Exit;
    end;}
    if DBEdit3.Text = '' then
    begin
      ShowMessage('Favor Informar Malharia.');
      DBEdit3.SetFocus;
      Exit;
    end;

    if DBEdit20.Text = '' then
    begin
      ShowMessage('Favor Informar Cliente.');
      DBEdit20.SetFocus;
      Exit;
    end;


    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText :=' SELECT MAX(ID_REMESSA) FROM TB_REMESSA_PRODUCAO';
    DM.cdsDinamica.Open;

    DM.cdsQuebraID_REMESSA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

    if DM.cdsQuebra.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsQuebra.DisableControls;
      DM.cdsQuebra.ApplyUpdates(0);
//      DM.cdsQuebra.Refresh;
      DM.cdsQuebra.EnableControls;
      GerenCiaBotoes;
      GerenciaBotoes2;
      if DM.cdsQuebra.RecordCount > 0 then
      begin
        cdsItemNotaFiscal.Close;
        cdsItemNotaFiscal.Open;
      end;

      BB_INCLUIRClick(Self);
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsQuebra.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsQuebra.ApplyUpdates(0);
//      DM.cdsItemQuebra.Refresh;
      GerenCiaBotoes;
      GerenciaBotoes2;
      BB_INCLUIRClick(Self);
    end;
  end;

end;

procedure TfrmQuebraFio.BB_INCLUIRClick(Sender: TObject);
begin
  if DM.cdsQuebraSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  Tp_Operacao := 'Insert';

  if DM.cdsQuebra.RecordCount = 0 then
  begin
    ShowMessage('N�o Existe Notas Cadastradas para este Lan�amento.');
    exit;
    BB_CANCClick(Self);
  end;

  DM.cdsItemQuebra.Append;
  DM.cdsItemQuebra.Open;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmQuebraFio.BB_NOVOClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Insert';

  DM.cdsQuebra.Insert;
  DM.cdsQuebraSTATUS.Value := 'A';
  DM.cdsQuebraQUANT_NF.AsFloat := 0;
  DM.cdsQuebraQUANT_FATURADO.AsFloat := 0;
  DM.cdsQuebraQUANT_SALDO.AsFloat := 0;
  DM.cdsQuebraVL_NOTA.AsFloat := 0;
  DM.cdsQuebraVL_POR_FORA.AsFloat := 0;
  DM.cdsQuebraVL_TOTAL_NF.AsFloat := 0;
  DM.cdsQuebraNF_QUEBRA.AsString := 'S';

  DM.cdsQuebraID_FORN_TINT.AsInteger := 7;
  cdsItemNotaFiscal.Close;
//  cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsQuebraID_PRODUCAO.AsInteger;
  cdsItemNotaFiscal.Open;

  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmQuebraFio.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Nota Fiscal Quebra';
  frmPesquisaPadrao.CDS := DM.cdsQuebra;
  frmPesquisaPadrao.Tabela := 'TB_REMESSA_PRODUCAO RP ';
  frmPesquisaPadrao.CampoBusca := 'C.R_SOCIAL';
  frmPesquisaPadrao.CampoBusca2 := 'FF.NOME ';
  frmPesquisaPadrao.CampoBusca3 := 'RP.NR_NOTA_FISCAL';
  frmPesquisaPadrao.CampoChave  := 'FT.NOME';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta Nota Fiscal Malharia';
  frmPesquisaPadrao.Sql            := ' SELECT RP.ID_REMESSA, RP.ID_FOR_REMESSA, RP.STATUS, RP.QUANT_NF, RP.QUANT_FATURADO, '+
                                      ' RP.QUANT_SALDO, RP.ID_CLIENTE, RP.ID_FORNECEDOR, RP.DT_EMISSAO, RP.NR_NOTA_FISCAL,  '+
                                      ' RP.VL_NOTA, RP.VL_POR_FORA, RP.VL_TOTAL_NF, RP.ID_FORN_TINT, RP.NR_NF_REMESSA,      '+
                                      ' RP.TOTAL_ROLOS, C.R_SOCIAL AS CLIENTE, F.NOME AS FORNECEDOR, FF.NOME AS NOME_MALHARIA, FT.NOME AS TITURARIA ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Cliente';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'CLIENTE';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 220;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Malharia';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'NOME_MALHARIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'N� Nota Fiscal';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'NR_NOTA_FISCAL';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 100;


  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

{  Pesquisa(DM.cdsQuebra,['NOME_MALHARIA','NR_NOTA_FISCAL','CLIENTE','DT_EMISSAO'],['Malharia','N� Nota','Cliente','Data Emiss�o'],
    [20,8,20,8],'','','','','Entrada Produto','Entrada Produto');

  GerenciaBotoes2;

  cdsItemNotaFiscal.Close;
//  cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsQuebraID_PRODUCAO.AsInteger;
  cdsItemNotaFiscal.Open;}

end;

procedure TfrmQuebraFio.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmQuebraFio.BB_SALVARClick(Sender: TObject);
begin
  DM.cdsItemQuebra.Cancel;
  SomaTotal;
  GerenciaBotoes2;
end;

procedure TfrmQuebraFio.BB_CONCLUIRClick(Sender: TObject);
begin
   if DM.cdsQuebraSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;
    ValidacoesFinalizar;

    if Resultdo = True then
    begin
      Exit;
    end
    else
    begin
      DM.cdsQuebra.Open;
      DM.cdsQuebra.Edit;
      DM.cdsQuebraSTATUS.Value := 'F';
      DM.cdsQuebra.ApplyUpdates(0);
      DM.cdsQuebra.Refresh;
      ShowMessage('Registro Finalizado Com Sucesso');
    end;

end;

procedure TfrmQuebraFio.BB_CONFIRMARClick(Sender: TObject);
Var
 idEmpresa : string;
begin

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := ' SELECT C.ID_GRUPO_EMPRESA FROM TB_CLIENTE C '+
                                ' WHERE C.ID_CLIENTE = '+cdsDinamicaFiosID_CLIENTE.AsString;
  DM.cdsDinamica.Open;

  idEmpresa := DM.cdsDinamica.Fields[0].AsString;

  DM.cdsItemQuebraID_ARTIGO.AsInteger        := cdsDinamicaFiosID_ARTIGO.AsInteger;
  DM.cdsItemQuebraID_CLIENTE.AsInteger       := cdsDinamicaFiosID_CLIENTE.AsInteger;
  DM.cdsItemQuebraID_FORNECEDOR.AsInteger    := cdsDinamicaFiosID_FORNCEDOR.AsInteger;
  DM.cdsItemQuebraID_FORN_MALHARIA.AsInteger := DM.cdsQuebraID_FOR_REMESSA.AsInteger;
  DM.cdsItemQuebraID_MATERIA.AsInteger       := cdsDinamicaFiosID_MATERIA_PRIMA.AsInteger;
  DM.cdsItemQuebraNR_NOTA_FISCAL.AsInteger   := cdsDinamicaFiosNR_NOTA_FISCAL.AsInteger;
  DM.cdsItemQuebraNR_NF_REMESSA.AsInteger    := cdsDinamicaFiosNR_NF_REMESSA.AsInteger;
  DM.cdsItemQuebraID_PRODUCAO.AsInteger      := cdsDinamicaFiosID_PRODUCAO.AsInteger;
  DM.cdsItemQuebraNOME_MATERIA.AsString      := cdsDinamicaFiosNOME_MATERIA.AsString;
  DM.cdsItemQuebraQUANT_FATURADO.AsFloat     := cdsDinamicaFiosSALDO.AsFloat;
  sSaldo                                      := cdsDinamicaFiosSALDO.AsFloat;
  cdsDinamicaFios.Close;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT IP.VL_ARTIGO FROM TB_ITEM_PRECO_MALHARIA IP '+
                                ' JOIN TB_PRECO_MALHARIA M ON (M.ID_PRECO_MALHARIA = IP.ID_PRECO_MALHARIA)'+
                                ' JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IP.ID_ARTIGO)'+
                                ' WHERE M.ID_MALHARIA = '+DM.cdsQuebraID_FOR_REMESSA.AsString+
                                ' AND M.ID_GRUPO_EMPRESA = '+idEmpresa+
                                ' AND IP.ID_ARTIGO =       '+DM.cdsItemQuebraID_ARTIGO.AsString;
  DM.cdsDinamica.Open;

  DM.cdsItemQuebraVL_UNIT_REAL.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;

  P_SALDO_FIOS.Visible := False;
  DBEdit12.SetFocus;
end;

procedure TfrmQuebraFio.B_CANCELARClick(Sender: TObject);
begin
 cdsDinamicaFios.Close;
 P_SALDO_FIOS.Visible := False;
 DBEdit14.SelectAll;
 DBEdit14.SetFocus;
 DBEdit14.ClearSelection;
end;

procedure TfrmQuebraFio.DBEdit12Exit(Sender: TObject);
begin
  DM.cdsItemQuebraVL_TOTAL.AsFloat := (DM.cdsItemQuebraQUANT_FATURADO.AsFloat*DM.cdsItemQuebraVL_UNIT.AsFloat);
end;

procedure TfrmQuebraFio.DBEdit13Enter(Sender: TObject);
begin
  if NOT(DM.cdsItemQuebraQUANT_FATURADO.IsNull) then
  begin
    DM.cdsItemQuebraVL_TOTAL_REAL.AsFloat := (DM.cdsItemQuebraQUANT_FATURADO.AsFloat*DM.cdsItemQuebraVL_UNIT_REAL.AsFloat)-
                                              (DM.cdsItemQuebraVL_TOTAL.AsFloat);

  end;

end;

procedure TfrmQuebraFio.DBEdit13Exit(Sender: TObject);
begin
  if tp_operacao = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(ID_ITEM_REMESSA) FROM TB_ITEM_REMESSA_PRODUCAO ';
      DM.cdsDinamica.Open;
      DM.cdsItemQuebraID_ITEM_REMESSA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      if DM.cdsItemQuebra.ApplyUpdates(0) <> 0 then
      begin
         ShowMessage('Erro ao Gravar Registro. Consulte o Suporte! ');
      end
      else
      begin
        DM.cdsItemQuebra.ApplyUpdates(0);
        cdsAtuSaldoFios.Params[0].AsInteger := DM.cdsItemQuebraNR_NOTA_FISCAL.AsInteger;
        cdsAtuSaldoFios.Params[1].AsInteger := DM.cdsItemQuebraID_MATERIA.AsInteger;
        cdsAtuSaldoFios.Params[2].AsInteger := DM.cdsItemQuebraID_FORNECEDOR.AsInteger;
        cdsAtuSaldoFios.Params[3].AsInteger := DM.cdsItemQuebraID_CLIENTE.AsInteger;
        cdsAtuSaldoFios.Params[4].AsInteger := DM.cdsItemQuebraID_PRODUCAO.AsInteger;
        cdsAtuSaldoFios.Execute;
        cdsItemProducao.Close;
        cdsItemProducao.Params[0].AsInteger :=  DM.cdsItemQuebraID_MATERIA.AsInteger;
        cdsItemProducao.Params[1].AsInteger :=  DM.cdsQuebraID_CLIENTE.AsInteger;
        cdsItemProducao.Open;

        VerficaSaldoFios;
        cdsDinamicaFios.Close;
        SomaTotal;
        BB_INCLUIRClick(Self);
      end;

      //BB_SALVARClick(Self);
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      BB_CANCClick(Self);
    end;
  end;
  if tp_operacao = 'Edit' then
  begin
    if Application.MessageBox('Confirma Altera��o deste Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsItemQuebra.ApplyUpdates(0);
      cdsAtuSaldoFios.Params[0].AsInteger := DM.cdsItemQuebraNR_NOTA_FISCAL.AsInteger;
      cdsAtuSaldoFios.Params[1].AsInteger := DM.cdsItemQuebraID_MATERIA.AsInteger;
      cdsAtuSaldoFios.Params[2].AsInteger := DM.cdsItemQuebraID_FORNECEDOR.AsInteger;
      cdsAtuSaldoFios.Params[3].AsInteger := DM.cdsItemQuebraID_CLIENTE.AsInteger;
      cdsAtuSaldoFios.Params[4].AsInteger := DM.cdsItemQuebraID_PRODUCAO.AsInteger;
      cdsAtuSaldoFios.Execute;
      cdsItemProducao.Close;
      cdsItemProducao.Params[0].AsInteger :=  DM.cdsItemQuebraID_MATERIA.AsInteger;
      cdsItemProducao.Params[1].AsInteger :=  DM.cdsQuebraID_CLIENTE.AsInteger;
      cdsItemProducao.Open;

      VerficaSaldoFios;
      cdsDinamicaFios.Close;

      cdsDinamicaFios.Close;
      SomaTotal;
      BB_CANCClick(Self);
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      BB_CANCClick(Self);
    end;
  end;

end;

procedure TfrmQuebraFio.DBEdit14Exit(Sender: TObject);
Var
 icount : string;

begin
  if DBEdit14.Text = '' Then
  begin
    BB_CANC.SetFocus;
    exit;
  end;



{  DM.cdsArtigo.Close;
  DM.cdsArtigo.CommandText:= ' SELECT A.ID_ARTIGO, A.NOME_ARTIGO, A.COMPOSICAO, A.LARGURA, A.GRAMATURA, A.TOTAL_PERC, '+
                             ' A.id_grupo_empresa, A.TUBULAR, A.FELPAR, A.CORTA_AUREOLAS, GE.nome_do_grupo, ge.responsavel '+
                             ' FROM TB_ARTIGO A '+
                             ' LEFT OUTER JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = A.id_grupo_empresa)'+
                             ' WHERE A.ID_GRUPO_EMPRESA ='+gpEmpresa;}
  DM.cdsArtigo.Open;

  if DM.cdsArtigo.Locate('ID_ARTIGO',DBEdit14.Text,[]) then
  begin
    DM.cdsItemQuebraID_ARTIGO.AsInteger  := DM.cdsArtigoID_ARTIGO.AsInteger;
    DM.cdsItemQuebraNOME_ARTIGO.AsString := DM.cdsArtigoNOME_ARTIGO.AsString;
    //Edit17.SetFocus;
    P_SALDO_FIOS.Visible := True;
    cdsItemProducao.Close;

    cdsVerifcaSaldoFios.Params[0].AsInteger := DM.cdsQuebraID_CLIENTE.AsInteger;
    cdsVerifcaSaldoFios.Params[1].AsInteger := DM.cdsItemQuebraID_ARTIGO.AsInteger;
    cdsVerifcaSaldoFios.Params[2].AsInteger := DM.cdsQuebraID_FOR_REMESSA.AsInteger;
    cdsVerifcaSaldoFios.Execute;



    cdsDinamicaFios.Close;
    cdsDinamicaFios.Open;

    if cdsDinamicaFios.RecordCount < cdsDinamicaFiosQT_ARTIGO.AsInteger then
    begin
      icount := IntToStr(cdsDinamicaFios.RecordCount);
      ShowMessage('O Sistema Localizou Saldo Apenas Em '+icount + ' dos '+cdsDinamicaFiosQT_ARTIGO.AsString+' Informados no Artigo');
      P_SALDO_FIOS.Visible := False;
      BB_CANCClick(Self);
      Exit;
    end
    else
    begin
      VerficaSaldoFios;
      DBGrid3.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   C�digo N�o Encontrado             '+#13+
                '                                     ');
    SpeedButton5Click(Self);
  end;
end;

procedure TfrmQuebraFio.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton5Click(self);
  end;

end;

procedure TfrmQuebraFio.DBEdit16Exit(Sender: TObject);
begin
  if DM.cdsQuebraNR_NF_REMESSA.AsInteger = DM.cdsQuebraNR_NOTA_FISCAL.AsInteger then
  begin
    ShowMessage('N� Nota Fiscal Remessa n�o pode ser igual ao N� da Nota Fiscal' );
    DBEdit16.SetFocus;
    exit
  end;


// P_BOTOES.SetFocus;
  BB_GRAVARClick(Self);
end;

procedure TfrmQuebraFio.DBEdit17Exit(Sender: TObject);
begin
  if DM.cdsItemQuebraQUANT_FATURADO.AsFloat > sSaldo then
  begin
    ShowMessage('Saldo de Fio Para a Quantidade Informada Indisponiv�l.'+#13+' Saldo Disponiv�l  : '+QuotedStr(FormatFloat('###,###0.000',sSaldo)));
    if Application.MessageBox('Deseja Informar Nova Quantidade ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
    begin
      DBEdit17.SetFocus;
      Exit;
    end
    else
    begin
      sSaldo := 0;
      BB_CANCClick(Self);
    end;
  end;
end;

procedure TfrmQuebraFio.DBEdit19Exit(Sender: TObject);
begin
  if DBEdit19.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 2';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DBEdit19.Text,[]) then
  begin
    DM.cdsQuebraID_FORN_TINT.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsQuebraTITURARIA.AsString     := DM.cdsFornecedorNOME.AsString;
    DBEdit16.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Tituraria N�o Encontrada          '+#13+
                '                                     ');
    SpeedButton4Click(Self);
  end;

end;

procedure TfrmQuebraFio.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton4Click(self);
  end;

end;

procedure TfrmQuebraFio.DBEdit20Exit(Sender: TObject);
begin
  if DBEdit20.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsCliente.Open;
  if DM.cdsCliente.Locate('ID_CLIENTE',DBEdit20.Text,[]) then
  begin
    DM.cdsQuebraID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
    DM.cdsQuebraCLIENTE.AsString     := DM.cdsClienteR_SOCIAL.AsString;
    BB_GRAVARClick(Self);
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Cliente N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton6Click(Self);
  end;
  VerficaSaldoFios;
end;

procedure TfrmQuebraFio.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton6Click(self);
  end;

end;

procedure TfrmQuebraFio.DBEdit2Exit(Sender: TObject);
begin
{  if DBEdit2.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsProducao.Open;
  if DM.cdsProducao.Locate('NR_NOTA_FISCAL',DBEdit2.Text,[]) then
  begin
    DM.cdsQuebraID_FORNECEDOR.AsInteger         := DM.cdsProducaoID_FORNCEDOR.AsInteger;
    DM.cdsQuebraFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsQuebraID_PRODUCAO.AsInteger           := DM.cdsProducaoID_PRODUCAO.AsInteger;
    DM.cdsQuebraNR_NOTA_FISCAL.AsInteger        := DM.cdsProducaoNR_NOTA_FISCAL.AsInteger;
    DM.cdsQuebraID_CLIENTE.AsInteger            := DM.cdsProducaoID_CLIENTE.AsInteger;
    DM.cdsQuebraCLIENTE.AsString                := DM.cdsProducaoCLIENTE.AsString;
    DM.cdsQuebraFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsQuebraDT_EMISSAO.AsDateTime           := DM.cdsProducaoDT_EMISSAO.AsDateTime;
    DM.cdsQuebraQUANT.AsFloat                   := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsQuebraQUANT_NF.AsFloat                := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsQuebraVL_NOTA.AsFloat                 := DM.cdsProducaoVL_NOTA.AsFloat;
    DM.cdsQuebraVL_POR_FORA.AsFloat             := DM.cdsProducaoVL_POR_FORA.AsFloat;
    DM.cdsQuebraVL_TOTAL.AsFloat                := DM.cdsProducaoVL_TOTAL.AsFloat;
    DBEDIT3.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Nota Fiscal N�o Encontrada         '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end; }


end;

procedure TfrmQuebraFio.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmQuebraFio.DBEdit3Exit(Sender: TObject);
begin
  if DBEdit3.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 1';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DBEdit3.Text,[]) then
  begin
    DM.cdsQuebraID_FOR_REMESSA.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsQuebraNOME_MALHARIA.AsString   := DM.cdsFornecedorNOME.AsString;
    DBEdit4.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Fornecedor N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton2Click(Self);
  end;

end;

procedure TfrmQuebraFio.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton2Click(self);
  end;

end;

procedure TfrmQuebraFio.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    BB_CONFIRMARClick(Self);
  end;
  if Key = #27 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    B_CANCELARClick(Self);
  end;

end;

procedure TfrmQuebraFio.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    cdsItemNotaFiscal.Close;
//    cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsQuebraID_PRODUCAO.AsInteger;
    cdsItemNotaFiscal.Open;
  cdsContasPagar.Close;
  cdsContasPagar.Params[0].AsInteger := StrToInt(DM.cdsQuebraID_CLIENTE.AsString);
  cdsContasPagar.Params[1].AsDate    := StrToDate(DM.cdsQuebraDT_EMISSAO.AsString);
  cdsContasPagar.Params[2].AsInteger := StrToInt(DM.cdsQuebraID_FOR_REMESSA.AsString);
  cdsContasPagar.Open;
  Somapagamentos;
  if cdsContasPagar.IsEmpty then
    L_AVISO.Visible := True
  else
    L_AVISO.Visible := False;

end;

procedure TfrmQuebraFio.DBNavigator1DblClick(Sender: TObject);
begin
  PageControl2Change(Self);
end;

procedure TfrmQuebraFio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsQuebra.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsFornecedor.Close;
    DM.cdsCliente.Close;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmQuebraFio := NIL;
  end;
  if DM.cdsItemQuebra.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsFornecedor.Close;
    DM.cdsCliente.Close;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmQuebraFio := NIL;
  end;



end;

procedure TfrmQuebraFio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmQuebraFio.FormShow(Sender: TObject);
begin
  DM.cdsQuebra.Close;
  DM.cdsQuebra.Open;

  DM.cdsItemQuebra.Close;
  DM.cdsItemQuebra.Params[0].AsInteger := DM.cdsQuebraID_REMESSA.AsInteger;
  DM.cdsItemQuebra.Open;

  if DM.cdsQuebra.RecordCount >0 then
  begin
    cdsItemNotaFiscal.Close;
    cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsQuebraID_REMESSA.AsInteger;
    cdsItemNotaFiscal.Open;
  end;

  GerenciaBotoes;
  GerenciaBotoes2;

end;

procedure TfrmQuebraFio.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsQuebra.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsQuebra.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_CONCLUIR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  P_PRODUCAO.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmQuebraFio.GerenciaBotoes2;
begin
  BB_INCLUIR.Enabled       := not (DM.cdsItemQuebra.State in dsEditModes);
  BB_SALVAR.Enabled        := NOT BB_INCLUIR.Enabled;
  BB_EXC.Enabled           := BB_INCLUIR.Enabled and not (DM.cdsItemQuebra.IsEmpty);
  BB_CANC.Enabled          := BB_SALVAR.Enabled;
  BB_ALTERAR.Enabled       := BB_EXC.Enabled;
  p_item.Enabled        := not BB_INCLUIR.Enabled;

end;

procedure TfrmQuebraFio.PageControl2Change(Sender: TObject);
begin
  cdsContasPagar.Close;
  cdsContasPagar.Params[0].AsInteger := DM.cdsQuebraID_CLIENTE.AsInteger;
  cdsContasPagar.Params[1].AsDate    := DM.cdsQuebraDT_EMISSAO.AsDateTime;
  cdsContasPagar.Params[2].AsInteger := DM.cdsQuebraID_FOR_REMESSA.AsInteger;

  cdsContasPagar.Open;
  Somapagamentos;

  if cdsContasPagar.IsEmpty then
    L_AVISO.Visible := True
  else
    L_AVISO.Visible := False;

end;

procedure TfrmQuebraFio.Somapagamentos;
Var
 sSql : string;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT CP.VL_COMPRA, SUM(CP.VL_PARCELA), '+
                                ' CP.VL_COMPRA -SUM(CP.VL_PARCELA)  '+
                                ' FROM TB_CONTAS_PAGAR CP '+
                                ' WHERE CP.ID_FORNECEDOR = '+DM.cdsQuebraID_FOR_REMESSA.AsString+
                                ' AND CP.NR_NOTA_FISCAL = '+DM.cdsQuebraNR_NOTA_FISCAL.AsString+
                                ' AND CP.TP_MOV=''D'''+
                                ' GROUP BY CP.VL_COMPRA ';
  DM.cdsDinamica.Open;


  if DM.cdsDinamica.IsEmpty then
  begin
  end
  else
  begin

    if SaldoPagamento < 0 then
    begin

    end;

    if DM.cdsDinamica.Fields[1].AsFloat < DM.cdsProducaoVL_NOTA.AsFloat then
    begin

    end;

    if DM.cdsDinamica.Fields[1].AsFloat = DM.cdsProducaoVL_NOTA.AsFloat then
    begin

    end;
  end;

end;

procedure TfrmQuebraFio.SomaTotal;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText :=' SELECT SUM(IR.VL_TOTAL),SUM(IR.QT_ROLOS),SUM(IR.VL_TOTAL_REAL) FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                               ' WHERE IR.ID_REMESSA = '+DM.cdsQuebraID_REMESSA.AsString;
  DM.cdsDinamica.Open;


  DM.cdsQuebra.Edit;
  DM.cdsQuebraVL_NOTA.AsFloat       := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsQuebraTOTAL_ROLOS.AsInteger := DM.cdsDinamica.Fields[1].AsInteger;
  DM.cdsQuebraVL_POR_FORA.AsFloat   := DM.cdsDinamica.Fields[2].AsFloat;
  DM.cdsQuebraVL_TOTAL_NF.AsFloat   := (DM.cdsQuebraVL_POR_FORA.AsFloat + DM.cdsQuebraVL_NOTA.AsFloat);
  DM.cdsQuebra.ApplyUpdates(0);


end;

procedure TfrmQuebraFio.SpeedButton1Click(Sender: TObject);
begin
{  DM.cdsProducao.Close;
  DM.cdsProducao.Open;
  Pesquisa(DM.cdsProducao,['NR_NOTA_FISCAL','FORNECEDOR'],['N� Nota Fiscal','Fornecedor'],[10,40],'','','','','Nota Fiscal','Nota Fiscal');
    DM.cdsQuebraID_FORNCEDOR.AsInteger          := DM.cdsProducaoID_FORNCEDOR.AsInteger;
    DM.cdsQuebraFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsQuebraID_PRODUCAO.AsInteger           := DM.cdsProducaoID_PRODUCAO.AsInteger;
    DM.cdsQuebraNR_NOTA_FISCAL.AsInteger        := DM.cdsProducaoNR_NOTA_FISCAL.AsInteger;
    DM.cdsQuebraID_CLIENTE.AsInteger            := DM.cdsProducaoID_CLIENTE.AsInteger;
    DM.cdsQuebraCLIENTE.AsString                := DM.cdsProducaoCLIENTE.AsString;
    DM.cdsQuebraFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsQuebraDT_EMISSAO.AsDateTime           := DM.cdsProducaoDT_EMISSAO.AsDateTime;
    DM.cdsQuebraQUANT.AsFloat                   := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsQuebraQUANT_NF.AsFloat                := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsQuebraVL_NOTA.AsFloat                 := DM.cdsProducaoVL_NOTA.AsFloat;
    DM.cdsQuebraVL_POR_FORA.AsFloat             := DM.cdsProducaoVL_POR_FORA.AsFloat;
    DM.cdsQuebraVL_TOTAL.AsFloat                := DM.cdsProducaoVL_TOTAL.AsFloat;
    DBEDIT3.SetFocus; }
end;

procedure TfrmQuebraFio.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 1';

  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');
  DM.cdsQuebraID_FOR_REMESSA.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsQuebraNOME_MALHARIA.AsString   := DM.cdsFornecedorNOME.AsString;
  DBEdit4.SetFocus;

end;

procedure TfrmQuebraFio.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmQuebraFio.SpeedButton4Click(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 2';

  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');

    DM.cdsQuebraID_FORN_TINT.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsQuebraTITURARIA.AsString     := DM.cdsFornecedorNOME.AsString;
    DBEdit16.SetFocus;

end;

procedure TfrmQuebraFio.SpeedButton5Click(Sender: TObject);
var
 gpEmpresa : string;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT C.ID_GRUPO_EMPRESA FROM TB_CLIENTE C '+
                                ' WHERE C.ID_CLIENTE = '+QuotedStr(DBEdit20.Text);
  DM.cdsDinamica.Open;

  gpEmpresa := DM.cdsDinamica.Fields[0].AsString;


  DM.cdsArtigo.Close;
  DM.cdsArtigo.CommandText:= ' SELECT A.ID_ARTIGO, A.NOME_ARTIGO, A.COMPOSICAO, A.LARGURA, A.GRAMATURA, A.TOTAL_PERC, '+
                             ' A.id_grupo_empresa, A.TUBULAR, A.FELPAR, A.CORTA_AUREOLAS, GE.nome_do_grupo, ge.responsavel '+
                             ' FROM TB_ARTIGO A '+
                             ' LEFT OUTER JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = A.id_grupo_empresa)'+
                             ' WHERE A.ID_GRUPO_EMPRESA ='+gpEmpresa;
  DM.cdsArtigo.Open;

  {frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Quebra';
  frmPesquisaPadrao.CDS := DM.cdsArtigo;
  frmPesquisaPadrao.Tabela := 'TB_ARTIGO A';
  frmPesquisaPadrao.CampoBusca := 'A.NOME_ARTIGO';
  frmPesquisaPadrao.CampoBusca2 := 'A.COMPOSICAO';
  frmPesquisaPadrao.CampoBusca3 := 'GE.nome_do_grupo';
  frmPesquisaPadrao.CampoChave  := 'A.NOME_ARTIGO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Artigo';
  frmPesquisaPadrao.Sql            := ' SELECT  A.ID_ARTIGO, A.NOME_ARTIGO, A.COMPOSICAO, A.LARGURA, A.GRAMATURA, '+
                                      ' A.TOTAL_PERC, A.TUBULAR, A.FELPAR, A.CORTA_AUREOLAS, A.id_grupo_empresa, '+
                                      ' GE.nome_do_grupo, ge.responsavel';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Nome do Artigo';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_ARTIGO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 180;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Composi��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'COMPOSICAO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 180;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'Largura';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'LARGURA';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 80;

  frmPesquisaPadrao.dbgPesquisa.Columns.Add;
  frmPesquisaPadrao.dbgPesquisa.Columns[3].Title.Caption := 'Gramatura';
  frmPesquisaPadrao.dbgPesquisa.Columns[3].FieldName:= 'GRAMATURA';
  frmPesquisaPadrao.dbgPesquisa.Columns[3].Width:= 80;
  frmPesquisaPadrao.dbgPesquisa.Columns.Add;
  frmPesquisaPadrao.dbgPesquisa.Columns[4].Title.Caption := 'Grupo Empresa';
  frmPesquisaPadrao.dbgPesquisa.Columns[4].FieldName:= 'NOME_DO_GRUPO';
  frmPesquisaPadrao.dbgPesquisa.Columns[4].Width:= 180;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);}

  DM.cdsItemQuebraID_ARTIGO.AsInteger             := DM.cdsArtigoID_ARTIGO.AsInteger;
  DM.cdsItemQuebraNOME_ARTIGO.AsString            := DM.cdsArtigoNOME_ARTIGO.AsString;

    P_SALDO_FIOS.Visible := True;
    cdsItemProducao.Close;
    cdsItemProducao.Params[0].AsInteger :=  DM.cdsItemQuebraID_MATERIA.AsInteger;
    cdsItemProducao.Params[1].AsInteger :=  DM.cdsQuebraID_CLIENTE.AsInteger;
    cdsItemProducao.Open;

//        VerficaSaldoFios;

    cdsVerifcaSaldoFios.Params[0].AsInteger := DM.cdsQuebraID_CLIENTE.AsInteger;
    cdsVerifcaSaldoFios.Params[1].AsInteger := DM.cdsItemQuebraID_ARTIGO.AsInteger;
    cdsVerifcaSaldoFios.Params[2].AsInteger := DM.cdsQuebraID_FOR_REMESSA.AsInteger;
    cdsVerifcaSaldoFios.Execute;

    cdsDinamicaFios.Close;
    cdsDinamicaFios.Open;



    DBGrid3.SetFocus;
end;

procedure TfrmQuebraFio.SpeedButton6Click(Sender: TObject);
begin
  DM.cdsCliente.Close;
  DM.cdsCliente.Open;
  Pesquisa(DM.cdsCliente,['R_SOCIAL','ID_CLIENTE'],['Nome do Cliente','C�digo'],[40,4],'','','','','Cliente','Cliente');
  DM.cdsQuebraID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
  DM.cdsQuebraCLIENTE.AsString     := DM.cdsClienteR_SOCIAL.AsString;
  //DBEdit19.SetFocus;
  BB_GRAVARClick(Self);

end;

procedure TfrmQuebraFio.ValidacoesFinalizar;
begin
  //-verificar se existem itens na nota

  if DM.cdsItemQuebra.RecordCount = 0 then
  begin
    ShowMessage('Imposs�vel Finalizar Nota. N�o Exite(m) Iten(s) Lan�ado(s).');
    Resultdo := True;
    Exit;
  end
  else
      Resultdo := False;


  //- verificar Se Exitem Pagamentos Lancados.
{  if cdsContasPagar.RecordCount = 0 then
  begin
    ShowMessage('Imposs�vel Finalizar Nota. N�o Exite(m) Pagamento(s) Lan�ado(s).');
    Resultdo := True;
    Exit;
  end
  else
      Resultdo := False;

  Somapagamentos;
  if DM.cdsDinamica.Fields[1].AsFloat < DM.cdsQuebraVL_NOTA.AsFloat then
  begin
    ShowMessage('Imposs�vel Finalizar Nota. N�o Exite(m) Pagamento(s) Lan�ado(s) Com o Valor Menor que o Total da Nota.');
    Resultdo := True;
    DM.cdsDinamica.Close;
    Exit;
  end
  else
    Resultdo := False;


 }
end;

procedure TfrmQuebraFio.VerficaSaldoFios;
Var
 sSql : string;
begin
  sSql := ' SELECT p.* FROM TB_PRODUCAO p '+
          ' WHERE P.ID_CLIENTE = '+DM.cdsQuebraID_CLIENTE.AsString+
          ' AND P.QUANT > 0 ';
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := sSql;
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    ShowMessage('N�o Exite(m) Saldo(s) de Fio(s) Lan�ado(s) Para o Cliente Selecionado.');
    if Application.MessageBox('Deseja Continuar?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      BB_GRAVARClick(Self);
    end
    else
    begin
      BB_CANCELARClick(Self);
    end;
  end
  else
  begin
  end;



end;

end.
