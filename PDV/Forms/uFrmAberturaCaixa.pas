unit uFrmAberturaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmAberturaCaixa = class(TForm)
    BB_ABRIR: TBitBtn;
    BitBtn1: TBitBtn;
    GB_SUPRIMENTO: TGroupBox;
    Label1: TLabel;
    BB_CONFIRMAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    P_SUPRIMENTO: TPanel;
    DBEdit1: TDBEdit;
    PMENU: TPanel;
    SpeedButton3: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BB_ABRIRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_CONFIRMARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MakeRounded(Control: TWinControl);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAberturaCaixa: TfrmAberturaCaixa;

implementation

uses U_LIB, uDm, uPdv, DB;

{$R *.dfm}

procedure TfrmAberturaCaixa.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TfrmAberturaCaixa.BB_ABRIRClick(Sender: TObject);
Var
  vlDinheiro : double;
  Sql_Data,SsQL : string;
  QDate    : TDate;

  maxSuprimento : integer;
begin
 Sql_Data := ' SELECT  MAX(R.DT_ABERTURA) FROM TB_REG_OPEN_CLOSE_CAIXA R WHERE R.STATUS = ''F'' AND R.ID_LOJA = '+frmPdv.recInformacoes.lojaCredenciada+
             ' AND R.CAIXA = '+DM.CAIXA;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := Sql_Data;
  DM.cdsDinamica.Open;

  QDate := DM.cdsDinamica.Fields[0].AsDateTime;

  SsQL := ' SELECT SUM(P.VL_PAGAMENTO)+(SELECT SUM(S.VALOR) FROM TB_SUPRIMENTO S WHERE S.DT_SUPRIMENTO = P.DT_MOV AND S.ID_LOJA =P.ID_LOJA AND S.CAIXA = P.CAIXA)- '+
          ' (SELECT SUM(A.VALOR) FROM TB_SANGRIA A WHERE A.DT_SANGRIA = P.DT_MOV AND A.ID_TIPO_PAGAMENTO = 1 AND A.ID_LOJA = P.ID_LOJA AND A.CAIXA = P.CAIXA)'+
          ' FROM TB_PAGAMENTO_PDV P'+
          ' WHERE P.DT_MOV = '+QuotedStr(FormatDateTime('mm/dd/yyyy',QDate))+
          ' AND P.ID_PLANO_PAGAMENTO = 1'+
          ' AND P.ID_LOJA = '+frmPdv.recInformacoes.lojaCredenciada+
          ' AND P.CAIXA = '+DM.CAIXA+
          ' GROUP BY P.DT_MOV,P.ID_LOJA,P.CAIXA  ';

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := SsQL;
  DM.cdsDinamica.Open;

  vlDinheiro := DM.cdsDinamica.Fields[0].AsFloat;


  if vlDinheiro = 0 then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_SUPRIMENTO) FROM TB_SUPRIMENTO '+
                                  ' WHERE CAIXA = '+DM.CAIXA+' AND ID_LOJA ='+frmPdv.recInformacoes.lojaCredenciada;
    DM.cdsDinamica.Open;

    maxSuprimento := DM.cdsDinamica.Fields[0].AsInteger;

    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT S.VALOR FROM TB_SUPRIMENTO S WHERE S.ID_SUPRIMENTO= '+IntToStr(maxSuprimento)+
                                  ' AND S.CAIXA = '+DM.CAIXA+' AND S.ID_LOJA = '+frmPdv.recInformacoes.lojaCredenciada;
    DM.cdsDinamica.Open;

    vlDinheiro := DM.cdsDinamica.Fields[0].AsFloat;

  end;


  DM.cdsRegOpenCloseCaixa.Close;
  DM.cdsRegOpenCloseCaixa.Open;
  DM.cdsRegOpenCloseCaixa.Insert;
  DM.cdsRegOpenCloseCaixaID_USUARIO.AsInteger := frmPdv.recInformacoes.id_Usuario;
  DM.cdsRegOpenCloseCaixaID_LOJA.AsInteger    := StrToInt(frmPdv.recInformacoes.lojaCredenciada);
  DM.cdsRegOpenCloseCaixaCAIXA.AsInteger      := StrToInt(frmPdv.L_CAIXA.Caption);
  DM.cdsRegOpenCloseCaixaDT_ABERTURA.AsDateTime := Date;
  DM.cdsRegOpenCloseCaixaHORA_ABERTURA.AsDateTime := Time;
  DM.cdsRegOpenCloseCaixaSTATUS.Value := 'A';

  GB_SUPRIMENTO.Visible := True;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT MAX(ID_SUPRIMENTO) FROM TB_SUPRIMENTO';
  DM.cdsDinamica.Open;

  DM.cdsSuprimento.Close;
  DM.cdsSuprimento.Open;
  DM.cdsSuprimento.Insert;

  DM.cdsSuprimentoID_SUPRIMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;
  DM.cdsSuprimentoID_USUARIO.AsInteger    := frmPdv.recInformacoes.id_Usuario;
  DM.cdsSuprimentoID_LOJA.AsInteger       := StrToInt(frmPdv.recInformacoes.lojaCredenciada);
  DM.cdsSuprimentoCAIXA.AsInteger         := StrToInt(frmPdv.L_CAIXA.Caption);
  DM.cdsSuprimentoDT_SUPRIMENTO.AsDateTime:= Date;
  DM.cdsSuprimentoHR_SUPRIMENTO.AsDateTime:= Time;
  DM.cdsSuprimentoVALOR.AsFloat           := vlDinheiro;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';

  DBEdit1.SetFocus;

