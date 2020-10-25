unit uCadMatPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadMatPrima = class(TForm)
    PCUPOM: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    BB_CANCELAR: TBitBtn;
    Panel1: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    Label22: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit35: TDBEdit;
    Label43: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
  public
    { Public declarations }
  end;

var
  frmCadMatPrima: TfrmCadMatPrima;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm, uCadGrupo, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadMatPrima.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsMatPrima.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsMatPrima.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadMatPrima.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadMatPrima.FormShow(Sender: TObject);
begin
  DM.cdsMatPrima.Open;
  GerenciaBotoes;
end;

procedure TfrmCadMatPrima.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadMatPrima.DBEdit35Exit(Sender: TObject);
begin
  if (DBEdit35.Text = '') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit35.SetFocus;
    Exit;

  end;
  if (DBEdit35.Text <> 'S') AND (DBEdit35.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit35.SetFocus;
    Exit;
  end
  else
  begin
    BB_GRAVAR.SetFocus;
  end;

end;

procedure TfrmCadMatPrima.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsMatPrima.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsMatPrima.FieldByName
    (DM.cdsMatPrima.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsMatPrima.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadMatPrima.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmCadMatPrima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsMatPrima.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadMatPrima := nil;
  end;

end;

procedure TfrmCadMatPrima.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsMatPrima.Insert;

  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadMatPrima.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsMatPrima.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadMatPrima.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsMatPrima.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadMatPrima.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Esta Mat�ria-Prima ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsMatPrima.Delete;
    DM.cdsMatPrima.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadMatPrima.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);

  frmPesquisaPadrao.CDS := DM.cdsMatPrima;
  frmPesquisaPadrao.TB_PESQUISA := 'Materia-Prima';
  frmPesquisaPadrao.Tabela := 'TB_MATERIA_PRIMA MP ';
  frmPesquisaPadrao.CampoBusca := 'MP.NOME_MATERIA';
  frmPesquisaPadrao.CampoBusca2 := 'MP.PERC_FIO';
  frmPesquisaPadrao.CampoChave  := 'MP.NOME_MATERIA';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Mat�ria-Prima';
  frmPesquisaPadrao.Sql            := 'SELECT MP.ID_MATERIA, MP.NOME_MATERIA, MP.PERC_FIO, MP.ELASTANO ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

{  DM.cdsProdutoNCM.AsString       := Copy(DM.cdsNCMNCM.AsString,0,8);
  DM.cdsProdutoDESC_NCM.AsString := DM.cdsNCMDESCRICAO.AsString;
  DM.cdsProdutoID_NCM.AsInteger  := DM.cdsNCMID_NCM.AsInteger;
  DBEdit30.SetFocus;}


//  Pesquisa(DM.cdsMatPrima,['NOME_MATERIA'],['Mat�ria-Prima'],
//    [20],'','','','','Mat�ria-Prima','Mat�ria-Prima');
end;

procedure TfrmCadMatPrima.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsMatPrima.Close;
//    Close;
//  end
//  else
//  begin
//    if Application.MessageBox('Existe(m) Grupo(s) de Produto(s) sem importar, Deseja Importar Grupo(s) de Produto(s) Agora?','Aten��o',MB_OK+MB_YESNO)= idyes then
//    begin
//      BB_EXPORTARClick(Self);
//    end
//    else
//    begin
//      DM.cdsMatPrima.Close;
//      Close;
//    end;
//  end;

end;

procedure TfrmCadMatPrima.BB_GRAVARClick(Sender: TObject);
begin
  if (DBEdit35.Text = '') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit35.SetFocus;
    Exit;

  end;
  if (DBEdit35.Text <> 'S') AND (DBEdit35.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit35.SetFocus;
    Exit;
  end;


  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_MATERIA) FROM TB_MATERIA_PRIMA ';
    DM.cdsDinamica.Open;

    DM.cdsMatPrimaID_MATERIA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsMatPrima.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsMatPrima.ApplyUpdates(0);
      DM.cdsMatPrima.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsMatPrima.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsMatPrima.ApplyUpdates(0);
      DM.cdsMatPrima.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.
