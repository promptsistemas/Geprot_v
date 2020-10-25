unit uPreviaFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  FMTBcd, DB, DBClient, Provider, SqlExpr,Printers,WinSpool, Vcl.Imaging.jpeg;

type
  TfrmPreviaFechamentoCaixa = class(TForm)
    L_TEXTO: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    L_OPERADOR: TLabel;
    L_DATA: TLabel;
    L_CAIXA: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    L_VENDAS: TLabel;
    L_SUPRIMENTO: TLabel;
    L_SANGRIA: TLabel;
    L_SALDO: TLabel;
    Label1: TLabel;
    L_DINHEIRO: TLabel;
    Memo1: TMemo;
    BB_FECHAR: TBitBtn;
    BitBtn1: TBitBtn;
    qResumoVendas: TSQLQuery;
    qResumoVendasDT_MOV: TDateField;
    qResumoVendasCAIXA: TIntegerField;
    qResumoVendasDESCRICAO_PAGAMENTO: TStringField;
    qResumoVendasVENDAS: TFMTBCDField;
    dspResumoVendas: TDataSetProvider;
    cdsResumoVendas: TClientDataSet;
    cdsResumoVendasDT_MOV: TDateField;
    cdsResumoVendasCAIXA: TIntegerField;
    cdsResumoVendasDESCRICAO_PAGAMENTO: TStringField;
    cdsResumoVendasVENDAS: TFMTBCDField;
    dsResumoVendas: TDataSource;
    qResumoVendasFORMA_PAGAMENTO: TStringField;
    cdsResumoVendasFORMA_PAGAMENTO: TStringField;
    BB_OK: TBitBtn;
    BB_IMPRIMIR: TBitBtn;
    qResumoVendasID_USUARIO: TIntegerField;
    qResumoVendasNOME_USUARIO: TStringField;
    cdsResumoVendasID_USUARIO: TIntegerField;
    cdsResumoVendasNOME_USUARIO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure BB_FECHARClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Suprimento_Sangria;
    Procedure ImprimirPrevia;
    Procedure ImprimirMemo(Memo: TMemo);
  end;

var
  frmPreviaFechamentoCaixa: TfrmPreviaFechamentoCaixa;
  CaminhoImpressora: String;

implementation

uses uDm, U_LIB, uPagamentoPdv, uPdv;

{$R *.dfm}

procedure TfrmPreviaFechamentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmPreviaFechamentoCaixa := nil;
end;

procedure TfrmPreviaFechamentoCaixa.BB_OKClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPreviaFechamentoCaixa.Suprimento_Sangria;
Var
 Vendas,Suprimento, Sangria, saldo : Double;
begin
  // Suprimento
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText :=' SELECT SUM(S.VALOR) FROM TB_SUPRIMENTO S'+
                               ' WHERE S.CAIXA ='+DM.CAIXA+
                               ' AND S.ID_LOJA ='+DM.LOJA+
                               ' AND S.DT_SUPRIMENTO = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date));
  DM.cdsDinamica.Open;

  L_SUPRIMENTO.Caption :=FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
  Suprimento := DM.cdsDinamica.Fields[0].AsFloat;

  // Vendas
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(PV.VL_PAGAMENTO) FROM tb_pagamento_pdv PV '+
                                ' WHERE PV.CAIXA ='+DM.CAIXA+
                                ' AND PV.ID_LOJA ='+DM.LOJA+
                                ' AND PV.ID_USUARIO ='+IntToStr(frmPdv.recInformacoes.id_Usuario)+
                                ' AND PV.DT_MOV = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date));
  DM.cdsDinamica.Open;

  L_VENDAS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
  Vendas := DM.cdsDinamica.Fields[0].AsFloat;

  // Sangria
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText :=' SELECT SUM(S.VALOR) FROM TB_SANGRIA S'+
                               ' WHERE S.CAIXA ='+DM.CAIXA+
                               ' AND S.ID_LOJA ='+DM.LOJA+
                               ' AND S.ID_USUARIO ='+IntToStr(frmPdv.recInformacoes.id_Usuario)+
                               ' AND S.DT_SANGRIA = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date));
  DM.cdsDinamica.Open;



  Sangria := DM.cdsDinamica.Fields[0].AsFloat;

  L_SANGRIA.Caption := FormatFloat('###,###0.00',Sangria);

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';

  Saldo := (Vendas+Suprimento)-Sangria;

  L_SALDO.Caption :=FormatFloat('###,###0.00',saldo);

  // Saldo em Dinheiro

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText :=' SELECT SUM(P.VL_PAGAMENTO) AS VENDA, (SELECT SUM(S.VALOR) FROM TB_SANGRIA S WHERE S.DT_SANGRIA = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date))+' AND S.CAIXA ='+DM.CAIXA+' AND S.ID_LOJA ='+DM.LOJA+'),'+
                               ' (SELECT SUM(SS.VALOR) FROM TB_SUPRIMENTO SS WHERE SS.DT_SUPRIMENTO = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date))+' AND SS.CAIXA ='+DM.CAIXA+' AND SS.ID_LOJA ='+DM.LOJA+'),'+
                               ' SUM(P.VL_PAGAMENTO)+(SELECT SUM(SS.VALOR) FROM TB_SUPRIMENTO SS WHERE SS.DT_SUPRIMENTO = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date))+' AND SS.CAIXA ='+DM.CAIXA+' AND SS.ID_LOJA ='+DM.LOJA+')-'+
                               ' (SELECT SUM(S.VALOR) FROM TB_SANGRIA S  WHERE S.DT_SANGRIA = '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date))+'  AND S.CAIXA ='+DM.CAIXA+' AND S.ID_LOJA ='+DM.LOJA+')'+
                               ' FROM TB_PAGAMENTO_PDV P '+
                               ' WHERE P.DT_MOV ='+QuotedStr(FormatDateTime('MM/DD/YYYY',Date))+
                               ' AND P.CAIXA = '+DM.CAIXA+
                               ' AND P.ID_LOJA ='+DM.LOJA+
                               ' AND P.ID_USUARIO ='+IntToStr(frmPdv.recInformacoes.id_Usuario)+
                               ' AND P.ID_PLANO_PAGAMENTO = 1';
  DM.cdsDinamica.Open;

  L_DINHEIRO.Caption :=FormatFloat('###,###0.00',DM.cdsDinamica.Fields[3].AsFloat);
