unit uCadPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, ComCtrls,db,
  Grids, DBGrids, QuickRpt,ExtDlgs, jpeg,FMTBcd, DBClient, Provider, SqlExpr, StrUtils,
  ACBrBarCode, System.Sensors, System.Sensors.Components;

type
  TfrmCadPro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label27: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label28: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit17: TDBEdit;
    Label3: TLabel;
    DBEdit18: TDBEdit;
    Label12: TLabel;
    DBEdit19: TDBEdit;
    Label15: TLabel;
    DBEdit20: TDBEdit;
    Label16: TLabel;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    DBEdit21: TDBEdit;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit25: TDBEdit;
    Label22: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    spInsertProdDincash: TSQLStoredProc;
    dspInsertProdDincash: TDataSetProvider;
    cdsInsertProdDincash: TClientDataSet;
    dsInsertProdDincash: TDataSource;
    sqlProdutoDTO: TSQLDataSet;
    sqlValidacaoDTO: TSQLDataSet;
    dspProdutoDTO: TDataSetProvider;
    cdsProdutoDTO: TClientDataSet;
    dsProdutoDTO: TDataSource;
    dspValidacaoDTO: TDataSetProvider;
    cdsValidacaoDTO: TClientDataSet;
    dsValidacaoDTO: TDataSource;
    Label23: TLabel;
    ACBrBarCode1: TACBrBarCode;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    sqlProdutoDTOPRODUTODTO_ID: TLargeintField;
    sqlProdutoDTOALCOFINS: TFloatField;
    sqlProdutoDTOALIQREDU: TFloatField;
    sqlProdutoDTOALIQUIPI: TFloatField;
    sqlProdutoDTOALIQUOTA: TFloatField;
    sqlProdutoDTOALIQUPIS: TFloatField;
    sqlProdutoDTOCATRIBPT: TFloatField;
    sqlProdutoDTOCODBARRA: TStringField;
    sqlProdutoDTOCODEXNCM: TStringField;
    sqlProdutoDTOCODGRUPO: TStringField;
    sqlProdutoDTOCODNCM: TStringField;
    sqlProdutoDTOCODREFER: TStringField;
    sqlProdutoDTOCODRETAG: TStringField;
    sqlProdutoDTOCOMP1MOD: TStringField;
    sqlProdutoDTOCOMP2MOD: TStringField;
    sqlProdutoDTODESCMAXI: TFloatField;
    sqlProdutoDTOESTQMAXI: TFloatField;
    sqlProdutoDTOESTQMINI: TFloatField;
    sqlProdutoDTOGUID: TStringField;
    sqlProdutoDTOGUIDGRUP: TStringField;
    sqlProdutoDTOGUIDPROD: TStringField;
    sqlProdutoDTOGUIDREF: TStringField;
    sqlProdutoDTOID: TStringField;
    sqlProdutoDTONOMEPROD: TStringField;
    sqlProdutoDTONUMDECQT: TFloatField;
    sqlProdutoDTONUMDECVL: TFloatField;
    sqlProdutoDTOPRAZGARA: TFloatField;
    sqlProdutoDTOPRECOVDA: TFloatField;
    sqlProdutoDTOPRODPESO: TStringField;
    sqlProdutoDTOQTDEMBAL: TFloatField;
    sqlProdutoDTOREFERPRO: TStringField;
    sqlProdutoDTOSITMODEL: TStringField;
    sqlProdutoDTOSITPRODU: TStringField;
    sqlProdutoDTOSITTRIBU: TStringField;
    sqlProdutoDTOSITTRIPI: TStringField;
    sqlProdutoDTOSITTRPIS: TStringField;
    sqlProdutoDTOSTCOFINS: TStringField;
    sqlProdutoDTOTIPOALIQ: TStringField;
    sqlProdutoDTOUNIDMEDI: TStringField;
    sqlProdutoDTOUNIDREFE: TStringField;
    sqlProdutoDTOCATRIBPTEST: TFloatField;
    sqlProdutoDTOCODCFOP: TStringField;
    sqlProdutoDTOCATRIBPTFED: TFloatField;
    cdsProdutoDTOPRODUTODTO_ID: TLargeintField;
    cdsProdutoDTOALCOFINS: TFloatField;
    cdsProdutoDTOALIQREDU: TFloatField;
    cdsProdutoDTOALIQUIPI: TFloatField;
    cdsProdutoDTOALIQUOTA: TFloatField;
    cdsProdutoDTOALIQUPIS: TFloatField;
    cdsProdutoDTOCATRIBPT: TFloatField;
    cdsProdutoDTOCODBARRA: TStringField;
    cdsProdutoDTOCODEXNCM: TStringField;
    cdsProdutoDTOCODGRUPO: TStringField;
    cdsProdutoDTOCODNCM: TStringField;
    cdsProdutoDTOCODREFER: TStringField;
    cdsProdutoDTOCODRETAG: TStringField;
    cdsProdutoDTOCOMP1MOD: TStringField;
    cdsProdutoDTOCOMP2MOD: TStringField;
    cdsProdutoDTODESCMAXI: TFloatField;
    cdsProdutoDTOESTQMAXI: TFloatField;
    cdsProdutoDTOESTQMINI: TFloatField;
    cdsProdutoDTOGUID: TStringField;
    cdsProdutoDTOGUIDGRUP: TStringField;
    cdsProdutoDTOGUIDPROD: TStringField;
    cdsProdutoDTOGUIDREF: TStringField;
    cdsProdutoDTOID: TStringField;
    cdsProdutoDTONOMEPROD: TStringField;
    cdsProdutoDTONUMDECQT: TFloatField;
    cdsProdutoDTONUMDECVL: TFloatField;
    cdsProdutoDTOPRAZGARA: TFloatField;
    cdsProdutoDTOPRECOVDA: TFloatField;
    cdsProdutoDTOPRODPESO: TStringField;
    cdsProdutoDTOQTDEMBAL: TFloatField;
    cdsProdutoDTOREFERPRO: TStringField;
    cdsProdutoDTOSITMODEL: TStringField;
    cdsProdutoDTOSITPRODU: TStringField;
    cdsProdutoDTOSITTRIBU: TStringField;
    cdsProdutoDTOSITTRIPI: TStringField;
    cdsProdutoDTOSITTRPIS: TStringField;
    cdsProdutoDTOSTCOFINS: TStringField;
    cdsProdutoDTOTIPOALIQ: TStringField;
    cdsProdutoDTOUNIDMEDI: TStringField;
    cdsProdutoDTOUNIDREFE: TStringField;
    cdsProdutoDTOCATRIBPTEST: TFloatField;
    cdsProdutoDTOCODCFOP: TStringField;
    cdsProdutoDTOCATRIBPTFED: TFloatField;
    sqlValidacaoDTOVALIDACAODTO_ID: TLargeintField;
    sqlValidacaoDTOCODLOJA: TFloatField;
    sqlValidacaoDTOID: TStringField;
    cdsValidacaoDTOVALIDACAODTO_ID: TLargeintField;
    cdsValidacaoDTOCODLOJA: TFloatField;
    cdsValidacaoDTOID: TStringField;
    DBEdit26: TDBEdit;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    BB_EXPORTAR: TBitBtn;
    Panel1: TPanel;
    DBText3: TDBText;
    Label33: TLabel;
    Label34: TLabel;
    BitBtn1: TBitBtn;
    bb_enviaDJ: TBitBtn;
    BB_ENVIAR_TODOS: TBitBtn;
    DBEdit27: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit28: TDBEdit;
    Label24: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit30: TDBEdit;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label18: TLabel;
    DBComboBox1: TDBComboBox;
    Label21: TLabel;
    GroupBox4: TGroupBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit31: TDBEdit;
    Label37: TLabel;
    GroupBox5: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label40: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label41: TLabel;
    DBEdit23: TDBEdit;
    GroupBox6: TGroupBox;
    Label25: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit14: TDBEdit;
    DBEdit5: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label26: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label32: TLabel;
    DBEdit34: TDBEdit;
    Label42: TLabel;
    DBEdit35: TDBEdit;
    Label43: TLabel;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    Label44: TLabel;
    Label45: TLabel;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    DBEdit36: TDBEdit;
    Label46: TLabel;
    GroupBox9: TGroupBox;
    DBGrid2: TDBGrid;
    DBText2: TDBText;
    BB_INCLUIR_ALTERNATIVO: TBitBtn;
    BB_EXCLUIR_ALTERNATIVO: TBitBtn;
    BB_SALVAR_ALTERNATIVO: TBitBtn;
    GroupBox10: TGroupBox;
    DBText4: TDBText;
    DBText5: TDBText;
    Label47: TLabel;
    Label48: TLabel;
    DBText6: TDBText;
    Label49: TLabel;
    BB_CANCELAR_ALTERNATIVO: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);
    procedure BB_NOVO1Click(Sender: TObject);
    procedure BB_EDITAR1Click(Sender: TObject);
    procedure B1B_CANCELARClick(Sender: TObject);
    procedure B1B_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIR1Click(Sender: TObject);
    procedure BB_PESQUISAR1Click(Sender: TObject);
    procedure BB_EXPORTARClick(Sender: TObject);
    procedure B1B_SAIRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBNavigator1DblClick(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure bb_enviaDJClick(Sender: TObject);
    Function TiraPontoeVirgula(sTexto:String):String;
    function  ColocaTextoDir(Texto: string; Qtd: integer; Ch: Char): string;
    procedure BB_ENVIAR_TODOSClick(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure DBLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DBLookupComboBox7KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure DBLookupComboBox8KeyPress(Sender: TObject; var Key: Char);
    procedure BB_INCLUIR_ALTERNATIVOClick(Sender: TObject);
    procedure BB_SALVAR_ALTERNATIVOClick(Sender: TObject);
    procedure BB_CANCELAR_ALTERNATIVOClick(Sender: TObject);
    procedure BB_EXCLUIR_ALTERNATIVOClick(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
    Procedure GerenCiaBotoes;
    function GeraCodigoBarra : String;
    Procedure GerenCiaBotoes2;
    Procedure LocalizaCodBarra;
  public
    { Public declarations }
  end;

var
  frmCadPro: TfrmCadPro;
  InsertEdit : String;
  CodBarraOld : String;
implementation

uses uDm, U_LIB, UD_PESQUISA, uMenu, uPesquisaPadrao;

{$R *.dfm}

function AjustaStr ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;

procedure TfrmCadPro.GerenCiaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsProduto.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsProduto.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  BB_EXPORTAR.Enabled := BB_NOVO.Enabled;
  TabSheet1.Enabled := not BB_NOVO.Enabled;
  TabSheet2.Enabled := not BB_NOVO.Enabled;

end;

procedure TfrmCadPro.GerenCiaBotoes2;
begin
  BB_INCLUIR_ALTERNATIVO.Enabled := not (DM.cdsBarras.State in dsEditModes);
  BB_SALVAR_ALTERNATIVO.Enabled := NOT BB_INCLUIR_ALTERNATIVO.Enabled;
  BB_EXCLUIR_ALTERNATIVO.Enabled :=  BB_INCLUIR_ALTERNATIVO.Enabled and not (DM.cdsBarras.IsEmpty);
  BB_CANCELAR_ALTERNATIVO.Enabled := BB_SALVAR_ALTERNATIVO.Enabled;
end;

procedure TfrmCadPro.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
    if frmMenu.recInformacoes.nm_Usuario  = 'MARCIO' then
    begin
      BB_ENVIAR_TODOS.Visible := True;
      bb_enviaDJ.Visible :=True;
    end;


  DM.cdsProduto.Close;
  DM.cdsProduto.Open;

  DM.cdsCST.Close;
  DM.cdsCST.Open;

  DM.cdsSitTributaria.Close;
  DM.cdsSitTributaria.Open;

  DM.cdsSitCofins.Close;
  DM.cdsSitCofins.Open;

  DM.cdsSitIPI.Close;
  DM.cdsSitIPI.Open;

  DM.cdsOrigemProduto.Close;
  DM.cdsOrigemProduto.Open;

  DM.cdsCSOSN.Close;
  DM.cdsCSOSN.Open;

  DM.cdsCfop.Close;
  DM.cdsCfop.Open;

  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  if DM.cdsProduto.RecordCount > 0 then
  begin
    if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
      DBComboBox1.Text          := 'T- 17,00 % - Tributado';
      end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
        DBComboBox1.Text          := 'T- 18,00 % - Tributado';
      end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
        DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
      end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
        DBComboBox1.Text := 'I -  Isento';
      end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
        DBComboBox1.Text := 'S - Tributado no ISS ';
      end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
        DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    end;

    DM.cdsBarras.Close;
    DM.cdsBarras.Params[0].AsInteger := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsBarras.Params[1].AsInteger := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsBarras.Open;
  end;

{  if DM.cdsProdutoCAMINHO_FOTO.IsNull then
  begin
    Image1.Visible := False;
  end
  else
  begin
    Image1.Visible := True;
    Image1.Picture.LoadFromFile(DM.cdsProdutoCAMINHO_FOTO.AsString);
  end;}
  GerenCiaBotoes;
  GerenCiaBotoes2;
end;

procedure TfrmCadPro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadPro.DBGrid1TitleClick(Column: TColumn);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  (*recupera a cor original da coluna*)
  if DM.cdsProduto.IndexFieldNames <> '' then
    DBGrid1.Columns[DM.cdsProduto.FieldByName
    (DM.cdsProduto.IndexFieldNames).Index].Title.Color :=
      DBGrid1.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsProduto.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsProduto.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action   := caFree;
    frmCadPro := nil;
///    BB_ENVIAR_TODOSClick(Self);
  end;

end;

procedure TfrmCadPro.DBEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCadPro.SpeedButton1Click(Sender: TObject);
begin
   DM.cdsGrupoProduto.Open;

   Pesquisa(DM.cdsGrupoProduto,['DESCRICAO','ID_GRUPO_PRODUTO'],
                                 ['',''],[35,10],'','0','','Grupo','Grupo','Grupo');
    DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger := DM.cdsGrupoProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsProdutoGRUPO.AsString             := DM.cdsGrupoProdutoDESCRICAO.AsString;
    //FAZ UM SELECT PARA ACHAR O MAIOR REGISTRO DO PRODUTO REF AO GRUPO//
    // EXE. MAIOR REGISTRO REF AO GRUPO 01//
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PRODUTO) FROM TB_PRODUTO WHERE ID_GRUPO_PRODUTO = '+
                                  DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
    DM.cdsDinamica.Open;

    DM.cdsProdutoID_PRODUTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DBEdit3.SetFocus;
end;

procedure TfrmCadPro.SpeedButton2Click(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);

  frmPesquisaPadrao.CDS := DM.cdsNCM;
  frmPesquisaPadrao.Tabela := 'TB_ALIQ_IBPT';
  frmPesquisaPadrao.CampoBusca := 'DESCRICAO';
  frmPesquisaPadrao.CampoChave := 'NCM';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de NCM';
  frmPesquisaPadrao.Sql            := 'SELECT * ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'DESCRICAO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'NCM';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'NCM';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

  DM.cdsProdutoNCM.AsString := Copy(DM.cdsNCMNCM.AsString,0,8);
  DM.cdsProdutoDESC_NCM.AsString := DM.cdsNCMDESCRICAO.AsString;
  DM.cdsProdutoID_NCM.AsInteger  := DM.cdsNCMID_NCM.AsInteger;
  DBEdit30.SetFocus;

end;

procedure TfrmCadPro.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPro.TabSheet1Enter(Sender: TObject);
begin
  if InsertEdit ='Insert' then
  begin
    if DBEdit1.Text <>'' then
      DBEdit23.SetFocus
    else
      DBEdit1.SetFocus
  end
  else
    DBEdit3.SetFocus;
end;

function TfrmCadPro.TiraPontoeVirgula(sTexto: String): String;
var
 Temp_01 : string;
 Temp_03, conta: Integer;
begin
 Conta := 0;
 Temp_03 := length(sTexto);
while conta < temp_03 do
  begin
   Conta := Conta + 1;
    Temp_01 := Copy(Stexto,conta,1);
  if Temp_01 = '.' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = ',' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = '/' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = '-' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;

end;
Result := sTexto;
end;

procedure TfrmCadPro.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    exit;
    BB_CANCELAR.SetFocus;
  end;
  DM.cdsGrupoProduto.Open;
  if InsertEdit = 'Insert' then
  begin
    //FAZ UM SELECT PARA ACHAR O MAIOR REGISTRO DO PRODUTO REF AO GRUPO//
    // EXE. MAIOR REGISTRO REF AO GRUPO 01//
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PRODUTO) FROM TB_PRODUTO WHERE ID_GRUPO_PRODUTO = '+
                                  DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
    DM.cdsDinamica.Open;

    if DM.cdsProdutoID_PRODUTO.IsNull then
     DM.cdsProdutoID_PRODUTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
  end;

  if DM.cdsGrupoProduto.Locate('ID_GRUPO_PRODUTO',DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger,[]) then
  begin
    DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger := DM.cdsGrupoProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsProdutoGRUPO.AsString             := DM.cdsGrupoProdutoDESCRICAO.AsString;
    DBEdit3.SetFocus;
  end
  else
  begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                  '                                     '+#13+
                  '   Grupo n�o Encontrado            '+#13+
                  '                                     ');
      DM.cdsProdutoID_GRUPO_PRODUTO.Clear;
      SpeedButton1Click(Self);
  end;

    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