end;

procedure TfrmAberturaCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmAberturaCaixa.BB_CONFIRMARClick(Sender: TObject);

begin
  DM.cdsSangria.Close;
  DM.cdsSangria.Open;
  DM.cdsSangria.Insert;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := 'SELECT MAX(ID_SANGRIA) FROM TB_SANGRIA';
  DM.cdsDinamica.Open;

  DM.cdsSangriaID_SANGRIA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
  DM.cdsSangriaID_TIPO_PAGAMENTO.AsInteger := 1;
  DM.cdsSangriaID_USUARIO.AsInteger    := frmPdv.recInformacoes.id_Usuario;
  DM.cdsSangriaID_LOJA.AsInteger       := StrToInt(frmPdv.recInformacoes.lojaCredenciada);
  DM.cdsSangriaCAIXA.AsInteger         := StrToInt(DM.CAIXA);
  DM.cdsSangriaDT_SANGRIA.AsDateTime   := Date;
  DM.cdsSangriaHR_SANGRIA.AsDateTime   := Time;
  DM.cdsSangriaVALOR.AsFloat           := 0;
  DM.cdsSangriaDT_SANGRIA.AsDateTime   := Date;

  DM.cdsSangria.ApplyUpdates(0);
  DM.cdsSangria.Close;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';

  DM.cdsRegOpenCloseCaixa.ApplyUpdates(0);
  DM.cdsSuprimento.ApplyUpdates(0);
  GB_SUPRIMENTO.Visible := False;
  Close;
end;

procedure TfrmAberturaCaixa.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsRegOpenCloseCaixa.Cancel;
  DM.cdsSuprimento.Cancel;
  Application.Terminate;
end;

procedure TfrmAberturaCaixa.FormCreate(Sender: TObject);
begin
  MakeRounded(P_SUPRIMENTO);
end;

procedure TfrmAberturaCaixa.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
with Control do
begin
  R := ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 40, 40);
  Perform(EM_GETRECT, 0, lParam(@r));
  InflateRect(r, - 30, - 30);
  Perform(EM_SETRECTNP, 0, lParam(@r));
  SetWindowRgn(Handle, rgn, True);
  Invalidate;
end;
end;
procedure TfrmAberturaCaixa.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAberturaCaixa.DBEdit1Exit(Sender: TObject);
begin
  BB_CONFIRMAR.SetFocus;
end;

end.