//

end;

procedure TfrmPreviaFechamentoCaixa.FormShow(Sender: TObject);
Var
 Caixa,Loja,User : Integer;

begin
  CaminhoImpressora :=DM.IMPRESSORA;
  Caixa := StrToInt(DM.CAIXA);
  Loja  := StrToInt(DM.LOJA);
  L_DATA.Caption := DateToStr(Date);
  L_CAIXA.Caption := FormatFloat('###000',Caixa);
  L_OPERADOR.Caption := frmPdv.recInformacoes.nm_Usuario;
  User := frmPdv.recInformacoes.id_Usuario;
  Suprimento_Sangria;

  cdsResumoVendas.Close;
  cdsResumoVendas.Params[0].AsInteger := Caixa;
  cdsResumoVendas.Params[1].AsDate    := Date;
  cdsResumoVendas.Params[2].AsInteger := LOJA;
  cdsResumoVendas.Params[3].AsInteger := User;
  cdsResumoVendas.Open;



end;

procedure TfrmPreviaFechamentoCaixa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TfrmPreviaFechamentoCaixa.ImprimirPrevia;
var
  Arquivo : TextFile;
  iCount, iCount2, iPagamentos, iQuantas, iVezes : Integer;
  Vendas,Suprimentos,Sangrias,Saldo,Dinheiro : Double;

