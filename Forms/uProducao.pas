unit uProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DB, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TfrmProducao = class(TForm)
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
    TabSheet2: TTabSheet;
    P_PRODUCAO: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBGrid2: TDBGrid;
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
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    BB_SALVAR: TBitBtn;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    SpeedButton4: TSpeedButton;
    BB_INC_PAG: TBitBtn;
    qContasPagar: TSQLDataSet;
    qContasPagarID_CONTAS_PAGAR: TIntegerField;
    qContasPagarID_PRODUCAO: TIntegerField;
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
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarID_CONTAS_PAGAR: TIntegerField;
    cdsContasPagarID_PRODUCAO: TIntegerField;
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
    dsContasPagar: TDataSource;
    DBGrid3: TDBGrid;
    BB_EXC_PAG: TBitBtn;
    BB_VOL_PAG: TBitBtn;
    L_SALDO: TLabel;
    L_AVISO: TLabel;
    qContasPagarORIGEM: TStringField;
    cdsContasPagarORIGEM: TStringField;
    dsMateriaPrimaArtigo: TDataSource;
    cdsMateriaPrimaArtigo: TClientDataSet;
    dspMateriaPrimaArtigo: TDataSetProvider;
    qMateriaPrimaArtigo: TSQLQuery;
    qMateriaPrimaArtigoID_MATERIA_ARTIGO: TIntegerField;
    qMateriaPrimaArtigoID_ARTIGO: TIntegerField;
    qMateriaPrimaArtigoID_MATERIA_PRIMA: TIntegerField;
    qMateriaPrimaArtigoPERC_FIO: TFMTBCDField;
    qMateriaPrimaArtigoNOME_ARTIGO: TStringField;
    qMateriaPrimaArtigoNOME_MATERIA: TStringField;
    cdsMateriaPrimaArtigoID_MATERIA_ARTIGO: TIntegerField;
    cdsMateriaPrimaArtigoID_ARTIGO: TIntegerField;
    cdsMateriaPrimaArtigoID_MATERIA_PRIMA: TIntegerField;
    cdsMateriaPrimaArtigoPERC_FIO: TFMTBCDField;
    cdsMateriaPrimaArtigoNOME_ARTIGO: TStringField;
    cdsMateriaPrimaArtigoNOME_MATERIA: TStringField;
    BB_CONCLUIR: TBitBtn;
    qMateriaPrimaArtigoELASTANO: TStringField;
    cdsMateriaPrimaArtigoELASTANO: TStringField;
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
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure DBEdit8Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure BB_INC_PAGClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure BB_VOL_PAGClick(Sender: TObject);
    procedure BB_EXC_PAGClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1DblClick(Sender: TObject);
    procedure BB_CONCLUIRClick(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure SomaTotal;
    Procedure Somapagamentos;
    Procedure ValidacoesFinalizar;

  public
    { Public declarations }
  end;

var
  frmProducao: TfrmProducao;
  Tipo, Tp_operacao : string;
  SaldoPagamento : Double;
  Resultdo       : Boolean;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uContasPagar, uPesquisaPadrao;

procedure TfrmProducao.BB_ALTERARClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  tp_operacao := 'Edit';
  DM.cdsItemProducao.Edit;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmProducao.BB_CANCClick(Sender: TObject);
begin
  DM.cdsItemProducao.Cancel;
  SomaTotal;
  GerenciaBotoes2;

end;

procedure TfrmProducao.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsProducao.Cancel;
  GerenciaBotoes;
end;

procedure TfrmProducao.BB_CONCLUIRClick(Sender: TObject);
begin
 if DM.cdsItemProducao.RecordCount = 0 then
 begin
   ShowMessage('Nenhum Item Lan�ado Para Este Lan�amento. Impossiv�l Finalizar');
   Exit
 end;

  if DM.cdsProducaoSTATUS.AsString = 'F' then
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
      DM.cdsProducao.Edit;
      DM.cdsProducaoSTATUS.Value := 'F';
      DM.cdsProducao.ApplyUpdates(0);
      DM.cdsProducao.Refresh;
      ShowMessage('Registro Finalizado Com Sucesso');
    end;

end;

procedure TfrmProducao.BB_EDITARClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Edit';

  DM.cdsProducao.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmProducao.BB_EXCClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if cdsContasPagar.RecordCount > 0 then
  begin
    ShowMessage('Imposs�vel Excluir Registro(s). Existe(m) Pagamento(s) Vindulado(s).');
    Exit;
  end;

  if Application.MessageBox('Deseja Realmente Excluir. S/N ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = IDYES Then
  begin
    DM.cdsItemProducao.Delete;
    DM.cdsItemProducao.ApplyUpdates(0);
    DM.cdsItemProducao.Refresh;
    SomaTotal;
  End
  else
  begin
    ShowMessage('Registro n�o Exclu�do');
    GerenciaBotoes2;
  end;


end;

procedure TfrmProducao.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if DM.cdsItemProducao.RecordCount > 0  then
  begin
    ShowMessage('Impossiv�l Excluir Nota. Existe(m) Registro(s) Vinculado(s). Exclua o(s) Registro(s) Antes de Excluir a Nota. ');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsProducao.Delete;
    DM.cdsProducao.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Registro N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmProducao.BB_EXC_PAGClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Este(s) Registro(s) ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' delete from TB_CONTAS_PAGAR CP '+
                                  ' WHERE CP.ID_CLIENTE = '+DM.cdsProducaoID_CLIENTE.AsString+
                                  ' AND   CP.ID_PRODUCAO = '+DM.cdsProducaoID_PRODUCAO.AsString;
    DM.cdsDinamica.Execute;
    cdsContasPagar.ApplyUpdates(0);
    cdsContasPagar.Refresh;
    ShowMessage('Registro(s) Exclu�do(s) Com Sucesso.');
  end
  else
  begin
    ShowMessage('Registro(s) N�o Exclu�do(s)');
  end;

end;

procedure TfrmProducao.BB_GRAVARClick(Sender: TObject);
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames;
  DM.cdsDinamica.CommandText:=' SELECT P.nr_nota_fiscal, P.id_forncedor FROM tb_producao P'+
                              ' WHERE P.nr_nota_fiscal = '+DBEdit5.Text+
                              ' AND P.id_forncedor = '+DBEdit2.Text;

  DM.cdsDinamica.Open ;

  if DM.cdsDinamica.IsEmpty then
  begin
      if DM.cdsProducaoNR_NF_REMESSA.AsInteger = DM.cdsProducaoNR_NOTA_FISCAL.AsInteger then
      begin
        ShowMessage('N� Nota Fiscal Remessa n�o pode ser igual ao N� da Nota Fiscal' );
        exit
      end;
      if DM.cdsProducaoID_FORNCEDOR.IsNull then
      begin
        ShowMessage('Campo Fornecedor de Preenchimento Obrigatorio!');
        DBEdit2.SetFocus;
        DBEdit2.Color := clYellow;
        Exit;
      end;

      if DM.cdsProducaoID_CLIENTE.IsNull then
      begin
        ShowMessage('Campo Cliente de Preenchimento Obrigatorio!');
        DBEdit3.SetFocus;
        DBEdit3.Color := clYellow;
        Exit;
      end;

      if DM.cdsProducaoNR_NOTA_FISCAL.IsNull then
      begin
        ShowMessage('Campo N� Nota Fiscal de Preenchimento Obrigatorio!');
        DBEdit5.SetFocus;
        DBEdit5.Color := clYellow;
        Exit;
      end;

      if DM.cdsProducaoID_FORN_REM.IsNull then
      begin
        ShowMessage('Campo Malharia de Preenchimento Obrigatorio!');
        DBEdit8.SetFocus;
        DBEdit8.Color := clYellow;
        Exit;
      end;

      if DM.cdsProducaoNR_NF_REMESSA.IsNull then
      begin
        ShowMessage('Campo N� NF Remessa de Preenchimento Obrigatorio!');
        DBEdit19.SetFocus;
        DBEdit19.Color := clYellow;
        Exit;
      end;

      if Tipo = 'Insert' then
      begin
        DM.cdsDinamica.Close;
        DM.cdsDinamica.IndexFieldNames:='';
        DM.cdsDinamica.CommandText :=' SELECT MAX(ID_PRODUCAO) FROM TB_PRODUCAO';
        DM.cdsDinamica.Open;

        DM.cdsProducaoID_PRODUCAO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

        if DM.cdsProducao.ApplyUpdates(0) <> 0 then
        begin
          ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
          BB_GRAVAR.SetFocus;
        end
        else
        begin
          DM.cdsProducao.DisableControls;
          DM.cdsProducao.ApplyUpdates(0);
    //      DM.cdsProducao.Refresh;
          DM.cdsProducao.EnableControls;
          GerenCiaBotoes;
          GerenciaBotoes2;
          BB_INCLUIRClick(Self);
        end;
      end;

      if Tipo = 'Edit' then
      begin
        if DM.cdsProducao.ApplyUpdates(0) <> 0 then
        begin
          ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
          BB_GRAVAR.SetFocus;
        end
        else
        begin
          DM.cdsProducao.ApplyUpdates(0);
    //      DM.cdsItemProducao.Refresh;
          GerenCiaBotoes;
          GerenciaBotoes2;
          BB_INCLUIRClick(Self);
        end;
      end;
  end
  else
  begin
     ShowMessage('N� Nota Fiscal J� Lan�ada Para Esse Fornecedor ');
     Exit
  end;

end;

procedure TfrmProducao.BB_INCLUIRClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  Tp_Operacao := 'Insert';

  if DM.cdsProducao.RecordCount = 0 then
  begin
    ShowMessage('N�o Existe Notas Cadastradas para este Lan�amento.');
    exit;
    BB_CANCClick(Self);
  end;

  DM.cdsItemProducao.Append;
  DM.cdsItemProducao.Open;
  DM.cdsItemProducaoVL_UNIT_REAL.AsFloat := 0;
  DM.cdsItemProducaoVL_TOTAL_REAL.AsFloat := 0;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmProducao.BB_NOVOClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Insert';

  DM.cdsProducao.Insert;
  DM.cdsProducaoSTATUS.Value := 'A';
  DM.cdsProducaoQUANT.AsFloat := 0;
  DM.cdsProducaoVL_NOTA.AsFloat := 0;
  DM.cdsProducaoVL_POR_FORA.AsFloat := 0;
  DM.cdsProducaoVL_TOTAL.AsFloat := 0;
  DM.cdsProducaoVL_TOTAL_NF.AsFloat := 0;
  DM.cdsProducaoVL_ACUMULADO.AsFloat := 0;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmProducao.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Producao';
  frmPesquisaPadrao.CDS := DM.cdsProducao;
  frmPesquisaPadrao.Tabela := 'TB_PRODUCAO P';
  frmPesquisaPadrao.CampoBusca := 'F.NOME';
  frmPesquisaPadrao.CampoBusca2 := 'C.R_SOCIAL';
  frmPesquisaPadrao.CampoBusca3 := 'P.NR_NOTA_FISCAL';
  frmPesquisaPadrao.CampoChave  := 'F.NOME';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Entrada Nota Fiscal';
  frmPesquisaPadrao.Sql            := ' SELECT P.ID_PRODUCAO, P.ID_FORNCEDOR, P.ID_CLIENTE, P.DT_EMISSAO, P.NR_NOTA_FISCAL, P.QUANT, '+
                                      ' P.STATUS, P.VL_NOTA, P.VL_POR_FORA, P.VL_TOTAL, P.ID_FORN_REM, P.NR_NF_REMESSA, P.VL_TOTAL_NF,'+
                                      ' P.VL_ACUMULADO,  F.NOME AS FORNECEDOR, C.R_SOCIAL AS CLIENTE, FF.NOME AS MALHARIA ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Fornecedor';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'FORNECEDOR';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Cliente';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'CLIENTE';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 210;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'Nota Fiscal';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'NR_NOTA_FISCAL';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 80;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

//  Pesquisa(DM.cdsProducao,['FORNECEDOR','NR_NOTA_FISCAL','CLIENTE','DT_EMISSAO'],['Importadora','N� Nota','Cliente','Data Emiss�o'],
//    [20,8,20,8],'','','','','Entrada Produto','Entrada Produto');

  GerenciaBotoes2;
  PageControl2Change(Self);
end;

procedure TfrmProducao.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProducao.BB_SALVARClick(Sender: TObject);
begin
  DM.cdsItemProducao.Cancel;
  SomaTotal;
  GerenciaBotoes2;
end;

procedure TfrmProducao.BB_VOL_PAGClick(Sender: TObject);
begin
  TabSheet4.PageControl.ActivePage:=TabSheet3;
end;

procedure TfrmProducao.BB_INC_PAGClick(Sender: TObject);
begin
  if DM.cdsProducaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if frmContasPagar = nil then
  begin
    frmContasPagar := TfrmContasPagar.Create(Application);
    frmContasPagar.ShowModal;
  end;
end;

procedure TfrmProducao.DBEdit12Exit(Sender: TObject);
begin
  DM.cdsItemProducaoVL_TOTAL.AsFloat := (DM.cdsItemProducaoQUANT_FATURADO.AsFloat*DM.cdsItemProducaoVL_UNIT.AsFloat);
end;

procedure TfrmProducao.DBEdit13Exit(Sender: TObject);
begin
  if tp_operacao = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(ID_ITEM_PRODUCAO) FROM TB_ITEM_PRODUCAO ';
      DM.cdsDinamica.Open;
      DM.cdsItemProducaoID_ITEM_PRODUCAO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      if DM.cdsItemProducao.ApplyUpdates(0) <> 0 then
      begin
         ShowMessage('Erro ao Gravar Registro. Consulte o Suporte! ');
      end
      else
      begin
        DM.cdsItemProducao.ApplyUpdates(0);
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
      DM.cdsItemProducao.ApplyUpdates(0);
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

procedure TfrmProducao.DBEdit14Exit(Sender: TObject);
begin
  if DBEdit14.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsMatPrima.Open;
  if DM.cdsMatPrima.Locate('ID_MATERIA',DBEdit14.Text,[]) then
  begin
    cdsMateriaPrimaArtigo.Close;
    cdsMateriaPrimaArtigo.Params[0].AsInteger := DM.cdsItemProducaoID_MATERIA_PRIMA.AsInteger;
    cdsMateriaPrimaArtigo.Open;

    DM.cdsItemProducaoID_MATERIA_PRIMA.AsInteger             := DM.cdsMatPrimaID_MATERIA.AsInteger;
    DM.cdsItemProducaoNOME_MATERIA.AsString                  := DM.cdsMatPrimaNOME_MATERIA.AsString;
    DBEdit17.SetFocus;
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

procedure TfrmProducao.DBEdit14KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProducao.DBEdit2Exit(Sender: TObject);
begin
  if DBEdit2.Text = '' Then
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
                                  ' WHERE F.ID_CATEGORIA = 3';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DBEdit2.Text,[]) then
  begin
    DM.cdsProducaoID_FORNCEDOR.AsInteger          := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsProducaoFORNECEDOR.AsString             := DM.cdsFornecedorNOME.AsString;
    DBEdit3.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Fornecedor N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end;


end;

procedure TfrmProducao.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProducao.DBEdit3Exit(Sender: TObject);
begin
  if DBEdit3.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsCliente.Open;
  if DM.cdsCliente.Locate('ID_CLIENTE',DBEdit3.Text,[]) then
  begin
    DM.cdsProducaoID_CLIENTE.AsInteger         := DM.cdsClienteID_CLIENTE.AsInteger;
    DM.cdsProducaoCLIENTE.AsString             := DM.cdsClienteR_SOCIAL.AsString;
    DBEdit4.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Cliente N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton2Click(Self);
  end;

end;

procedure TfrmProducao.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProducao.DBEdit8Exit(Sender: TObject);
begin
  if DBEdit8.Text = '' Then
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

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DM.cdsProducaoID_FORN_REM.AsString,[]) then
  begin
    DM.cdsProducaoID_FORN_REM.AsInteger           := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsProducaoMALHARIA.AsString               := DM.cdsFornecedorNOME.AsString;
    DBEdit19.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Malharia N�o Encontrada           '+#13+
                '                                     ');
   DBEdit8.SetFocus;
   Exit;
