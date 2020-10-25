unit uBaixaConPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TfrmBaixaConPag = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    Panel8: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Panel9: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    P_BAIXA: TPanel;
    Panel3: TPanel;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    DBEdit13: TDBEdit;
    Label2: TLabel;
    DBEdit14: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit15: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit16: TDBEdit;
    Label5: TLabel;
    qContasPagar: TSQLDataSet;
    qContasPagarID_CONTAS_PAGAR: TIntegerField;
    qContasPagarID_PRODUCAO: TIntegerField;
    qContasPagarID_CLIENTE: TIntegerField;
    qContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    qContasPagarID_USUARIO: TIntegerField;
    qContasPagarID_LOJA: TIntegerField;
    qContasPagarID_FORNECEDOR: TIntegerField;
    qContasPagarID_FORN_REM: TIntegerField;
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
    qContasPagarNR_NOTA_FISCAL: TIntegerField;
    qContasPagarNR_NF_REMESSA: TIntegerField;
    qContasPagarORIGEM: TStringField;
    qContasPagarVL_PAGO: TFMTBCDField;
    qContasPagarOBS: TStringField;
    qContasPagarDESCRICAO_PAGAMENTO: TStringField;
    qContasPagarCLIENTE: TStringField;
    qContasPagarFORNECEDOR: TStringField;
    qContasPagarFORN_REMESSA: TStringField;
    qContasPagarNOME_USUARIO: TStringField;
    qContasPagarEMPRESA: TStringField;
    qContasPagarDIAS_ATRASO: TIntegerField;
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarID_CONTAS_PAGAR: TIntegerField;
    cdsContasPagarID_PRODUCAO: TIntegerField;
    cdsContasPagarID_CLIENTE: TIntegerField;
    cdsContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    cdsContasPagarID_USUARIO: TIntegerField;
    cdsContasPagarID_LOJA: TIntegerField;
    cdsContasPagarID_FORNECEDOR: TIntegerField;
    cdsContasPagarID_FORN_REM: TIntegerField;
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
    cdsContasPagarNR_NOTA_FISCAL: TIntegerField;
    cdsContasPagarNR_NF_REMESSA: TIntegerField;
    cdsContasPagarORIGEM: TStringField;
    cdsContasPagarVL_PAGO: TFMTBCDField;
    cdsContasPagarOBS: TStringField;
    cdsContasPagarDESCRICAO_PAGAMENTO: TStringField;
    cdsContasPagarCLIENTE: TStringField;
    cdsContasPagarFORNECEDOR: TStringField;
    cdsContasPagarFORN_REMESSA: TStringField;
    cdsContasPagarNOME_USUARIO: TStringField;
    cdsContasPagarEMPRESA: TStringField;
    cdsContasPagarDIAS_ATRASO: TIntegerField;
    dsContasPagar: TDataSource;
    qContasPagarTP_MOV: TStringField;
    cdsContasPagarTP_MOV: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaConPag: TfrmBaixaConPag;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uContasPagarLista;

procedure TfrmBaixaConPag.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaConPag.BitBtn2Click(Sender: TObject);
begin
  P_BAIXA.Enabled := True;
  frmContasPagarLista.cdsContasPagar.Edit;
  DBEdit12.SetFocus;
end;