end;

function TfrmCadPro.GeraCodigoBarra: String;
var C : array[2..13] of Char;
    N : array[2..13] of Byte;
    F : Byte;
    D : string[2];
    sCodigo : string;
begin
//  sCodigo :='00'+Zeros(DM.CDS_PRODUCAOCODIGO.AsInteger,5)+Zeros(DM.CDS_PRODUCAOQUANT_SAIDA.AsInteger,6) ;
  sCodigo :='789'+Zeros(DM.cdsProdutoID_PRODUTO.AsInteger,7)+Zeros(DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger,2) ;
  for F := 2 to 13 do
    C[F] := sCodigo[14-F];
  for F := 2 to 13 do
    N[F] := StrToInt(C[F]);
  D := IntToStr(10 - (((N[13]+N[11]+N[9]+N[7]+N[5]+N[3]) +
                     ((N[12]+N[10]+N[8]+N[6]+N[4]+N[2])*3)) mod 10));
  if Length(D) = 2 then
    Result := sCodigo+'0'
  else
    Result := sCodigo+D[1];

end;

procedure TfrmCadPro.DBEdit16Exit(Sender: TObject);
begin
{  if DM.cdsProdutoCD_BARRA.IsNull then
  begin
    if Application.MessageBox('Voc� n�o Informou o C�d.Barra do Produto.     '+#13+
                              'Deseja que o Sistema Gere o C�digo Autom�tico ?',
                              'Confirma��o ',MB_YESNO+MB_ICONQUESTION )= Idyes then
    begin
      DM.cdsProdutoCD_BARRA.AsString := GeraCodigoBarra;
      QRBarcode2.Digits := DM.cdsProdutoCD_BARRA.AsString;
      ShowMessage('C�digo de Barra Gerado Com Sucesso !!!');
    end
    else
    begin
      ShowMessage('C�digo de Barra n�o Gerado.');
      DBEdit16.SetFocus;
    end;
  end;
  P_BOTOES.SetFocus;}

  if DM.cdsProdutoCD_BARRA.IsNull then
  begin
    if Application.MessageBox('Voc� n�o Informou o C�d.Barra do Produto.     '+#13+
                              'Deseja que o Sistema Gere o C�digo Autom�tico ?',
                              'Confirma��o ',MB_YESNO+MB_ICONQUESTION )= Idyes then
    begin
      BitBtn1Click(Self);
      LocalizaCodBarra;
    end
    else
    begin
      ShowMessage('C�digo de Barra n�o Gerado.');
      DBEdit16.SetFocus;
    end;
  end;
 if (NOT DM.cdsProdutoCD_BARRA.IsNull) then
 begin
   LocalizaCodBarra;
   DBEdit23.SetFocus;
 end;