//    SpeedButton2Click(Self);
  end;
end;

procedure TfrmProducao.DBEdit8KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProducao.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If DM.cdsProducaoSTATUS.AsString = 'A'  then // condi��o
  begin
   DBGrid2.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
      Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
      Font.Style := [fsBold];
      FillRect(Rect);
    end;
    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
  end
  ELSE
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;
  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

procedure TfrmProducao.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
//  PageControl2Change(Self);
    DM.cdsItemProducao.Close;
//    cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsRemessaProducaoID_PRODUCAO.AsInteger;
    DM.cdsItemProducao.Open;

  cdsContasPagar.Close;
  cdsContasPagar.Params[0].AsInteger := StrToInt(DM.cdsProducaoID_CLIENTE.AsString);
  cdsContasPagar.Params[1].AsDate    := StrToDate(DM.cdsProducaoDT_EMISSAO.AsString);
  cdsContasPagar.Params[2].AsInteger := StrToInt(DM.cdsProducaoID_FORNCEDOR.AsString);
  cdsContasPagar.Params[3].AsInteger := StrToInt(DM.cdsProducaoNR_NOTA_FISCAL.AsString);
  cdsContasPagar.Open;
  Somapagamentos;
  if cdsContasPagar.IsEmpty then
    L_AVISO.Visible := True
  else
    L_AVISO.Visible := False;