procedure TfrmBaixaConPag.DBEdit13Exit(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Efetuar Baixa?','Confirma��o.',MB_YESNO+MB_ICONQUESTION) =idyes then
  begin
    if frmContasPagarLista.cdsContasPagarVL_PAGO.IsNull then
    begin
      ShowMessage('Favor Informar um Valor.');
      DBEdit12.SetFocus;
      Exit;
    end;

    if frmContasPagarLista.cdsContasPagarVL_PAGO.AsFloat = 0 then
    begin
      ShowMessage('Favor Informar um Valor V�lido.');
      DBEdit12.SetFocus;
      Exit;
    end;

    if (frmContasPagarLista.cdsContasPagarVL_PAGO.AsFloat < frmContasPagarLista.cdsContasPagarVL_PARCELA.AsFloat) then
    begin
      if Application.MessageBox('Confirma Baixa Parcial deste T�tulo ?','Confirma��o.',MB_YESNO+MB_ICONQUESTION) = idyes then
      begin
        frmContasPagarLista.cdsContasPagar.Edit;
        frmContasPagarLista.cdsContasPagarSTATUS.Value :='B';
        cdsContasPagar.Close;
        cdsContasPagar.Open;
        cdsContasPagar.Insert;

        DM.cdsDinamica.Close;
        DM.cdsDinamica.IndexFieldNames:='';
        DM.cdsDinamica.CommandText :=' SELECT MAX(CP.ID_CONTAS_PAGAR) FROM TB_CONTAS_PAGAR CP';
        DM.cdsDinamica.Open;

        cdsContasPagarID_CONTAS_PAGAR.AsInteger     := DM.cdsDinamica.Fields[0].AsInteger + 1;
        cdsContasPagarID_PRODUCAO.AsInteger         := frmContasPagarLista.cdsContasPagarID_PRODUCAO.AsInteger;
        cdsContasPagarID_CLIENTE.AsInteger          := frmContasPagarLista.cdsContasPagarID_CLIENTE.AsInteger;
        cdsContasPagarID_PLANO_PAGAMENTO.AsInteger  := frmContasPagarLista.cdsContasPagarID_PLANO_PAGAMENTO.AsInteger;
        cdsContasPagarID_USUARIO.AsInteger          := frmContasPagarLista.cdsContasPagarID_USUARIO.AsInteger;
        cdsContasPagarID_LOJA.AsInteger             := frmContasPagarLista.cdsContasPagarID_LOJA.AsInteger;
        cdsContasPagarID_FORNECEDOR.AsInteger       := frmContasPagarLista.cdsContasPagarID_FORNECEDOR.AsInteger;
        cdsContasPagarID_FORN_REM.AsInteger         := frmContasPagarLista.cdsContasPagarID_FORN_REM.AsInteger;
        cdsContasPagarDT_EMISSAO.AsDateTime         := frmContasPagarLista.cdsContasPagarDT_EMISSAO.AsDateTime;
        cdsContasPagarDT_VENCIMENTO.AsDateTime      := frmContasPagarLista.cdsContasPagarDT_VENCIMENTO.AsDateTime;
        cdsContasPagarQT_DIAS.AsInteger             := frmContasPagarLista.cdsContasPagarQT_DIAS.AsInteger;
        cdsContasPagarQT_DIAS_ATRAZO.AsInteger      := frmContasPagarLista.cdsContasPagarQT_DIAS_ATRAZO.AsInteger;
        cdsContasPagarQT_PARCELA.AsInteger          := frmContasPagarLista.cdsContasPagarQT_PARCELA.AsInteger;
        cdsContasPagarNR_DOC.AsString               := frmContasPagarLista.cdsContasPagarNR_DOC.AsString+'S';
        cdsContasPagarVL_COMPRA.AsFloat             := frmContasPagarLista.cdsContasPagarVL_COMPRA.AsFloat;
        cdsContasPagarVL_PARCELA.AsFloat            :=(frmContasPagarLista.cdsContasPagarVL_PARCELA.AsFloat - frmContasPagarLista.cdsContasPagarVL_PAGO.AsFloat);
        cdsContasPagarNR_PARCELA.AsString           := frmContasPagarLista.cdsContasPagarNR_PARCELA.AsString;
        cdsContasPagarSTATUS.AsString               := 'A';
        cdsContasPagarTP_MOV.AsString               := frmContasPagarLista.cdsContasPagarTP_MOV.AsString;
        cdsContasPagarNR_NOTA_FISCAL.AsInteger      := frmContasPagarLista.cdsContasPagarNR_NOTA_FISCAL.AsInteger;
        cdsContasPagarNR_NF_REMESSA.AsInteger       := frmContasPagarLista.cdsContasPagarNR_NF_REMESSA.AsInteger;
        cdsContasPagarORIGEM.AsString               := frmContasPagarLista.cdsContasPagarORIGEM.AsString;
        cdsContasPagarOBS.AsString                  := ' T�tulo Referente Baixa Parcial Doc '+frmContasPagarLista.cdsContasPagarNR_DOC.AsString;
        cdsContasPagar.ApplyUpdates(0);
        frmContasPagarLista.cdsContasPagar.ApplyUpdates(0);
        ShowMessage('T�tulo Baixado Parcialmente Com Sucesso!');
        P_BAIXA.Enabled := False;
        Close;
      end
      else
      begin
        frmContasPagarLista.cdsContasPagar.Cancel;
        ShowMessage('Baixa Cancelada.');
        P_BAIXA.Enabled := False;
      end;

    end
    else
    begin
      frmContasPagarLista.cdsContasPagarSTATUS.Value := 'B';
      frmContasPagarLista.cdsContasPagarQT_DIAS_ATRAZO.Value := frmContasPagarLista.cdsContasPagarDIAS_ATRASO.Value;
      frmContasPagarLista.cdsContasPagar.ApplyUpdates(0);
      ShowMessage('Baixa Realizada Com Sucesso!');
      Close;
    end;
  end
  else
  begin
    ShowMessage('Baixa Cancelada.');
    frmContasPagarLista.cdsContasPagar.Cancel;
    P_BAIXA.Enabled := False;
  end;

end;

procedure TfrmBaixaConPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmBaixaConPag := nil;
end;

procedure TfrmBaixaConPag.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmBaixaConPag.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.