end;

procedure TfrmCadPro.DBEdit6Enter(Sender: TObject);
begin
  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['ID_FORNECEDOR','NOME'],['C�d.Fornecedor','Nome do Fornecedor '],[10,40],'','','','','Fornecedor','Fornecedor');
  DM.cdsProdutoID_FORNECEDOR.AsInteger  := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsProdutoFORNECEDOR.AsString      := DM.cdsFornecedorNOME.AsString;
  DBEdit8.SetFocus;

end;

procedure TfrmCadPro.DBEdit12Exit(Sender: TObject);
begin
  if ( NOT DM.cdsProdutoVL_CUSTO.IsNull) THEN
    DM.cdsProdutoVL_VENDA_ATAC.AsFloat :=
     (DM.cdsProdutoVL_CUSTO.AsFloat * DM.cdsProdutoVL_MARGEM.AsFloat) /100+
     DM.cdsProdutoVL_CUSTO.AsFloat;

end;

procedure TfrmCadPro.DBGrid1CellClick(Column: TColumn);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
    DBComboBox1.Text          := 'T- 17,00 % - Tributado';
    end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
      DBComboBox1.Text          := 'T- 18,00 % - Tributado';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
      DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
      DBComboBox1.Text := 'I -  Isento';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
      DBComboBox1.Text := 'S - Tributado no ISS ';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
      DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
  end;

{  if DM.cdsProdutoCAMINHO_FOTO.IsNull then
    Image1.Picture.Assign(nil)
  else
    Image1.Picture.LoadFromFile(DM.cdsProdutoCAMINHO_FOTO.AsString);}
end;

procedure TfrmCadPro.DBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
    DBComboBox1.Text          := 'T- 17,00 % - Tributado';
    end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
      DBComboBox1.Text          := 'T- 18,00 % - Tributado';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
      DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
      DBComboBox1.Text := 'I -  Isento';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
      DBComboBox1.Text := 'S - Tributado no ISS ';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
      DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
  end;

end;

procedure TfrmCadPro.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
    DBComboBox1.Text          := 'T- 17,00 % - Tributado';
    end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
      DBComboBox1.Text          := 'T- 18,00 % - Tributado';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
      DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
      DBComboBox1.Text := 'I -  Isento';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
      DBComboBox1.Text := 'S - Tributado no ISS ';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
      DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
  end;
  {  if DM.cdsProdutoCAMINHO_FOTO.IsNull then
    Image1.Picture.Assign(nil)
  else
    Image1.Picture.LoadFromFile(DM.cdsProdutoCAMINHO_FOTO.AsString);}
end;


procedure TfrmCadPro.DBNavigator1DblClick(Sender: TObject);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

end;

procedure TfrmCadPro.DBEdit6Exit(Sender: TObject);
begin
  if DM.cdsProdutoID_FORNECEDOR.IsNull then
  begin
    ShowMessage('Campo "Cod.Forn" de Preenchimento Obrigat�rio.');
    DBEdit6.SetFocus;
  end;
end;

procedure TfrmCadPro.DBEdit10Exit(Sender: TObject);
begin
  if DBEdit10.Text = '' then
    DBEdit10.Text := DM.cdsProdutoID_PRODUTO.AsString+'-'+DM.cdsProdutoID_GRUPO_PRODUTO.AsString;

end;

