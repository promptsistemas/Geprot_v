unit uCadServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadServicos = class(TForm)
    PCUPOM: TPanel;
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
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
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
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;

  public
    { Public declarations }
  end;

var
  frmCadServicos: TfrmCadServicos;
  Tipo : String;
  Campo : string;

implementation

uses U_LIB, UD_PESQUISA, uDm;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadServicos.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsServico.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsServico.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadServicos.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;


procedure TfrmCadServicos.FormShow(Sender: TObject);
begin
  DM.cdsServico.Close;
  DM.cdsServico.Open;
  GerenciaBotoes;
end;

procedure TfrmCadServicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #27 Then
   BB_CANCELARClick(Self);
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadServicos.DBEdit2Exit(Sender: TObject);
begin
  BB_GRAVARClick(Self);
end;

procedure TfrmCadServicos.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsServico.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsServico.FieldByName
    (DM.cdsServico.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsServico.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadServicos.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmCadServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsServico.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadServicos := nil;
  end;

end;

procedure TfrmCadServicos.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsServico.Insert;

  GerenciaBotoes;
  DBEdit4.SetFocus;

end;

procedure TfrmCadServicos.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  Campo := DBEdit1.Text;
  DM.cdsServico.Edit;
  GerenciaBotoes;
  DBEdit4.SetFocus;
end;

procedure TfrmCadServicos.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsServico.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadServicos.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Grupo ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsServico.Delete;
    DM.cdsServico.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadServicos.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsServico,['DESCRICAO'],['Servi�os'],
    [20],'','','','','Servi�os','Servi�os');
end;

procedure TfrmCadServicos.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsServico.Close;
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
//      DM.cdsServico.Close;
//      Close;
//    end;
//  end;

end;

procedure TfrmCadServicos.BB_GRAVARClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Favor Informar C�digo');
    DBEdit1.SetFocus;
    Exit;
  end;
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_SERVICO) FROM TB_SERVICO ';
    DM.cdsDinamica.Open;

    DM.cdsServicoID_SERVICO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsServico.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsServico.ApplyUpdates(0);
      DM.cdsServico.Refresh;
      GerenCiaBotoes;
      BB_NOVO.SetFocus;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsServico.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsServico.ApplyUpdates(0);
      DM.cdsServico.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.