end;

procedure TfrmProducao.DBNavigator1DblClick(Sender: TObject);
begin
  PageControl2Change(Self);
end;

procedure TfrmProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsProducao.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmProducao := NIL;
  end;
  if DM.cdsItemProducao.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmProducao := NIL;
  end;



end;

procedure TfrmProducao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmProducao.FormShow(Sender: TObject);
begin
  DM.cdsProducao.Close;
  DM.cdsProducao.Open;

  if DM.cdsProducao.RecordCount > 0 then
  begin
    DM.cdsItemProducao.Close;
    DM.cdsItemProducao.Params[0].AsInteger := DM.cdsProducaoID_PRODUCAO.AsInteger;
    DM.cdsItemProducao.Open;
  end;

  if DM.cdsProducao.RecordCount > 0 then
  begin
    cdsContasPagar.Close;
    cdsContasPagar.Params[0].AsInteger := StrToInt(DM.cdsProducaoID_CLIENTE.AsString);
    cdsContasPagar.Params[1].AsDate    := StrToDate(DM.cdsProducaoDT_EMISSAO.AsString);
    cdsContasPagar.Params[2].AsInteger := StrToInt(DM.cdsProducaoID_FORNCEDOR.AsString);
    cdsContasPagar.Params[3].AsInteger := StrToInt(DM.cdsProducaoNR_NOTA_FISCAL.AsString);
    cdsContasPagar.Open;
    Somapagamentos;
    if cdsContasPagar.IsEmpty then
      L_AVISO.Visible := True
    else
      L_AVISO.Visible := False;

  end;

  GerenciaBotoes;
  GerenciaBotoes2;