procedure TfrmCadPro.DBEdit11Exit(Sender: TObject);
begin
  if DBEdit11.Text = '' then
  begin
    DBEdit11.Text := '0,00';
  end;

  if DBEdit11.Text = '0,00' then
  begin
    if Application.MessageBox('Campo "Valor Custo" vai ser Zero?','Confirma��o!!!!!!',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      DBEdit12.SetFocus;
    end
    else
    begin
      DBEdit11.SetFocus;
    end;
  end;
end;

procedure TfrmCadPro.DBEdit13Exit(Sender: TObject);
begin
  if DM.cdsProdutoVL_VENDA_ATAC.AsFloat = null then
    DM.cdsProdutoVL_VENDA_ATAC.AsFloat := 0;

  DM.cdsProdutoVL_MARGEM.AsFloat := (DM.cdsProdutoVL_VENDA_ATAC.AsFloat/DM.cdsProdutoVL_CUSTO.AsFloat)-1;
  DM.cdsProdutoVL_MARGEM.AsFloat := DM.cdsProdutoVL_MARGEM.AsFloat*100;

  if DBEdit13.Text = DBEdit11.Text then
  begin
    Application.MessageBox('Pre�o de Venda 1 igual ao Pre�o de Custo.','ATEN��O!!!!!!',MB_OK+MB_ICONEXCLAMATION);
    DBEdit13.SetFocus;
  end;
  if DBEdit13.Text = '' then
  begin
    Application.MessageBox('Pre�o de Venda 1 Vazio favor informar Pre�o.','ATEN��O!!!!!!',MB_OK+MB_ICONEXCLAMATION);
    DBEdit13.SetFocus;
  end;

  if DBEdit13.Text = '0,00' then
  begin
    if Application.MessageBox('Campo "Valor Venda 1 " vai ser Zero?','Confirma��o!!!!!!',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      DBEdit13.SetFocus;
    end
    else
    begin
      DBEdit24.SetFocus;
    end;
  end;
end;

procedure TfrmCadPro.DBEdit21Exit(Sender: TObject);
begin
  if DBEdit21.Text = '' then
  begin
    Application.MessageBox('Campo "Desconto" n�o pode ser Vazio.','ATEN��O!!!!!!',MB_OK+MB_ICONEXCLAMATION);
    DBEdit21.SetFocus;
  end;
end;

procedure TfrmCadPro.DBEdit15Exit(Sender: TObject);
begin
{  if DM.cdsProdutoVL_VENDA_NF.AsFloat < DM.cdsProdutoVL_CUSTO.AsFloat then
  begin
    if Application.MessageBox('Pre�o para Nota Fiscal Ficou Menor que o Pre�o de Custo. Deseja Continuar?','Aten��o',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      DBEdit21.SetFocus;
    end
    else
    begin
      DBEdit14.SetFocus;
    end;
  end;}
end;

procedure TfrmCadPro.Image1Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
end;

procedure TfrmCadPro.LocalizaCodBarra;
begin
   if InsertEdit = 'Insert' then
   begin
     if DM.cdsProdutoCD_BARRA.Text <> '' then
     begin
       DM.cdsDinamica.Close;
       DM.cdsDinamica.IndexFieldNames :='';
       DM.cdsDinamica.CommandText := 'SELECT CD_BARRA,DESCRICAO,ID_PRODUTO,ID_GRUPO_PRODUTO FROM TB_PRODUTO WHERE CD_BARRA ='+QuotedStr(DBEdit16.Text);
       DM.cdsDinamica.Open;

       if DM.cdsDinamica.IsEmpty then
       begin
          PageControl1.SetFocus;
          DM.cdsDinamica.Close;
          DM.cdsDinamica.IndexFieldNames:='';

       end
       else
       begin
         ShowMessage('C�d.Barra J� Cadastrado Para o Produto.'+#13+
                     ' '+DM.cdsDinamica.Fields[1].AsString+'  C�digo '+DM.cdsDinamica.Fields[2].AsString+'-'+DM.cdsDinamica.Fields[3].AsString);
         DM.cdsProdutoCD_BARRA.Value :='';

         DM.cdsDinamica.Close;
         DM.cdsDinamica.IndexFieldNames:='';

         DBEdit16.SetFocus;
         Exit;
       end;
     end;
   end;

   if InsertEdit = 'Edit' then
   begin
     if DM.cdsProdutoCD_BARRA.AsString <> CodBarraOld then
     begin
       if DM.cdsProdutoCD_BARRA.Text <> '' then
       begin
         DM.cdsDinamica.Close;
         DM.cdsDinamica.IndexFieldNames :='';
         DM.cdsDinamica.CommandText := 'SELECT CD_BARRA,DESCRICAO,ID_PRODUTO,ID_GRUPO_PRODUTO FROM TB_PRODUTO WHERE CD_BARRA ='+QuotedStr(DBEdit16.Text);
         DM.cdsDinamica.Open;

         if DM.cdsDinamica.IsEmpty then
         begin
            DM.cdsDinamica.Close;
            DM.cdsDinamica.IndexFieldNames:='';

           { DM.cdsProdutoCD_BARRA.AsString := GeraCodigoBarra;
            QRBarcode2.Digits := DM.cdsProdutoCD_BARRA.AsString;
            ShowMessage('C�digo de Barra Gerado Com Sucesso !!!');}
         end
         else
         begin
           ShowMessage('C�d.Barra J� Cadastrado Para o Produto.'+#13+
                       ' '+DM.cdsDinamica.Fields[1].AsString+'  C�digo '+DM.cdsDinamica.Fields[2].AsString+'-'+DM.cdsDinamica.Fields[3].AsString);
           DM.cdsProdutoCD_BARRA.Value :='';
           DM.cdsDinamica.Close;
           DM.cdsDinamica.IndexFieldNames:='';

           DBEdit16.SetFocus;
           Exit;
         end;
       end;
     end;
   end;
end;

procedure TfrmCadPro.DBComboBox1Exit(Sender: TObject);
begin
    if DBComboBox1.Text          = 'T- 17,00 % - Tributado' then
    begin
       DBComboBox1.Text          := 'T- 17,00 % - Tributado';
       DM.cdsProdutoTIPO_ALIQ.Value := 'T';
       DM.cdsProdutoALIQUOTA.AsFloat := 17;
    end
    else
    if DBComboBox1.Text = 'T- 18,00 % - Tributado' then
    begin
       DBComboBox1.Text          := 'T- 18,00 % - Tributado';
       DM.cdsProdutoTIPO_ALIQ.Value := 'T';
       DM.cdsProdutoALIQUOTA.AsFloat := 18;
    end
    else
    if DBComboBox1.Text = 'F - Substitui��o - Substitui��o' then
    begin
       DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
       DM.cdsProdutoTIPO_ALIQ.Value := 'F';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end
    else
    if DBComboBox1.Text = 'I -  Isento' then
    begin
       DBComboBox1.Text := 'I -  Isento';
       DM.cdsProdutoTIPO_ALIQ.Value := 'I';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end
    else
    if DBComboBox1.Text = 'S - Tributado no ISS ' then
    begin
       DBComboBox1.Text := 'S - Tributado no ISS ';
       DM.cdsProdutoTIPO_ALIQ.Value := 'S';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end
    else
    if DBComboBox1.Text = 'N - N�o Incid�ncia - N�o Incid�ncia' then
    begin
       DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
       DM.cdsProdutoTIPO_ALIQ.Value := 'N';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end;
    //DBEdit23.SetFocus;
end;

procedure TfrmCadPro.DBLookupComboBox1Click(Sender: TObject);
begin
  if DM.cdsCSTCOD_CST.Value ='00' then
  begin
    DBComboBox1.Text := 'T- 18,00 % - Tributado';
    DM.cdsProdutoALIQUOTA.AsFloat := 18;
  end;
  if DM.cdsCSTCOD_CST.Value ='10' then
  begin
    DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsCSTCOD_CST.Value ='20' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

  if DM.cdsCSTCOD_CST.Value ='30' then
  begin
    DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsCSTCOD_CST.Value ='40' then
  begin
    DBComboBox1.Text := 'I -  Isento';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsCSTCOD_CST.Value ='41' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

  if DM.cdsCSTCOD_CST.Value ='50' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

  if DM.cdsCSTCOD_CST.Value ='51' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsCSTCOD_CST.Value ='60' then
  begin
    DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsCSTCOD_CST.Value ='70' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsCSTCOD_CST.Value ='90' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

end;

procedure TfrmCadPro.DBLookupComboBox1Exit(Sender: TObject);
begin
  DM.cdsProdutoCOD_CST.AsString := DM.cdsCSTCOD_CST.AsString;

  if DM.cdsProdutoCOD_CST.Value ='00' then
  begin
    DBComboBox1.Text := 'T- 18,00 % - Tributado';
    DM.cdsProdutoALIQUOTA.AsFloat := 18;
  end;
  if DM.cdsProdutoCOD_CST.Value ='10' then
  begin
    DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsProdutoCOD_CST.Value ='20' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

  if DM.cdsProdutoCOD_CST.Value ='30' then
  begin
    DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsProdutoCOD_CST.Value ='40' then
  begin
    DBComboBox1.Text := 'I -  Isento';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsProdutoCOD_CST.Value ='41' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

  if DM.cdsProdutoCOD_CST.Value ='50' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;

  if DM.cdsProdutoCOD_CST.Value ='51' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsProdutoCOD_CST.Value ='60' then
  begin
    DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsProdutoCOD_CST.Value ='70' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
  if DM.cdsProdutoCOD_CST.Value ='90' then
  begin
    DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
    DM.cdsProdutoALIQUOTA.AsFloat := 0;
  end;
end;

procedure TfrmCadPro.DBComboBox1Click(Sender: TObject);
begin
{    if DBComboBox1.Text          = 'T- 17,00 % - Tributado' then
    begin
       DM.cdsProdutoTIPO_ALIQ.Value := 'T';
       DM.cdsProdutoALIQUOTA.AsFloat := 17;
    end
    else
    if DBComboBox1.Text = 'T- 18,00 % - Tributado' then
    begin
       DM.cdsProdutoTIPO_ALIQ.Value := 'T';
       DM.cdsProdutoALIQUOTA.AsFloat := 18;
    end
    else
    if DBComboBox1.Text = 'F - Substitui��o - Substitui��o' then
    begin
       DM.cdsProdutoTIPO_ALIQ.Value := 'F';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end
    else
    if DBComboBox1.Text = 'I -  Isento' then
    begin
       DM.cdsProdutoTIPO_ALIQ.Value := 'I';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end
    else
    if DBComboBox1.Text = 'S - Tributado no ISS ' then
    begin
       DM.cdsProdutoTIPO_ALIQ.Value := 'S';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end
    else
    if DBComboBox1.Text = 'N - N�o Incid�ncia - N�o Incid�ncia' then
    begin
       DM.cdsProdutoTIPO_ALIQ.Value := 'N';
       DM.cdsProdutoALIQUOTA.AsFloat := 0;
    end;
    DBEdit23.SetFocus;}
end;

procedure TfrmCadPro.BB_NOVO1Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
//  Image1.Visible := True;
  InsertEdit := 'Insert';
  //DM.cdsProduto.Open;
  DM.cdsProduto.Insert;
  DM.cdsProdutoESTOQUE.AsInteger := 0;
  DM.cdsProdutoESTOQ_MIN.AsInteger := 0;
  DM.cdsProdutoESTOQUE_1.AsInteger := 0;
  DM.cdsProdutoMVA.AsFloat := 0;
  DM.cdsProdutoMVA_OUTROS.AsFloat := 0;
  DM.cdsProdutoALIQUOTA_OUTROS.AsFloat := 0;
  DM.cdsProdutoALIQUOTA.AsFloat := 18;
  DM.cdsProdutoVL_DESC_MAX.AsInteger := 0;
  DM.cdsProdutoEXPORTADO.Value := 'N';
  DM.cdsProdutoBALANCA.Value := 'N';
  DM.cdsProdutoATIVO.Value := 'S';
  DM.cdsProdutoID_ORIGEM_PRODUTO.AsInteger := 1;
  DM.cdsProdutoCOD_COFINS.AsString := '049';
  DM.cdsProdutoCOD_IPI.AsString := '049';
  DM.cdsProdutoCOD_TRIBUTARIO.AsString := '049';
  DM.cdsProdutoALIQUOTA_PIS.AsFloat := 0;
  DM.cdsProdutoALIQUOTA_IPI.AsFloat := 0;
  DM.cdsProdutoALIQUOTA_OUTROS.AsFloat := 0;
  DM.cdsProdutoALIQUOTA_COFINS.AsFloat := 0;
  DM.cdsProdutoCFOP_BA.AsInteger := 5102 ;
  DM.cdsProdutoCFOP_OUTROS.AsInteger := 6102 ;
  DM.cdsProdutoCOD_CST.AsString := '00' ;
  DM.cdsProdutoCOD_COFINS.AsString := '007' ;
  DM.cdsProdutoTIPO_ALIQ.AsString := 'T' ;
  DM.cdsProdutoCOD_TRIBUTARIO.AsString := '007' ;
  DM.cdsProdutoCOD_IPI.AsString := '049' ;
  DM.cdsProdutoCOD_CSOSN.AsString := '500' ;




  GerenCiaBotoes;
  if InsertEdit ='Insert' then
    DBEdit1.SetFocus;
end;

procedure TfrmCadPro.BB_CANCELAR_ALTERNATIVOClick(Sender: TObject);
begin
  DM.cdsBarras.Cancel;
  GerenCiaBotoes2;

end;

procedure TfrmCadPro.BB_EDITAR1Click(Sender: TObject);
begin
  CodBarraOld := DBEdit16.Text;
//  PageControl1.ActivePage := TabSheet1;

  InsertEdit := 'Edit';
  DM.cdsProduto.Edit;
  DM.cdsProdutoVL_DESC_MAX.AsInteger := 0;
  GerenCiaBotoes;
  if PageControl1.ActivePage = TabSheet1 then
  begin
    if InsertEdit ='Insert' then
       DBEdit1.SetFocus
    else
       DBEdit3.SetFocus;
  end;
  if PageControl1.ActivePage = TabSheet2 then
     DBLookupComboBox5.SetFocus;

//  DBEdit3.SetFocus;
end;

procedure TfrmCadPro.B1B_CANCELARClick(Sender: TObject);
begin
  DM.cdsProduto.Cancel;
{  if DM.cdsProdutoCAMINHO_FOTO.IsNull then
    Image1.Picture.Assign(nil)
  else
    Image1.Picture.LoadFromFile(DM.cdsProdutoCAMINHO_FOTO.AsString);}
  GerenCiaBotoes;
end;

procedure TfrmCadPro.B1B_GRAVARClick(Sender: TObject);
begin
  if DBEdit23.Text ='' then
  begin
    ShowMessage(' Campo "NCM" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet1;
    DBEdit23.SetFocus;
    DBEdit23.Color :=$00AEFFFF;
    Exit;
  end;

  if DM.cdsProdutoORIGEM_PRODUTO.IsNull then
  begin
    ShowMessage(' Campo "Origem da Mercadoria" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox5.SetFocus;
    DBLookupComboBox5.Color := $00AEFFFF;
    Exit;
  end;

  if DM.cdsProdutoDESC_CST.IsNull then
  begin
    ShowMessage(' Campo "CST" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox1.Color := $00AEFFFF;
    DBLookupComboBox1.SetFocus;
    Exit;
  end;

  if DM.cdsProdutoCD_BARRA.IsNull then
  begin
    ShowMessage(' Campo "C�digo de Barras" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet1;
    DBEdit16.SetFocus;
    DBEdit16.Color := $00AEFFFF;
    Exit;
  end;

  if DM.cdsProdutoTIPO_ALIQ.IsNull then
  begin
    ShowMessage(' Campo "Tipo Aliquota" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet2;
    DBComboBox1.SetFocus;
    DBComboBox1.Color := $00AEFFFF;
    Exit;
  end;

  if DM.cdsProdutoALIQUOTA_OUTROS.IsNull then
  begin
    ShowMessage(' Campo "Aliquota Fora do Estado" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet2;
    DBEdit32.SetFocus;
    DBEdit32.Color := $00AEFFFF;
    Exit;
  end;


  if DM.cdsProdutoDESC_CSOSN.IsNull then
  begin
    ShowMessage(' Campo "CSOSN" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox6.SetFocus;
    DBLookupComboBox6.Color := $00AEFFFF;
    Exit;
  end;

  if DM.cdsProdutoCFOP_DENTRO_ESTADO.IsNull then
  begin
    ShowMessage(' Campo "CFOP Saida Dentro do Estado" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox7.SetFocus;
    DBLookupComboBox7.Color := $00AEFFFF;
    Exit;
  end;

  if DM.cdsProdutoCFOP_DENTRO_ESTADO.IsNull then
  begin
    ShowMessage(' Campo "CFOP Saida Fora do Estado" de preenchimento Obrigat�rido.');
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox8.SetFocus;
    DBLookupComboBox8.Color := $00AEFFFF;
    Exit;
  end;

  PageControl1.ActivePage := TabSheet1;
  DM.cdsProdutoCODIGO.AsString := DM.cdsProdutoID_PRODUTO.AsString +'-'+DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
  DBLookupComboBox1.Color := clWindow;
  DBComboBox1.Color := clWindow;


  if InsertEdit = 'Edit' then
    DM.cdsProdutoEXPORTADO.Value := 'N';

  if DM.cdsProduto.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    BB_GRAVAR.SetFocus;
  end
  else
  begin
    DM.cdsProduto.ApplyUpdates(0);
    bb_enviaDJClick(Self);
    DM.cdsProduto.Refresh;
    GerenCiaBotoes;
  end;
end;

procedure TfrmCadPro.BB_EXCLUIR1Click(Sender: TObject);
begin

  if Application.MessageBox('Deseja Excluir Este Produto ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsProduto.Delete;
    DM.cdsProduto.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Produto N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmCadPro.BB_EXCLUIR_ALTERNATIVOClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este C�digo ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsBarras.Delete;
    DM.cdsBarras.ApplyUpdates(0);
    GerenciaBotoes2;
  end
  else
  begin
    ShowMessage('C�digo N�o Exclu�do');
  end;
    GerenciaBotoes2;

end;

procedure TfrmCadPro.BB_PESQUISAR1Click(Sender: TObject);
begin
  Pesquisa(DM.cdsProduto,['DESCRICAO','CD_BARRA','VL_VENDA_ATAC'],['None do Produto','C�digo','Vl.Venda'],
    [30,13,10],'','','','','Produto','Produto');

  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
    DBComboBox1.Text          := 'T- 17,00 % - Tributado';
    end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
      DBComboBox1.Text          := 'T- 18,00 % - Tributado';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
      DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
      DBComboBox1.Text := 'I -  Isento';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
      DBComboBox1.Text := 'S - Tributado no ISS ';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
      DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
  end;

  {frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);

  frmPesquisaPadrao.CDS := DM.cds_Tabela;
  frmPesquisaPadrao.Tabela := 'TB_PRODUTO';
  frmPesquisaPadrao.CampoBusca := 'DESCRICAO';
  frmPesquisaPadrao.CampoChave := 'REFERENCIA';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Produto Por Nome';
  frmPesquisaPadrao.Sql            := 'SELECT DESCRICAO,CODIGO,VL_VENDA_VARE';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'DESCRICAO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Codigo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'CODIGO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 50;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'Vl.Venda';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:='VL_VENDA_VARE';
  TNumericField(frmPesquisaPadrao.dbgPesquisa.Columns[2]).DisplayFormat:='###,###0.000';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 70;
//  TNumericField(frmPesquisaPadrao.CDS.FieldByName('VL_VENDA_VARE')).DisplayFormat := ',0.00;-,0.00';

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);  }



end;

procedure TfrmCadPro.BB_SALVAR_ALTERNATIVOClick(Sender: TObject);
begin
  if DM.cdsBarrasCODBARRAS.IsNull then
  begin
    ShowMessage('Favor Informar C�digo de Barra Alternativo!');
    DBEdit36.SetFocus;
    Exit;
  end;
  if DM.cdsBarras.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    BB_INCLUIR_ALTERNATIVO.SetFocus;
  end
  else
  begin
    DM.cdsBarras.ApplyUpdates(0);
    DM.cdsBarras.Refresh;
//    bb_enviaDJClick(Self);
    GerenCiaBotoes2;
  end;

end;

procedure TfrmCadPro.BB_EXPORTARClick(Sender: TObject);
begin
{
  if Application.MessageBox('Deseja Exportar Para O Dincash?','Aten��o!!!',MB_OK+MB_YESNO ) = idyes then
  begin
    cdsProdutoDTO.Close;
    cdsProdutoDTO.Open;
    cdsValidacaoDTO.Close;
    cdsValidacaoDTO.Open;
    cdsInsertProdDincash.Execute;
    cdsProdutoDTO.Close;
    cdsValidacaoDTO.Close;

    ShowMessage('Produtos Exportados Com Sucesso');

    DM.cdsProduto.Close;
    DM.cdsProduto.Open;
  end
  else
  begin
    ShowMessage('Exporta��o Cancelada');
  end;
}
end;

procedure TfrmCadPro.BB_INCLUIR_ALTERNATIVOClick(Sender: TObject);
begin
  DM.cdsBarras.Insert;
  DM.cdsBarrasID_PRODUTO.AsInteger := DM.cdsProdutoID_PRODUTO.AsInteger;
  DM.cdsBarrasID_GRUPO_PRODUTO.AsInteger := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
  DM.cdsBarrasCODPRODUTO.AsString := DBEdit10.Text;
  DM.cdsBarrasDESC_ACRES.AsString := 'D';
  DM.cdsBarrasPORCENTAGEM.AsFloat := 0;
  DM.cdsBarrasQTDEMBALAGEM.AsFloat := 1;

  GerenCiaBotoes2;
  DBEdit36.SetFocus;

end;

procedure TfrmCadPro.B1B_SAIRClick(Sender: TObject);
begin
{  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_PRODUTO WHERE EXPORTADO = ''N''';
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    DM.cdsProduto.Close;
    Close;
  end
  else
  begin
    if Application.MessageBox('Existe(m) Produto(s) sem importar, Deseja Importar Produto(s) Agora?','Aten��o',MB_OK+MB_YESNO)= idyes then
    begin
      BB_EXPORTARClick(Self);
    end
    else
    begin
      DM.cdsProduto.Close;
      Close;
    end;
  end;
 }

   Close;
end;

procedure TfrmCadPro.BitBtn1Click(Sender: TObject);
begin
  DM.cdsProdutoCD_BARRA.AsString := GeraCodigoBarra;
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;
//  DBLookupComboBox1.SetFocus;
  DBEdit23.SetFocus;
end;

procedure TfrmCadPro.BitBtn2Click(Sender: TObject);
begin
 DM.cdsProduto.DisableControls;
 while NOT DM.cdsProduto.eof do
 begin
  DM.cdsProduto.Edit;
  DM.cdsProdutoNCM.AsString := '61034100';
  DM.cdsProdutoCD_BARRA.AsString := GeraCodigoBarra;
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;
  DM.cdsProdutoREFERENCIA.AsString := DM.cdsProdutoID_PRODUTO.AsString+'-'+DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
  DM.cdsProdutoCODIGO.AsString := DM.cdsProdutoID_PRODUTO.AsString+'-'+DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
  DM.cdsProduto.ApplyUpdates(0);
  DM.cdsProduto.Next;

  DM.cdsProduto.EnableControls;
 end;
 DM.cdsProduto.Close;
 DM.cdsProduto.Open;
 ShowMessage('OOOOOOOOOOOOOOOOOOOOO');
end;

procedure TfrmCadPro.BB_ENVIAR_TODOSClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,qtEstoque: String;
begin
//    AssignFile (arq,'\\192.168.50.39\djsystem\MONITOR\Importar\PRODUTO.TXT');
  AssignFile (arq,DM.EXPORTA+'PRODUTOS.TXT');
//  AssignFile (arq,'C:\Sintegra\Arquivos_PAF\PRODUTO.TXT');
  Rewrite ( arq );
  DM.cdsProduto.First;
  while not DM.cdsProduto.Eof do
  begin
    Write ( arq, AjustaStr ( DM.cdsProdutoCODIGO.AsString, 20 ) );
    Write ( arq, AjustaStr ( DM.cdsProdutoCD_BARRA.AsString, 20 ) );
    Write ( arq, AjustaStr ( DM.cdsProdutoDESCRICAO.AsString, 40 ) );
    Write ( arq, AjustaStr ( '', 20 ) );
    Write ( arq, AjustaStr ( DM.cdsProdutoUNIDADE.AsString, 4 ) );
    TiraPontoeVirgula(DM.cdsProdutoVL_VENDA_ATAC.AsString);
    vlVenda:=StringReplace(DBEdit13.text, ',','', [rfReplaceAll]);
    vlVenda:=ColocaTextoDir(vlVenda,12,'0');
    Write ( arq, AjustaStr (vlVenda,12 ));
    Write ( arq, AjustaStr ( '000000',6));
    Write ( arq, AjustaStr ( DM.cdsProdutoTIPO_ALIQ.AsString, 1 ) );
    aliquota:=StringReplace(DBEdit4.text, ',','', [rfReplaceAll]);
    aliquota:= ColocaTextoDir(aliquota,4,'0');
    Write ( arq, AjustaStr (aliquota,4 ));
    Write ( arq, AjustaStr ( '', 65 ) ); //CAMPO 10 DO LAYOUT
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 11 DO LAYOUT PARA PRODUTOS PESADOS
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 12 Bloqueia Quantidade Fracion�ria
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 13 Bloqueia Quantidade
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 14 Arredonda
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 15 Produ��o Pr�pria
    Write ( arq, AjustaStr ( DM.cdsProdutoID_GRUPO_PRODUTO.AsString, 6 ) ); //CAMPO 16 C�d. Grupo
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 17 Descri��o Grupo
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 18 C�d.Departamento
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 19 Descri��o Departamento
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 20 C�d. Marca
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 21 Descri��o Marca
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 22 C�d.Tipo_Vasilhame
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 23 Descri��o Tipo Vasilhame
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 24 C�d. Anima��o
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 25 Flag
    Write ( arq, AjustaStr ( DM.cdsProdutoNCM.AsString, 20 ) );
    Write ( arq, AjustaStr ( '', 137 ) ); //27 C�d. Tipo Descri��o Adicional
    Write ( arq, AjustaStr ( 'S', 20 ) ); //28 Gtin Cont�bil S 380 399 20 AN
    Write ( arq, AjustaStr ( '', 20 ) ); //29 Ext IPI S 400 419 20 AN
    Write ( arq, AjustaStr ( '', 20 ) ); //30 Gtin Tribut�vel S 420 439 20 AN
    Write ( arq, AjustaStr ( '0', 6 ) ); //31 ID ICMS S 440 445 6 N Chave estrangeira para a Tabela de ICMS. (NFe)
    Write ( arq, AjustaStr (  DM.cdsProdutoCOD_IPI.AsString, 6 ) ); //      32 ID IPI S 446 451 6 N Chave estrangeira para a Tabela de IPI. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //33 ID ISSQN S 452 457 6 N Chave estrangeira para a Tabela de ISSQN. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //34 ID II S 458 463 6 N Chave estrangeira para a Tabela de Impostos deImporta��o. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //35 ID PIS S 464 469 6 N Chave estrangeira para a Tabela de PIS. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //36 ID II S 458 463 6 N Chave estrangeira para a Tabela de Impostos deImporta��o. (NFe)
    Write ( arq, AjustaStr ( DM.cdsProdutoCOD_COFINS.AsString, 6 ) ); //37 Chave estrangeira para a Tabela de COFINS. (NFe)
    Write ( arq, AjustaStr ( DM.cdsProdutoCOD_COFINS.AsString, 6 ) ); //      38 ID CONFINS ST S 482 487 6 N Chave estrangeira para a Tabela de COFINS ST. (Nfe)

    DM.cdsDinamica.Close;
    DM.cdsDinamica.CommandText := ' SELECT E.QT_ESTOQUE FROM TB_ESTOQUE_LOJA E '+
                                  ' WHERE E.ID_PRODUTO = '+DM.cdsProdutoID_PRODUTO.AsString+
                                  ' AND E.ID_GRUPO_PRODUTO ='+DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
    DM.cdsDinamica.Open;

    TiraPontoeVirgula(DM.cdsDinamica.Fields[0].AsString);
    qtEstoque:=StringReplace(DM.cdsDinamica.Fields[0].AsString, ',','', [rfReplaceAll]);
    qtEstoque:=ColocaTextoDir(qtEstoque,12,'0');



      Write ( arq, AjustaStr ( 'N', 1 ) ); //            39 KIT S 488 488 1 A Informe 'S' caso este produto seja um Kit.

       Write ( arq, AjustaStr (qtEstoque,12 )); //40 Quantidade Estoque S 489 500 12 N Quantidade de estoque do produto, com 3 casas
    {  41 Prazo  Devolu��o. S 501 503 3 N
      42 Cest S 504 510 7 N Obrigat�rio para produtos com Substitui��o Tribut�ria a  partir de 01/04/2016
      43 Controla Estoque S 511 511 1 N Controlar Estoque
      44 C�digo ANP S 512 520 9 N





    }
    //Write ( arq, FormatFloat ( '00000000.00', tabela.FieldByName ( 'Salario' ).AsFloat ) );
    WriteLn ( arq );
    DM.cdsProduto.Next;
  end;
  CloseFile ( arq );
end;

procedure TfrmCadPro.bb_enviaDJClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,qtEstoque, Estoque: String;
begin
//  AssignFile (arq,'\\192.168.50.39\djsystem\MONITOR\Importar\PRODUTOS.TXT');
  //DM.EXPORTA+'PRODUTO.TXT');
  AssignFile (arq,DM.EXPORTA+'PRODUTOS.TXT');
  Rewrite ( arq );
///  DM.cdsProduto.First;
///  while not DM.cdsProduto.Eof do
///  begin
    Write ( arq, AjustaStr ( DM.cdsProdutoCODIGO.AsString, 20 ) );
    Write ( arq, AjustaStr ( DM.cdsProdutoCD_BARRA.AsString, 20 ) );
    Write ( arq, AjustaStr ( DM.cdsProdutoDESCRICAO.AsString, 40 ) );
    Write ( arq, AjustaStr ( '', 20 ) );
    Write ( arq, AjustaStr ( DM.cdsProdutoUNIDADE.AsString, 4 ) );
    TiraPontoeVirgula(DM.cdsProdutoVL_VENDA_ATAC.AsString);
    vlVenda:=StringReplace(DBEdit13.text, ',','', [rfReplaceAll]);
    vlVenda:=ColocaTextoDir(vlVenda,12,'0');
    Write ( arq, AjustaStr (vlVenda,12 ));
    Write ( arq, AjustaStr ( '000000',6));
    Write ( arq, AjustaStr ( DM.cdsProdutoTIPO_ALIQ.AsString, 1 ) );
    aliquota:=StringReplace(DBEdit4.text, ',','', [rfReplaceAll]);
    aliquota:= ColocaTextoDir(aliquota,4,'0');
    Write ( arq, AjustaStr (aliquota,4 ));
    Write ( arq, AjustaStr ( '', 65 ) ); //CAMPO 10 DO LAYOUT
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 11 DO LAYOUT PARA PRODUTOS PESADOS
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 12 Bloqueia Quantidade Fracion�ria
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 13 Bloqueia Quantidade
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 14 Arredonda
    Write ( arq, AjustaStr ( 'N', 1 ) ); //CAMPO 15 Produ��o Pr�pria
    Write ( arq, AjustaStr ( DM.cdsProdutoID_GRUPO_PRODUTO.AsString, 6 ) ); //CAMPO 16 C�d. Grupo
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 17 Descri��o Grupo
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 18 C�d.Departamento
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 19 Descri��o Departamento
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 20 C�d. Marca
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 21 Descri��o Marca
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 22 C�d.Tipo_Vasilhame
    Write ( arq, AjustaStr ( '', 30 ) ); //CAMPO 23 Descri��o Tipo Vasilhame
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 24 C�d. Anima��o
    Write ( arq, AjustaStr ( '', 6 ) ); //CAMPO 25 Flag
    Write ( arq, AjustaStr ( DM.cdsProdutoNCM.AsString, 20 ) );
    Write ( arq, AjustaStr ( '', 137 ) ); //27 C�d. Tipo Descri��o Adicional
    Write ( arq, AjustaStr ( 'S', 20 ) ); //28 Gtin Cont�bil S 380 399 20 AN
    Write ( arq, AjustaStr ( '', 20 ) ); //29 Ext IPI S 400 419 20 AN
    Write ( arq, AjustaStr ( '', 20 ) ); //30 Gtin Tribut�vel S 420 439 20 AN
    Write ( arq, AjustaStr ( '0', 6 ) ); //31 ID ICMS S 440 445 6 N Chave estrangeira para a Tabela de ICMS. (NFe)
    Write ( arq, DM.cdsProdutoCOD_IPI.AsInteger, 6  ); //      32 ID IPI S 446 451 6 N Chave estrangeira para a Tabela de IPI. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //33 ID ISSQN S 452 457 6 N Chave estrangeira para a Tabela de ISSQN. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //34 ID II S 458 463 6 N Chave estrangeira para a Tabela de Impostos deImporta��o. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //35 ID PIS S 464 469 6 N Chave estrangeira para a Tabela de PIS. (NFe)
    Write ( arq, AjustaStr ( '0', 6 ) ); //36 ID II S 458 463 6 N Chave estrangeira para a Tabela de Impostos deImporta��o. (NFe)
    Write ( arq, DM.cdsProdutoCOD_COFINS.AsInteger, 6 ); //37 Chave estrangeira para a Tabela de COFINS. (NFe)
    Write ( arq, DM.cdsProdutoCOD_COFINS.AsInteger, 6 ); //      38 ID CONFINS ST S 482 487 6 N Chave estrangeira para a Tabela de COFINS ST. (Nfe)



    DM.cdsDinamica.Close;
    DM.cdsDinamica.CommandText := ' SELECT E.QT_ESTOQUE FROM TB_ESTOQUE_LOJA E '+
                                  ' WHERE E.ID_PRODUTO = '+DM.cdsProdutoID_PRODUTO.AsString+
                                  ' AND E.ID_GRUPO_PRODUTO ='+DM.cdsProdutoID_GRUPO_PRODUTO.AsString;
    DM.cdsDinamica.Open;

    Estoque := DM.cdsDinamica.Fields[0].AsString;
    TiraPontoeVirgula(DM.cdsDinamica.Fields[0].AsString);
    qtEstoque:=StringReplace(Estoque, ',','', [rfReplaceAll]);
//    qtEstoque:=ColocaTextoDir(qtEstoque,3,'12');



      Write ( arq, AjustaStr ( 'N', 1 ) ); //            39 KIT S 488 488 1 A Informe 'S' caso este produto seja um Kit.

      Write ( arq, AjustaStr (qtEstoque,12 )); //40 Quantidade Estoque S 489 500 12 N Quantidade de estoque do produto, com 3 casas
      Write ( arq, AjustaStr ('0',3 )); //41 Prazo  Devolu��o. S 501 503 3 N
      Write ( arq, AjustaStr ('',7 )); //42 Cest S 504 510 7 N Obrigat�rio para produtos com Substitui��o Tribut�ria a  partir de 01/04/2016
      Write ( arq, AjustaStr ('S',1 ));//      43 Controla Estoque S 511 511 1 N Controlar Estoque
      Write ( arq, AjustaStr ('',9 ));//      44 C�digo ANP S 512 520 9 N
      Write ( arq, AjustaStr (DM.cdsProdutoBALANCA.AsString,1 ));
      Write ( arq, AjustaStr ('0',5 ));


    //Write ( arq, FormatFloat ( '00000000.00', tabela.FieldByName ( 'Salario' ).AsFloat ) );
    WriteLn ( arq );
//    DM.cdsProduto.Next;
//  end;
  CloseFile ( arq );
end;

function TfrmCadPro.ColocaTextoDir(Texto: string; Qtd: integer;
  Ch: Char): string;
var
  x: integer;
  str: string;
begin
  if  Length(Texto) > Qtd then
      Result := Copy( Texto, (Length(Texto)-Qtd) + 1, Length(Texto) )
  else
    begin
      str := '';
      for x := Length(Texto) to Qtd - 1 do
      begin
        str := str + Ch;
      end;
      Result := str + Texto;
    end
  {endif};
end;

procedure TfrmCadPro.DBGrid1DblClick(Sender: TObject);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

end;

procedure TfrmCadPro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If DM.cdsProdutoESTOQUE.AsInteger < 0  then // condi��o
  begin
    DBGrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
    DBGrid1.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito

  end
  else if DM.cdsProdutoESTOQUE.AsInteger = 0  then // condi��o
  begin
    DBGrid1.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
    DBGrid1.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
  end

  else if DM.cdsProdutoESTOQUE.AsInteger > 0  then // condi��o
  begin
   DBGrid1.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
   DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
   DBGrid1.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
  end;


//  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
//  if gdSelected in State then
//  with (Sender as TDBGrid).Canvas do
//  begin
//    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
//    Font.Style := [fsBold];
//    FillRect(Rect);
//  end;

//  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmCadPro.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;
  if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
    DBComboBox1.Text          := 'T- 17,00 % - Tributado';
    end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
      DBComboBox1.Text          := 'T- 18,00 % - Tributado';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
      DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
      DBComboBox1.Text := 'I -  Isento';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
      DBComboBox1.Text := 'S - Tributado no ISS ';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
      DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
  end;
end;

procedure TfrmCadPro.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ACBrBarCode1.Text := DM.cdsProdutoCD_BARRA.AsString;

  if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 17) then begin
    DBComboBox1.Text          := 'T- 17,00 % - Tributado';
    end else if (DM.cdsProdutoTIPO_ALIQ.Value = 'T') and (DM.cdsProdutoALIQUOTA.AsFloat = 18) then begin
      DBComboBox1.Text          := 'T- 18,00 % - Tributado';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'F' then begin
      DBComboBox1.Text := 'F - Substitui��o - Substitui��o';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'I' then begin
      DBComboBox1.Text := 'I -  Isento';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'S' then begin
      DBComboBox1.Text := 'S - Tributado no ISS ';
    end else if DM.cdsProdutoTIPO_ALIQ.Value = 'N' then begin
      DBComboBox1.Text := 'N - N�o Incid�ncia - N�o Incid�ncia';
  end;

end;

procedure TfrmCadPro.DBLookupComboBox2Exit(Sender: TObject);
begin
 DM.cdsProdutoCOD_TRIBUTARIO.AsString := DM.cdsSitTributariaCOD_SIT.AsString;
 DBEdit5.SetFocus;
end;

procedure TfrmCadPro.DBLookupComboBox3Exit(Sender: TObject);
begin
 DM.cdsProdutoCOD_COFINS.AsString := DM.cdsSitCofinsCOD_SIT.AsString;
 DBEdit14.SetFocus;
end;

procedure TfrmCadPro.DBLookupComboBox4Exit(Sender: TObject);
begin
  DM.cdsProdutoCOD_IPI.AsString := DM.cdsSitIPICOD_SIT.AsString;
  DBEdit22.SetFocus;
end;

procedure TfrmCadPro.DBLookupComboBox5Enter(Sender: TObject);
begin
{  if InsertEdit = 'Insert' then
  begin
    DM.cdsOrigemProduto.First;
    DBLookupComboBox5.KeyValue:=DM.cdsOrigemProduto.FieldByName('DESCRICAO').AsString;
  end;}
end;

procedure TfrmCadPro.DBLookupComboBox5Exit(Sender: TObject);
begin
  DM.cdsProdutoID_ORIGEM_PRODUTO.AsInteger := DM.cdsOrigemProdutoID_ORIGEM_PRODUTO.AsInteger;
end;

procedure TfrmCadPro.DBLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmCadPro.DBLookupComboBox6Enter(Sender: TObject);
begin
{  if InsertEdit = 'Insert' then
  begin
    DM.cdsCSOSN.First;
    DBLookupComboBox6.KeyValue:=DM.cdsCSOSN.FieldByName('DESC_CSOSN').AsString;
  end;}

end;

procedure TfrmCadPro.DBLookupComboBox6Exit(Sender: TObject);
begin
  DM.cdsProdutoCOD_CSOSN.AsString := DM.cdsCSOSNCOD_CSOSN.AsString;
end;

procedure TfrmCadPro.DBLookupComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadPro.DBLookupComboBox7Exit(Sender: TObject);
begin
  DM.cdsProdutoCFOP_BA.AsString := DM.cdsCfopCFCOD.AsString;
end;

procedure TfrmCadPro.DBLookupComboBox7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadPro.DBLookupComboBox8Exit(Sender: TObject);
begin
  DM.cdsProdutoCFOP_OUTROS.AsString := DM.cdsCfopCFCOD.AsString;
end;

procedure TfrmCadPro.DBLookupComboBox8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadPro.DBEdit22Exit(Sender: TObject);
begin
  if DBEdit22.Text = '' then
    DBEdit22.Text :='0';

  PageControl1.ActivePage := TabSheet3;
  DBLookupComboBox7.SetFocus;
end;

procedure TfrmCadPro.DBEdit23Exit(Sender: TObject);
begin
  DBEdit23.Color :=clWhite;
  if DBEdit23.Text <> '' then
  begin
    DM.cdsNCM.Open;
    if DM.cdsNCM.Locate('NCM',DM.cdsProdutoNCM.AsString,[]) then
    begin
      DM.cdsProdutoNCM.AsString       := Copy(DM.cdsNCMNCM.AsString,0,8);
      DM.cdsProdutoDESC_NCM.AsString  := DM.cdsNCMDESCRICAO.AsString;
      DM.cdsProdutoID_NCM.AsInteger  := DM.cdsNCMID_NCM.AsInteger;
      DBEdit30.SetFocus;
      DM.cdsNCM.Close;
    end
    else
    begin
        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                    '                                     '+#13+
                    '   NCM n�o Encontrado            '+#13+
                    '                                     ');
        DM.cdsProdutoNCM.Clear;
        SpeedButton2Click(Self);
    end;
  end;
end;

procedure TfrmCadPro.DBEdit28Exit(Sender: TObject);
begin
  if ( NOT DM.cdsProdutoVL_CUSTO.IsNull) THEN
    DM.cdsProdutoVL_VENDA_ATAC.AsFloat :=
     (DM.cdsProdutoVL_CUSTO.AsFloat * DM.cdsProdutoVL_MARGEM.AsFloat) /100+
     DM.cdsProdutoVL_CUSTO.AsFloat;

    DM.cdsProdutoVL_VENDA_VARE.AsFloat :=
     (DM.cdsProdutoVL_CUSTO.AsFloat * DM.cdsProdutoVL_MARGEM.AsFloat) /100+
     DM.cdsProdutoVL_CUSTO.AsFloat;


end;

procedure TfrmCadPro.DBEdit29Exit(Sender: TObject);
begin
  if DM.cdsProdutoVL_VENDA_VARE.AsFloat = null then
    DM.cdsProdutoVL_VENDA_VARE.AsFloat := 0;

  DM.cdsProdutoVL_MARGEM.AsFloat := (DM.cdsProdutoVL_VENDA_VARE.AsFloat/DM.cdsProdutoVL_CUSTO.AsFloat)-1;
  DM.cdsProdutoVL_MARGEM.AsFloat := DM.cdsProdutoVL_MARGEM.AsFloat*100;

  if DBEdit29.Text = DBEdit11.Text then
  begin
    Application.MessageBox('Pre�o de Venda 2 igual ao Pre�o de Custo.','ATEN��O!!!!!!',MB_OK+MB_ICONEXCLAMATION);
    DBEdit29.SetFocus;
  end;
  if DBEdit29.Text = '' then
  begin
    Application.MessageBox('Pre�o de Venda 2 Vazio favor informar Pre�o.','ATEN��O!!!!!!',MB_OK+MB_ICONEXCLAMATION);
    DBEdit29.SetFocus;
  end;

  if DBEdit29.Text = '0,00' then
  begin
    if Application.MessageBox('Campo "Valor Venda Atacado" vai ser Zero?','Confirma��o!!!!!!',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      DBEdit29.SetFocus;
    end
    else
    begin
      DBEdit24.SetFocus;
    end;
  end;

end;

procedure TfrmCadPro.DBEdit30Exit(Sender: TObject);
begin
  if (DBEdit30.Text <> 'S') AND (DBEdit30.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit30.SetFocus;
    Exit;
  end;

end;

procedure TfrmCadPro.DBEdit35Exit(Sender: TObject);
begin
  if (DBEdit35.Text <> 'S') AND (DBEdit35.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit35.SetFocus;
    Exit;
  end
  else
  begin
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox5.SetFocus;
  end;

end;

procedure TfrmCadPro.DBEdit14Exit(Sender: TObject);
begin
  if DBEdit14.Text = '' then
    DBEdit14.Text := '0';
end;

procedure TfrmCadPro.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    DBEdit5.Text := '0';
end;

end.