begin
  Memo1.Clear;

          Vendas := 0;
     Suprimentos := 0;
        Sangrias := 0;
           Saldo := 0;
    iPagamentos := cdsResumoVendas.RecordCount;
    iVezes := Trunc(iPagamentos/10000);
    if Round(iPagamentos) > 0 then
      iVezes := iVezes +1;
    cdsResumoVendas.First;
    for iCount := 1 to iVezes do
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('    '+DefineTamanhoString(L_TEXTO.Caption,40,0));
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('-----------------------------------------------------------------------');
      Memo1.Lines.Add('DATA ...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsResumoVendasDT_MOV.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));
      Memo1.Lines.Add('CAIXA...: '+DefineTamanhoString(L_CAIXA.Caption,3,0)+' Operador de Caixa..: '+L_OPERADOR.Caption);
                                       //Cabe�alho de Clientes
      Memo1.Lines.Add('-----------------------------------------------------------------------');
      Memo1.Lines.Add('  ESP�CIE                               VL_VENDAS(R$)     ');
      Memo1.Lines.Add('-----------------------------------------------------------------------');

      //INICIA OS PRODUTOS
      FOR iCount2 := 1 to 10000 do
      begin
        inc(iQuantas);
        if iQuantas <= iPagamentos then
        begin
           Memo1.Lines.Add(DefineTamanhoString(cdsResumoVendasFORMA_PAGAMENTO.AsString,20,0)
           +DefineTamanhoString(cdsResumoVendasDESCRICAO_PAGAMENTO.AsString,20,0)
           +'R$ '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsResumoVendasVENDAS.AsFloat),8,0));
          cdsResumoVendas.Next;
        end
        else
        begin
        end;
      end;
              Vendas  :=  StrToFloat(StringReplace(L_VENDAS.Caption,'.','',[rfReplaceAll]));
          Suprimentos :=  StrToFloat(StringReplace(L_SUPRIMENTO.Caption,'.','',[rfReplaceAll]));
            Sangrias  :=  StrToFloat(StringReplace(L_SANGRIA.Caption,'.','',[rfReplaceAll]));
               Saldo  :=  StrToFloat(StringReplace(L_SALDO.Caption,'.','',[rfReplaceAll]));
            Dinheiro  :=  StrToFloat(StringReplace(L_DINHEIRO.Caption,'.','',[rfReplaceAll]));

        Memo1.Lines.Add('-----------------------------------------------------------------------');
        Memo1.Lines.Add('VENDAS R$............:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Vendas),10,45));
        Memo1.Lines.Add('SUPRIMENTO R$........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Suprimentos),10,45));
        Memo1.Lines.Add('SANGRIA R$...........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Sangrias),10,45));
        Memo1.Lines.Add('DINHEIRO EM CAIXA R$.:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Dinheiro),10,45));
        Memo1.Lines.Add('TOTAL R$.............:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Saldo),10,45));
        Memo1.Lines.Add('-----------------------------------------------------------------------');
        Memo1.Lines.Add('');
        Memo1.Lines.Add('');
        Memo1.Lines.Add('              Assinatura do Operador de Caixa                         ');
        Memo1.Lines.Add('');
        Memo1.Lines.Add('           -----------------------------------------------              ');

      end;
  AssignFile(Arquivo,CaminhoImpressora);
  Rewrite(Arquivo);
  ImprimirMemo(Memo1);
  CloseFile(Arquivo);
end;

procedure TfrmPreviaFechamentoCaixa.ImprimirMemo(Memo: TMemo);
var
  I: integer;
  F: TextFile;
begin
  { Usa na impressora a mesma fonte do memo }
  Printer.Canvas.Font.Assign(Memo.Font);

  AssignPrn(F);
  Rewrite(F);
  try
    for I := 0 to Memo.Lines.Count -1 do
      WriteLn(F, Memo.Lines[I]);
  finally
    CloseFile(F);
  end;

end;

procedure TfrmPreviaFechamentoCaixa.BB_IMPRIMIRClick(Sender: TObject);
begin
  ImprimirPrevia;
end;

procedure TfrmPreviaFechamentoCaixa.BB_FECHARClick(Sender: TObject);
begin

  if Application.MessageBox('O Fechamento de Caixa Impossibilitar� a Realiza��o de Novas Vendas do dia.  Deseja Realmente Fechar o Caixa?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  begin
    DM.cdsRegOpenCloseCaixa.Close;
    DM.cdsRegOpenCloseCaixa.CommandText := ' SELECT OCC.*,U.NOME_USUARIO,L.R_SOCIAL,L.FANTASIA FROM TB_REG_OPEN_CLOSE_CAIXA OCC '
                                          +' JOIN TB_USUARIO U ON (U.id_USUARIO = OCC.id_USUARIO)'+
                                           ' JOIN TB_LOJAS   L ON (L.ID_LOJA    = OCC.ID_LOJA)'
                                          +' WHERE OCC.STATUS =''A'' AND OCC.CAIXA = '+L_CAIXA.Caption;
    DM.cdsRegOpenCloseCaixa.Open;

    DM.cdsRegOpenCloseCaixa.Edit;
    DM.cdsRegOpenCloseCaixaSTATUS.Value := 'F';
    DM.cdsRegOpenCloseCaixaDT_FECHAMENTO.AsDateTime := Date;
    DM.cdsRegOpenCloseCaixaHORA_FECHAMENTO.AsDateTime := Time;
    DM.cdsRegOpenCloseCaixa.ApplyUpdates(0);

    L_TEXTO.Caption := ' Fechamento de Caixa ';
    ShowMessage('Caixa Fechado, Aplica��o Ser� Encerrada.');

    //ImprimirPrevia;
    Application.Terminate;
  end
  else
  begin
    ShowMessage('Fechamento Cancelado');
    Close;
  end;
end;

procedure TfrmPreviaFechamentoCaixa.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