end;

procedure TfrmProducao.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsProducao.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsProducao.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_CONCLUIR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  P_PRODUCAO.Enabled := not BB_NOVO.Enabled;

end;

procedure TfrmProducao.GerenciaBotoes2;
begin
  BB_INCLUIR.Enabled       := not (DM.cdsItemProducao.State in dsEditModes);
  BB_SALVAR.Enabled        := NOT BB_INCLUIR.Enabled;
  BB_EXC.Enabled           := BB_INCLUIR.Enabled and not (DM.cdsItemProducao.IsEmpty);
  BB_CANC.Enabled          := BB_SALVAR.Enabled;
  BB_ALTERAR.Enabled       := BB_EXC.Enabled;
  p_item.Enabled        := not BB_INCLUIR.Enabled;

end;

procedure TfrmProducao.PageControl2Change(Sender: TObject);
begin
  if DM.cdsProducao.RecordCount > 0 then
  begin
    DM.cdsItemProducao.Close;
    DM.cdsItemProducao.Params[0].AsInteger := DM.cdsProducaoID_PRODUCAO.AsInteger;
    DM.cdsItemProducao.Open;
  end;

  cdsContasPagar.Close;
  cdsContasPagar.Params[0].AsInteger := StrToInt(DM.cdsProducaoID_CLIENTE.AsString);
  cdsContasPagar.Params[1].AsDate    := StrToDate(DM.cdsProducaoDT_EMISSAO.AsString);
  cdsContasPagar.Params[2].AsInteger := StrToInt(DM.cdsProducaoID_FORNCEDOR.AsString);
  cdsContasPagar.Params[3].AsInteger := StrToInt(DM.cdsProducaoNR_NOTA_FISCAL.AsString);
  cdsContasPagar.Open;
  Somapagamentos;
  if cdsContasPagar.IsEmpty then
    L_AVISO.Visible := True
  else
    L_AVISO.Visible := False;

end;

procedure TfrmProducao.Somapagamentos;
Var
 sSql : string;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT CP.VL_COMPRA, SUM(CP.VL_PARCELA), '+
                                ' CP.VL_COMPRA -SUM(CP.VL_PARCELA)  '+
                                ' FROM TB_CONTAS_PAGAR CP '+
                                ' WHERE CP.ID_FORNECEDOR = '+DM.cdsProducaoID_FORNCEDOR.AsString+
                                ' AND CP.NR_NOTA_FISCAL = '+DM.cdsProducaoNR_NOTA_FISCAL.AsString+
                                ' GROUP BY CP.VL_COMPRA ';
  DM.cdsDinamica.Open;


  if DM.cdsDinamica.IsEmpty then
  begin
    L_SALDO.Caption := 'Total R$ 0,00';
    SaldoPagamento := 0;
  end
  else
  begin
    L_SALDO.Caption := 'Total R$ '+FormatFloat('###,###0.000',DM.cdsDinamica.Fields[1].AsFloat);
    SaldoPagamento := DM.cdsDinamica.Fields[2].AsFloat;

    if SaldoPagamento < 0 then
    begin
      L_SALDO.Font.Color := clRed;
    end;

    if DM.cdsDinamica.Fields[1].AsFloat < DM.cdsProducaoVL_NOTA.AsFloat then
    begin
      L_SALDO.Font.Color := $00A3DBF3;
    end;

    if DM.cdsDinamica.Fields[1].AsFloat = DM.cdsProducaoVL_NOTA.AsFloat then
    begin
      L_SALDO.Font.Color := clGreen;
    end;


  end;
end;

procedure TfrmProducao.SomaTotal;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText :=' SELECT SUM(IP.VL_TOTAL),SUM(QUANT_FATURADO) FROM TB_ITEM_PRODUCAO IP '+
                               ' WHERE IP.ID_PRODUCAO = '+DM.cdsProducaoID_PRODUCAO.AsString;
  DM.cdsDinamica.Open;


  DM.cdsProducao.Edit;
  DM.cdsProducaoVL_NOTA.AsFloat  := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsProducaoVL_TOTAL.AsFloat := (DM.cdsProducaoVL_NOTA.AsFloat+DM.cdsProducaoVL_POR_FORA.AsFloat);
  DM.cdsProducaoQUANT.AsFloat    := (DM.cdsDinamica.Fields[1].AsFloat);

  DM.cdsProducao.ApplyUpdates(0);


end;

procedure TfrmProducao.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 3';

  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');

  DM.cdsProducaoID_FORNCEDOR.AsInteger                   := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsProducaoFORNECEDOR.AsString                      := DM.cdsFornecedorNOME.AsString;
{  DM.cdsProducaoINS_EST.AsString                          := DM.cdsFornecedorINS_EST.AsString;
  DM.cdsProducaoINSC.AsString                             := TiraPontoeVirgula(DM.cdsFornecedorINS_EST.AsString);
  DM.cdsProducaoCNPJ.AsString                             := TiraPontoeVirgula(DM.cdsFornecedorCNPJ.AsString);
  DM.cdsProducaoCNPJ_1.AsString                           := DM.cdsFornecedorCNPJ.AsString;
  DM.cdsProducaoUF.AsString                               := DM.cdsFornecedorUF.AsString;
  DM.cdsProducaoUF_1.AsString                             := DM.cdsFornecedorUF.AsString;
  DM.cdsProducaoCIDADE.AsString                           := DM.cdsFornecedorCIDADE.AsString;
 }

  DBEdit3.SetFocus;
end;

procedure TfrmProducao.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsCliente.Close;
  DM.cdsCliente.Open;
  Pesquisa(DM.cdsCliente,['R_SOCIAL','ID_CLIENTE'],['Nome do Cliente','C�digo'],[40,4],'','','','','Cliente','Cliente');

  DM.cdsProducaoID_CLIENTE.AsInteger                   := DM.cdsClienteID_CLIENTE.AsInteger;
  DM.cdsProducaoCLIENTE.AsString                      := DM.cdsClienteR_SOCIAL.AsString;
{  DM.cdsProducaoINS_EST.AsString                          := DM.cdsFornecedorINS_EST.AsString;
  DM.cdsProducaoINSC.AsString                             := TiraPontoeVirgula(DM.cdsFornecedorINS_EST.AsString);
  DM.cdsProducaoCNPJ.AsString                             := TiraPontoeVirgula(DM.cdsFornecedorCNPJ.AsString);
  DM.cdsProducaoCNPJ_1.AsString                           := DM.cdsFornecedorCNPJ.AsString;
  DM.cdsProducaoUF.AsString                               := DM.cdsFornecedorUF.AsString;
  DM.cdsProducaoUF_1.AsString                             := DM.cdsFornecedorUF.AsString;
  DM.cdsProducaoCIDADE.AsString                           := DM.cdsFornecedorCIDADE.AsString;
 }
  DBEdit4.SetFocus;
end;

procedure TfrmProducao.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmProducao.SpeedButton4Click(Sender: TObject);
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

    DM.cdsProducaoID_FORN_REM.AsInteger    := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsProducaoMALHARIA.AsString        := DM.cdsFornecedorNOME.AsString;
    DBEdit19.SetFocus;
end;

procedure TfrmProducao.SpeedButton5Click(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'ItemNF';
  frmPesquisaPadrao.CDS := DM.cdsMatPrima;
  frmPesquisaPadrao.Tabela := 'TB_MATERIA_PRIMA MP';
  frmPesquisaPadrao.CampoBusca := 'MP.NOME_MATERIA';
  frmPesquisaPadrao.CampoBusca2 := 'MP.PERC_FIO';
  frmPesquisaPadrao.CampoBusca3 := 'MP.ID_MATERIA';
  frmPesquisaPadrao.CampoChave  := 'MP.NOME_MATERIA';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Entrada Nota Fiscal';
  frmPesquisaPadrao.Sql            := ' SELECT  MP.ID_MATERIA, MP.NOME_MATERIA, MP.PERC_FIO, MP.ELASTANO ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Nome da Mat�ria';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 250;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 80;

{  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'Nota Fiscal';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'ID_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 80;}

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

  cdsMateriaPrimaArtigo.Close;
  cdsMateriaPrimaArtigo.Params[0].AsInteger := DM.cdsItemProducaoID_MATERIA_PRIMA.AsInteger;
  cdsMateriaPrimaArtigo.Open;

  DM.cdsItemProducaoID_MATERIA_PRIMA.AsInteger             := DM.cdsMatPrimaID_MATERIA.AsInteger;
  DM.cdsItemProducaoNOME_MATERIA.AsString                  := DM.cdsMatPrimaNOME_MATERIA.AsString;

  DBEdit17.SetFocus;


{  DM.cdsMatPrima.Close;
  DM.cdsMatPrima.Open;
  Pesquisa(DM.cdsMatPrima,['NOME_MATERIA','ID_MATERIA'],['Mat�ria-Prima','C�digo'],[40,4],'','','','','Cliente','Cliente');

  DM.cdsItemProducaoID_MATERIA_PRIMA.AsInteger             := DM.cdsMatPrimaID_MATERIA.AsInteger;
  DM.cdsItemProducaoNOME_MATERIA.AsString                  := DM.cdsMatPrimaNOME_MATERIA.AsString;
  DM.cdsItemProducaoPERC_FIO.AsFloat                       := DM.cdsMatPrimaPERC_FIO.AsFloat;

  DBEdit17.SetFocus;}

end;

procedure TfrmProducao.ValidacoesFinalizar;
begin
  //-verificar se existem itens na nota

  if DM.cdsItemProducao.RecordCount = 0 then
  begin
    ShowMessage('Imposs�vel Finalizar Nota. N�o Exite(m) Iten(s) Lan�ado(s).');
    Resultdo := True;
    Exit;
  end
  else
      Resultdo := False;


  //- verificar Se Exitem Pagamentos Lancados.
  if cdsContasPagar.RecordCount = 0 then
  begin
    ShowMessage('Imposs�vel Finalizar Nota. N�o Exite(m) Pagamento(s) Lan�ado(s).');
    Resultdo := True;
    Exit;
  end
  else
      Resultdo := False;

  Somapagamentos;
  if DM.cdsDinamica.Fields[1].AsFloat < DM.cdsProducaoVL_NOTA.AsFloat then
  begin
    ShowMessage('Imposs�vel Finalizar Nota. N�o Exite(m) Pagamento(s) Lan�ado(s) Com o Valor Menor que o Total da Nota.');
    Resultdo := True;
    DM.cdsDinamica.Close;
    Exit;
  end
  else
    Resultdo := False;



end;

end.
