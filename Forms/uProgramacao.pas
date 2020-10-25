unit uProgramacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ComCtrls,db, Data.FMTBcd,
  Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient, QRCtrls, QuickRpt,
  qrpBaseCtrls;

type
  TfrmProgramacao = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton3: TSpeedButton;
    P_BOTOES: TPanel;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    P_PRODUCAO: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label22: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit8: TDBEdit;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    itemProcucao: TPanel;
    Bevel1: TBevel;
    BB_INCLUIR: TBitBtn;
    BB_ALTERAR: TBitBtn;
    BB_CANC: TBitBtn;
    BB_EXC: TBitBtn;
    Panel2: TPanel;
    Label12: TLabel;
    BB_SALVAR: TBitBtn;
    dsNotasLancadas: TDataSource;
    cdsNotasLancadas: TClientDataSet;
    dspNotasLancadas: TDataSetProvider;
    qNotasLancadas: TSQLQuery;
    qNotasLancadasID_REMESSA: TIntegerField;
    qNotasLancadasID_FOR_REMESSA: TIntegerField;
    qNotasLancadasSTATUS: TStringField;
    qNotasLancadasID_CLIENTE: TIntegerField;
    qNotasLancadasDT_EMISSAO: TDateField;
    qNotasLancadasNR_NOTA_FISCAL: TIntegerField;
    qNotasLancadasVL_NOTA: TFMTBCDField;
    qNotasLancadasID_FORN_TINT: TIntegerField;
    qNotasLancadasNR_NF_REMESSA: TIntegerField;
    qNotasLancadasTOTAL_ROLOS: TIntegerField;
    qNotasLancadasCLIENTE: TStringField;
    qNotasLancadasNOME_MALHARIA: TStringField;
    qNotasLancadasTITURARIA: TStringField;
    cdsNotasLancadasID_FOR_REMESSA: TIntegerField;
    cdsNotasLancadasID_CLIENTE: TIntegerField;
    cdsNotasLancadasDT_EMISSAO: TDateField;
    cdsNotasLancadasNR_NOTA_FISCAL: TIntegerField;
    cdsNotasLancadasVL_NOTA: TFMTBCDField;
    cdsNotasLancadasID_FORN_TINT: TIntegerField;
    cdsNotasLancadasNR_NF_REMESSA: TIntegerField;
    cdsNotasLancadasTOTAL_ROLOS: TIntegerField;
    cdsNotasLancadasCLIENTE: TStringField;
    cdsNotasLancadasNOME_MALHARIA: TStringField;
    cdsNotasLancadasTITURARIA: TStringField;
    cdsNotasLancadasID_REMESSA: TIntegerField;
    cdsNotasLancadasSTATUS: TStringField;
    p_item: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Faturado: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    dsArtigo: TDataSource;
    cdsArtigo: TClientDataSet;
    dspArtigo: TDataSetProvider;
    qArtigo: TSQLQuery;
    dsCor: TDataSource;
    cdsCor: TClientDataSet;
    dspCor: TDataSetProvider;
    qCor: TSQLQuery;
    qCorID_CORES: TIntegerField;
    qCorID_ARTIGO: TIntegerField;
    qCorVALOR: TFMTBCDField;
    qCorCODIGO: TIntegerField;
    qCorDESCRICAO: TStringField;
    qCorNOME_ARTIGO: TStringField;
    cdsCorID_CORES: TIntegerField;
    cdsCorID_ARTIGO: TIntegerField;
    cdsCorVALOR: TFMTBCDField;
    cdsCorCODIGO: TIntegerField;
    cdsCorDESCRICAO: TStringField;
    cdsCorNOME_ARTIGO: TStringField;
    qDinamicaFios: TSQLQuery;
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
    qDinamicaFiosNR_NOTA_FISCAL: TIntegerField;
    qDinamicaFiosNR_NF_REMESSA: TIntegerField;
    qDinamicaFiosQUANT_PROD: TFMTBCDField;
    qDinamicaFiosSALDO: TFMTBCDField;
    qDinamicaFiosQT_ARTIGO: TIntegerField;
    dspDinamicaFios: TDataSetProvider;
    cdsDinamicaFios: TClientDataSet;
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
    cdsDinamicaFiosNR_NOTA_FISCAL: TIntegerField;
    cdsDinamicaFiosNR_NF_REMESSA: TIntegerField;
    cdsDinamicaFiosQUANT_PROD: TFMTBCDField;
    cdsDinamicaFiosSALDO: TFMTBCDField;
    cdsDinamicaFiosQT_ARTIGO: TIntegerField;
    dsDinamicaFios: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BB_IMPRIMIR: TBitBtn;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label20: TLabel;
    BB_FINALIZAR: TBitBtn;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBE_tipo_estampa: TDBEdit;
    lbl_tipo_estampa: TLabel;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    BB_NOTAS: TBitBtn;
    dsLote: TDataSource;
    cdsLote: TClientDataSet;
    dspLote: TDataSetProvider;
    qLote: TSQLQuery;
    qLoteID_LOTE: TIntegerField;
    cdsLoteID_LOTE: TIntegerField;
    P_NOTAS_LANCADAS: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    BB_CONFIRMAR: TBitBtn;
    B_CANCELAR: TBitBtn;
    DBGrid3: TDBGrid;
    P_OBSERVACAO: TPanel;
    Panel6: TPanel;
    Label24: TLabel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    QR_PROGRAMACAO: TQRPQuickrep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel21: TQRLabel;
    qrlTipoEstampa: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand8: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand7: TQRBand;
    QRLabel22: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel8: TQRLabel;
    QRLPESO: TQRLabel;
    QRShape11: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel23: TQRLabel;
    qNotasLancadasQT_PROGRAMADO: TIntegerField;
    cdsNotasLancadasQT_PROGRAMADO: TIntegerField;
    spAtuSaldoRolos: TSQLStoredProc;
    dspAtuSaldoRolos: TDataSetProvider;
    cdsAtuSaldoRolos: TClientDataSet;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    SpeedButton6: TSpeedButton;
    QRDBText5: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText17: TQRDBText;
    qrlpeso1: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape15: TQRShape;
    Label28: TLabel;
    DataSource1: TDataSource;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText26: TQRDBText;
    QRShape16: TQRShape;
    QRDBText27: TQRDBText;
    QRLabel35: TQRLabel;
    QRShape17: TQRShape;
    QRLabel36: TQRLabel;
    QRSysData1: TQRSysData;
    qNotasLancadasQT_SALDO_PROGRAMAR: TIntegerField;
    cdsNotasLancadasQT_SALDO_PROGRAMAR: TIntegerField;
    qArtigoID_ARTIGO: TIntegerField;
    qArtigoNOME_ARTIGO: TStringField;
    qArtigoCOMPOSICAO: TStringField;
    qArtigoLARGURA: TFMTBCDField;
    qArtigoGRAMATURA: TFMTBCDField;
    qArtigoID_GRUPO_EMPRESA: TIntegerField;
    qArtigoPESO: TFMTBCDField;
    qArtigoROLOS: TLargeintField;
    qArtigoQT_PRG: TFMTBCDField;
    qArtigoQT_SALDO: TFMTBCDField;
    cdsArtigoID_ARTIGO: TIntegerField;
    cdsArtigoNOME_ARTIGO: TStringField;
    cdsArtigoCOMPOSICAO: TStringField;
    cdsArtigoLARGURA: TFMTBCDField;
    cdsArtigoGRAMATURA: TFMTBCDField;
    cdsArtigoID_GRUPO_EMPRESA: TIntegerField;
    cdsArtigoPESO: TFMTBCDField;
    cdsArtigoROLOS: TLargeintField;
    cdsArtigoQT_PRG: TFMTBCDField;
    cdsArtigoQT_SALDO: TFMTBCDField;
    qArtigoPESO_PRG: TFMTBCDField;
    qArtigoQT_SALDO_PESO: TFMTBCDField;
    cdsArtigoPESO_PRG: TFMTBCDField;
    cdsArtigoQT_SALDO_PESO: TFMTBCDField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_INCLUIRClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure B_CANCELARClick(Sender: TObject);
    procedure BB_CONFIRMARClick(Sender: TObject);
    procedure BB_ALTERARClick(Sender: TObject);
    procedure BB_SALVARClick(Sender: TObject);
    procedure BB_CANCClick(Sender: TObject);
    procedure BB_EXCClick(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure BB_FINALIZARClick(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BB_NOTASClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure PesquisaNotasMalharia;
    Procedure SomaTotal;
  public
    { Public declarations }


  end;

var
  frmProgramacao: TfrmProgramacao;
  Tipo, Tp_operacao : string;
  idCliente, idTinturaria, vSaldoProgramar : Integer;
  iPesoRestante : Double;
  Notas : Boolean;
  Resultdo       : Boolean;

implementation

{$R *.dfm}

uses U_LIB, uDM, uPesquisaPadrao;

procedure TfrmProgramacao.BB_ALTERARClick(Sender: TObject);
begin
  tp_operacao := 'Edit';
  DM.cdsItemprg.Edit;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmProgramacao.BB_CANCClick(Sender: TObject);
begin
  DM.cdsItemprg.Cancel;
  SomaTotal;
  GerenciaBotoes2;

end;

procedure TfrmProgramacao.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsPrgProgramacao.Cancel;
  GerenciaBotoes;

end;

procedure TfrmProgramacao.BB_CONFIRMARClick(Sender: TObject);
begin
  DM.cdsPrgProgramacaoID_REMESSA.AsInteger       := cdsNotasLancadasID_REMESSA.AsInteger;
  DM.cdsPrgProgramacaoNR_NOTA_MALHARIA.AsInteger := cdsNotasLancadasNR_NOTA_FISCAL.AsInteger;
  DM.cdsPrgProgramacaoVL_NOTA.AsFloat            := cdsNotasLancadasVL_NOTA.AsFloat;
  DM.cdsPrgProgramacaoNR_NOTA.AsInteger          := cdsNotasLancadasNR_NOTA_FISCAL.AsInteger;
  DM.cdsPrgProgramacaoQT_PRG_ROLOS.AsInteger     := cdsNotasLancadasTOTAL_ROLOS.AsInteger;
  P_NOTAS_LANCADAS.Visible := False;

  vSaldoProgramar := cdsNotasLancadasQT_SALDO_PROGRAMAR.AsInteger;
  DBEdit22.SetFocus;
end;

procedure TfrmProgramacao.BB_EDITARClick(Sender: TObject);
begin
  if DM.cdsPrgProgramacaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Edit';

  DM.cdsPrgProgramacao.Edit;
  GerenciaBotoes;
  DBEdit20.SetFocus;

end;

procedure TfrmProgramacao.BB_EXCClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente excluir este registro ? ','Confirma��o', MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
     DM.cdsItemprg.Delete;
     DM.cdsItemprg.ApplyUpdates(0);
     SomaTotal;
     GerenciaBotoes;
     GerenciaBotoes2;
  end
  else
  begin
    ShowMessage('Exclus�o n�o Confirmada');
    BB_CANCClick(Self);
    GerenciaBotoes;
    GerenciaBotoes2;
  end;

end;

procedure TfrmProgramacao.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsPrgProgramacaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if DM.cdsItemprg.RecordCount > 0  then
  begin
    ShowMessage('Impossiv�l Excluir Nota. Existe(m) Registro(s) Vinculado(s). Exclua o(s) Registro(s) Antes de Excluir a Nota. ');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin

    ShowMessage('Status da Nota Fiscal Continua Como Programada. Acione o Suporte Caso Precise Alterar Status Para N�o Programada.');

    DM.cdsPrgProgramacao.Delete;
    DM.cdsPrgProgramacao.ApplyUpdates(0);
    GerenciaBotoes;
    GerenciaBotoes2;
    SomaTotal;
  end
  else
  begin
    ShowMessage('Registro N�o Exclu�do');
  end;
    GerenciaBotoes;

  if DM.cdsPrgProgramacao.RecordCount > 0 then
  begin
//    cdsItemNotaFiscal.Close;
//    cdsItemNotaFiscal.Open;
  end;



end;

procedure TfrmProgramacao.BB_FINALIZARClick(Sender: TObject);
begin
  if DM.cdsItemprg.RecordCount = 0 then
  begin
   ShowMessage('Nenhum Item Lan�ado Para Este Lan�amento. Impossiv�l Finalizar');
   Exit
  end;

  if DM.cdsPrgProgramacaoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

    if Resultdo = True then
    begin
      Exit;
    end
    else
    begin
      DM.cdsPrgProgramacao.Edit;
      DM.cdsPrgProgramacaoSTATUS.Value := 'F';
      DM.cdsPrgProgramacao.ApplyUpdates(0);
      DM.cdsPrgProgramacao.Refresh;
      ShowMessage('Registro Finalizado Com Sucesso');
    end;
end;

procedure TfrmProgramacao.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    if DBEdit3.Text = '' then
    begin
      ShowMessage('Favor Informar Tinturaria.');
      DBEdit3.SetFocus;
      Exit;
    end;
    if DBEdit16.Text = '' then
    begin
      ShowMessage('Favor Informar N� NF Remessa.');
      DBEdit16.SetFocus;
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
    DM.cdsDinamica.CommandText :=' SELECT MAX(ID_PRG_TINTURARIA) FROM TB_PRG_TINTURARIA';
    DM.cdsDinamica.Open;

    DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if Application.MessageBox('Deseja Informar Observa��o?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      P_OBSERVACAO.Visible := True;
      DBMemo1.SetFocus;
    end
    else
    begin
      if DM.cdsPrgProgramacao.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
        BB_GRAVAR.SetFocus;
      end
      else
      begin
//        DM.cdsPrgProgramacao.DisableControls;
        DM.cdsPrgProgramacao.ApplyUpdates(0);
//        DM.cdsPrgProgramacao.Refresh;
//        DM.cdsPrgProgramacao.EnableControls;
        GerenCiaBotoes;
        GerenciaBotoes2;
        if DM.cdsPrgProgramacao.RecordCount > 0 then
        begin
          DM.cdsItemprg.Close;
          DM.cdsItemprg.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
          DM.cdsItemprg.Open;
        end;
        BB_INCLUIRClick(Self);
      end;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if Application.MessageBox('Deseja Informar Observa��o?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      P_OBSERVACAO.Visible := True;
      DBMemo1.SetFocus;
    end
    else
    begin
      if DM.cdsPrgProgramacao.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
        BB_GRAVAR.SetFocus;
      end
      else
      begin
//        DM.cdsPrgProgramacao.DisableControls;
        DM.cdsPrgProgramacao.ApplyUpdates(0);
//        DM.cdsPrgProgramacao.Refresh;
//        DM.cdsPrgProgramacao.EnableControls;
        GerenCiaBotoes;
        GerenciaBotoes2;
        if DM.cdsPrgProgramacao.RecordCount > 0 then
        begin
          DM.cdsItemprg.Close;
          DM.cdsItemprg.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
          DM.cdsItemprg.Open;
        end;
        BB_INCLUIRClick(Self);
      end;
    end;

  end;

end;

procedure TfrmProgramacao.BB_IMPRIMIRClick(Sender: TObject);
Var
 iTotal : Integer;
begin
  if DM.cdsPrgProgramacaoESTAMPADO.Value = 'S' then
    qrlTipoEstampa.Caption := DM.cdsPrgProgramacaoTIPO_ESTAMPA.AsString
  else
    qrlTipoEstampa.Caption := 'SEM ESTAMPA';

  if (DM.cdsPrgProgramacaoQT_ROLOS.AsInteger < DM.cdsPrgProgramacaoQT_PRG_ROLOS.AsInteger) AND (DM.cdsPrgProgramacaoQT_ROLOS.AsInteger > 0) then
  begin
    iTotal :=(DM.cdsPrgProgramacaoQT_PRG_ROLOS.AsInteger - DM.cdsPrgProgramacaoQT_ROLOS.AsInteger);
    cdsNotasLancadas.Close;
    cdsNotasLancadas.Params[0].AsInteger := DM.cdsPrgProgramacaoID_CLIENTE.AsInteger;
    cdsNotasLancadas.Params[1].AsInteger := DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger;
    cdsNotasLancadas.Open;
    iPesoRestante := (DM.cdsItemprgPESO.AsFloat/DM.cdsPrgProgramacaoQT_ROLOS.AsFloat)*(cdsNotasLancadasQT_SALDO_PROGRAMAR.AsFloat);
    QRLabel24.Visible := True;
    QRLabel24.Caption := ' RESTAM SALDO DESTA NOTA � PROGRAMAR DE  '+IntToStr(iTotal)+' ROLOS NO TOTAL DE '+FloatToStr(iPesoRestante)+' KG' ;
  end
  else
  begin
    QRLabel24.Visible := True;
    QRLabel24.Caption := ' N�O RESTAM SALDO DESTA NOTA � PROGRAMAR ' ;
  end;
//  QR_PROGRAMACAO.Prepare;
  QR_PROGRAMACAO.Preview;

end;

procedure TfrmProgramacao.BB_INCLUIRClick(Sender: TObject);
begin
  Tp_Operacao := 'Insert';

  if DM.cdsPrgProgramacao.RecordCount = 0 then
  begin
    ShowMessage('N�o Existe Notas Cadastradas para este Lan�amento.');
    exit;
    BB_CANCClick(Self);
  end;

  DM.cdsItemprg.Append;
  DM.cdsItemprg.Open;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmProgramacao.BB_NOTASClick(Sender: TObject);
var
 Lote : Integer;
begin
  PageControl1.ActivePage := TabSheet1;

  idCliente    := StrToInt(DBEdit20.Text);
  idTinturaria := StrToInt(DBEdit3.Text);
  Notas        := True;

  Tipo := 'Insert';
  Lote := StrToInt(DBEdit21.Text);
  DM.cdsPrgProgramacao.Insert;
  DM.cdsPrgProgramacaoSTATUS.Value := 'P'; //PROGRAMADA;
  DM.cdsPrgProgramacaoQT_ROLOS.AsInteger := 0;
  DM.cdsPrgProgramacaoDT_EMISSAO.AsDateTime := Date;

  DM.cdsPrgProgramacaoID_LOTE.AsInteger := Lote;

  GerenciaBotoes;
  DBEdit20.SetFocus;

end;

procedure TfrmProgramacao.BB_NOVOClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Insert';

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := 'SELECT MAX(ID_LOTE) FROM TB_LOTE ';
  DM.cdsDinamica.Open;

  cdsLote.Open;
  cdslote.Insert;
  cdsLoteID_LOTE.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;
  cdsLote.ApplyUpdates(0);

  DM.cdsPrgProgramacao.Insert;
  DM.cdsPrgProgramacaoSTATUS.Value := 'P'; //PROGRAMADA;
  DM.cdsPrgProgramacaoQT_ROLOS.AsInteger := 0;
  DM.cdsPrgProgramacaoDT_EMISSAO.AsDateTime := Date;

  DM.cdsPrgProgramacaoID_LOTE.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;

  DM.cdsDinamica.Close;

  GerenciaBotoes;
  DBEdit20.SetFocus;

end;

procedure TfrmProgramacao.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Programacao Tinturaria';
  frmPesquisaPadrao.CDS := DM.cdsPrgProgramacao;
  frmPesquisaPadrao.Tabela := 'TB_PRG_TINTURARIA RP ';
  frmPesquisaPadrao.CampoBusca := 'C.R_SOCIAL';
  frmPesquisaPadrao.CampoBusca2 := 'F.NOME ';
  frmPesquisaPadrao.CampoBusca3 := 'RP.NR_NOTA';
  frmPesquisaPadrao.CampoChave  := 'F.NOME';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta Nota Fiscal Tinturaria';
  frmPesquisaPadrao.L_PESQUISA.Caption := 'Consulta Nota Fiscal Tinturaria';
  frmPesquisaPadrao.Sql            := ' SELECT RP.ID_PRG_TINTURARIA, RP.ID_FOR_TINTURARIA, RP.ID_CLIENTE, RP.STATUS, RP.QT_ROLOS, RP.DT_EMISSAO, '+
                                      ' RP.NR_NOTA, RP.NR_NOTA_REMESSA, RP.VL_NOTA, RP.NR_NOTA_MALHARIA, RP.ID_REMESSA, RP.ID_GRUPO_EMPRESA,'+
                                      ' RP.ESTAMPADO, RP.TIPO_ESTAMPA, RP.OBS, RP.ID_LOTE, RP.QT_PRG_ROLOS, RP.QT_PROGRAMADO, RP.QT_SALDO_PROGRAMAR,'+
                                      ' RP.ID_TRANSPORTADORA, C.R_SOCIAL AS CLIENTE, F.NOME AS TITURARIA, T.NOME_TRANSPORTADORA,'+
                                      ' C.CODIGO_MUNIC, C.CNPJ_CPF, C.INSC_RG, C.ENDERECO, C.COMPLEMENTO, C.NUMERO, C.BAIRRO, M.NOME AS CIDADE, M.UF';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Cliente';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'CLIENTE';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 220;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Tinturaria';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'TITURARIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'N� Nota Fiscal';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'NR_NOTA';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 100;


  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);
end;

procedure TfrmProgramacao.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProgramacao.BB_SALVARClick(Sender: TObject);
begin
//  DM.cdsPrgProgramacao.Close;
//  DM.cdsPrgProgramacao.Open;
  DM.cdsItemprg.Cancel;
  SomaTotal;
  GerenciaBotoes2;

end;

procedure TfrmProgramacao.BitBtn1Click(Sender: TObject);
begin
  if DM.cdsPrgProgramacao.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    BB_GRAVAR.SetFocus;
  end
  else
  begin
    DM.cdsPrgProgramacao.DisableControls;
    DM.cdsPrgProgramacao.ApplyUpdates(0);
    DM.cdsPrgProgramacao.EnableControls;
    GerenCiaBotoes;
    GerenciaBotoes2;
    if DM.cdsPrgProgramacao.RecordCount > 0 then
    begin
      DM.cdsItemprg.Close;
      DM.cdsItemprg.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
      DM.cdsItemprg.Open;
    end;
    P_OBSERVACAO.Visible := False;
    BB_INCLUIRClick(Self);
  end;
end;

procedure TfrmProgramacao.B_CANCELARClick(Sender: TObject);
begin
  P_NOTAS_LANCADAS.Visible := False;
end;

procedure TfrmProgramacao.DBEdit14Exit(Sender: TObject);
begin
  cdsArtigo.Close;
  cdsArtigo.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[1].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[2].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[3].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[4].AsInteger := DM.cdsPrgProgramacaoNR_NOTA_REMESSA.AsInteger;
  cdsArtigo.Open;

  if DBEdit14.Text <> '' then
  begin
    if cdsArtigo.Locate('ID_ARTIGO',DM.cdsItemprgID_ARTIGO.AsInteger,[]) then
    begin
      DM.cdsItemprgID_ARTIGO.AsInteger         := cdsArtigoID_ARTIGO.AsInteger;
      DM.cdsItemprgNOME_ARTIGO.AsString        := cdsArtigoNOME_ARTIGO.AsString;
      DM.cdsItemprgID_CLIENTE.AsInteger        := DM.cdsPrgProgramacaoID_CLIENTE.AsInteger;
      DM.cdsItemprgID_PRG_TINTURARIA.AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
      DM.cdsItemprgID_GRUPO_EMPRESA.AsInteger  := DM.cdsPrgProgramacaoID_GRUPO_EMPRESA.AsInteger;
      DM.cdsItemprgCORTA_AUREOLAS.Value        := DM.cdsArtigoCORTA_AUREOLAS.Value;
      DM.cdsItemprgTUBULAR.Value               := DM.cdsArtigoTUBULAR.Value;
      DM.cdsItemprgFELPAR.Value                := DM.cdsArtigoFELPAR.Value;
      DM.cdsItemprgID_LOTE.AsInteger           := DM.cdsPrgProgramacaoID_LOTE.AsInteger;
      DBEdit6.SetFocus;
    end
    else
    begin
      ShowMessage('C�digo N�o Encontrado');
      SpeedButton1Click(self);
    end;
  end;

end;

procedure TfrmProgramacao.DBEdit14KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProgramacao.DBEdit17Exit(Sender: TObject);
var
 iQtRolos, iQtPrg : Integer;
begin
  if NOT (cdsArtigoQT_SALDO.IsNull) then
  begin
    if DM.cdsItemprgQUANT.AsFloat > cdsArtigoQT_SALDO.AsFloat then
    begin
      ShowMessage('Quantidade de Rolos Informada maior que o Saldo Atual, Saldo de Rolos '+cdsArtigoQT_SALDO.AsString);
      DBEdit17.SetFocus;
      Exit
    end;
  end;


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT  SUM(IP.QUANT) FROM TB_ITEM_PRG IP '+
                                ' JOIN TB_PRG_TINTURARIA P ON (P.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                ' WHERE P.NR_NOTA_REMESSA = '+DM.cdsPrgProgramacaoNR_NOTA_REMESSA.AsString+
                                ' AND P.ID_CLIENTE =        '+DM.cdsPrgProgramacaoID_CLIENTE.AsString+
                                ' AND P.ID_FOR_TINTURARIA = '+DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsString;
  DM.cdsDinamica.Open;

  iQtRolos := DM.cdsDinamica.Fields[0].AsInteger;
  iQtPrg   := cdsNotasLancadasQT_SALDO_PROGRAMAR.AsInteger;

  if iQtPrg = 0 then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT RP.QT_SALDO_PROGRAMAR FROM TB_REMESSA_PRODUCAO RP '+
                                  ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FORNECEDOR)'+
                                  ' JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = RP.ID_FOR_REMESSA)        '+
                                  ' JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = RP.ID_FORN_TINT)          '+
                                  ' JOIN TB_CLIENTE     C ON (C.ID_CLIENTE = RP.ID_CLIENTE)                '+
                                  ' WHERE C.ID_CLIENTE   = '+DM.cdsPrgProgramacaoID_CLIENTE.AsString+
                                  ' AND FT.ID_FORNECEDOR = '+DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsString+
                                  ' AND RP.NR_NF_REMESSA = '+DM.cdsPrgProgramacaoNR_NOTA_REMESSA.AsString+
                                  ' AND RP.STATUS        = ''F''';
    DM.cdsDinamica.Open;
    iQtPrg   := DM.cdsDinamica.Fields[0].AsInteger;
  end;

  if not(DM.cdsItemprgQUANT.IsNull) then
  begin
    if Tp_operacao = 'Insert' then
    begin
      DM.cdsItemprgPESO.AsFloat := (cdsArtigoPESO.AsFloat/cdsArtigoROLOS.AsInteger) * DM.cdsItemprgQUANT.AsFloat;
      iPesoRestante             := (cdsArtigoPESO.AsFloat-DM.cdsItemprgPESO.AsFloat);
      iQtRolos := iQtRolos+DM.cdsItemprgQUANT.AsInteger;
    end;
    if Tp_operacao = 'Edit' then
    begin
      DM.cdsItemprgPESO.AsFloat := (cdsArtigoPESO.AsFloat/cdsArtigoROLOS.AsInteger) * DM.cdsItemprgQUANT.AsFloat;
      iPesoRestante             := (cdsArtigoPESO.AsFloat-DM.cdsItemprgPESO.AsFloat);
      iQtRolos := DM.cdsItemprgQUANT.AsInteger;
    end;

  end;

{  if iQtRolos > iQtPrg then
  begin
    ShowMessage('Quantida Total de Rolos Maior que o Programado.');
    iQtRolos := 0;
    DBEdit17.SetFocus;
    Exit;
  end;}


  vSaldoProgramar := iQtPrg;
  if DM.cdsItemprgQUANT.AsInteger > vSaldoProgramar then
  begin
    ShowMessage('Quantida de Rolos Maior que o  Saldo a Programar.');
    DBEdit17.SetFocus;
    Exit;
  end;


end;

procedure TfrmProgramacao.DBEdit18Exit(Sender: TObject);
begin
  if tp_operacao = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      if DM.cdsItemprgQUANT.AsInteger = 0  then
      begin
        ShowMessage('Quantidade Rolos N�o Pode Ser Zerada.');
        DBEdit17.SetFocus;
        Exit;
      end;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(P.ID_ITEM_PRG) FROM TB_ITEM_PRG P';
      DM.cdsDinamica.Open;
      DM.cdsItemprgID_ITEM_PRG.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      if DM.cdsItemprg.ApplyUpdates(0) <> 0 then
      begin
         ShowMessage('Erro ao Gravar Registro. Consulte o Suporte! ');
         BB_CANCClick(Self);
      end
      else
      begin
        DM.cdsItemprg.ApplyUpdates(0);
        //DM.cdsItemprg.Refresh;
          if DM.cdsPrgProgramacao.RecordCount > 0 then
          begin
            DM.cdsItemprg.Close;
            DM.cdsItemprg.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
            DM.cdsItemprg.Open;
          end;
        cdsDinamicaFios.Close;
        SomaTotal;
        BB_INCLUIRClick(Self);
      end;
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
      DM.cdsItemRemessa.Open;
      DM.cdsItemRemessa.Edit;
      DM.cdsItemRemessa.ApplyUpdates(0);

      DM.cdsItemprg.ApplyUpdates(0);

//      DM.cdsItemprg.Refresh;
        if DM.cdsPrgProgramacao.RecordCount > 0 then
        begin
          DM.cdsItemprg.Close;
          DM.cdsItemprg.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
          DM.cdsItemprg.Open;
        end;

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

procedure TfrmProgramacao.DBEdit19Exit(Sender: TObject);
begin
  if (DBEdit19.Text <> 'S') AND (DBEdit19.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N" .');
    DBEdit19.SetFocus;
  end;

  if DBEdit19.Text = 'S' then
  begin
    lbl_tipo_estampa.Visible := True;
    DBE_tipo_estampa.Visible := True;
    DBE_tipo_estampa.SetFocus;
  end
  else
  begin
    lbl_tipo_estampa.Visible := False;
    DBE_tipo_estampa.Visible := False;
    BB_GRAVARClick(Self);
  end;

end;

procedure TfrmProgramacao.DBEdit20Exit(Sender: TObject);
begin
  if DBEdit20.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsCliente.Open;
  if DM.cdsCliente.Locate('ID_CLIENTE',DM.cdsPrgProgramacaoID_CLIENTE.AsInteger,[]) then
  begin
    DM.cdsPrgProgramacaoID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
    DM.cdsPrgProgramacaoCLIENTE.AsString     := DM.cdsClienteR_SOCIAL.AsString;
    DM.cdsPrgProgramacaoID_GRUPO_EMPRESA.AsInteger  := DM.cdsClienteID_GRUPO_EMPRESA.AsInteger;

    if Notas = True then
    begin
     if DM.cdsPrgProgramacaoID_CLIENTE.AsInteger <> idCliente then
     begin
       ShowMessage('Cliente N�o Pode Ser Diferente Para Este Lote.');
       BB_CANCELAR.SetFocus;
       Exit;
     end
     else
     begin
       DBEdit3.SetFocus;
     end;
    end;
    DBEdit3.SetFocus;
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

procedure TfrmProgramacao.DBEdit20KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProgramacao.DBEdit22Exit(Sender: TObject);
begin
  if DBEdit22.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsTransportadora.Open;
  if DM.cdsTransportadora.Locate('ID_TRANSPORTADORA',DM.cdsPrgProgramacaoID_TRANSPORTADORA.AsInteger,[]) then
  begin
    DM.cdsPrgProgramacaoID_TRANSPORTADORA.AsInteger := DM.cdsTransportadoraID_TRANSPORTADORA.AsInteger;
    DM.cdsPrgProgramacaoNOME_TRANSPORTADORA.AsString:= DM.cdsTransportadoraNOME_TRANSPORTADORA.AsString;
    DBEdit19.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Tituraria N�o Encontrada          '+#13+
                '                                     ');
    SpeedButton6Click(Self);
  end;

end;

procedure TfrmProgramacao.DBEdit22KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProgramacao.DBEdit2Exit(Sender: TObject);
begin
  if DM.cdsPrgProgramacaoNR_NOTA_REMESSA.AsInteger = DM.cdsPrgProgramacaoNR_NOTA.AsInteger then
  begin
    ShowMessage('N� Nota Fiscal Remessa n�o pode ser igual ao N� da Nota Fiscal' );
    exit
  end;

end;

procedure TfrmProgramacao.DBEdit3Exit(Sender: TObject);
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
                                  ' WHERE F.ID_CATEGORIA = 2';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger,[]) then
  begin
    DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsPrgProgramacaoTITURARIA.AsString     := DM.cdsFornecedorNOME.AsString;
    if Notas = True then
    begin
       if DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger <> idTinturaria then
       begin
         ShowMessage('Tinturaria N�o Pode Ser Diferente Para Este Lote.');
         BB_CANCELAR.SetFocus;
         Exit;
       end
       else
       begin
        //DBEdit2.SetFocus;
        PesquisaNotasMalharia;
       end;
    end;
        PesquisaNotasMalharia;
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

procedure TfrmProgramacao.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProgramacao.DBEdit6Exit(Sender: TObject);
begin
  cdsCor.Close;
  cdsCor.Params[0].AsInteger := DM.cdsPrgProgramacaoID_GRUPO_EMPRESA.AsInteger;
  cdsCor.Params[1].AsInteger := DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger;
  cdsCor.Open;

  if DBEdit6.Text <> '' then
  begin
    if cdsCor.Locate('CODIGO',DM.cdsItemprgCODIGO.AsInteger,[]) then
    begin
      DM.cdsItemprgID_ARTIGO.AsInteger                    := cdsArtigoID_ARTIGO.AsInteger;
      DM.cdsItemprgID_CORES.AsInteger                     := cdsCorID_CORES.AsInteger;
      DM.cdsItemprgCODIGO.AsInteger                       := cdsCorCODIGO.AsInteger;
      DM.cdsItemprgVL_UNIT.AsFloat                        := cdsCorVALOR.AsFloat;
      DM.cdsItemprgCOR.AsString                           := cdsCorDESCRICAO.AsString;


      if DM.cdsPrgProgramacaoESTAMPADO.Value = 'S' then
      begin
        DBEdit10.Enabled := True;
        DBEdit13.Enabled := True;
        DBEdit10.SetFocus;
      end
      else
      begin
        DBEdit10.Enabled := False;
        DBEdit13.Enabled := False;
        DBEdit17.SetFocus;
      end;

    end
    else
    begin
      ShowMessage('C�digo N�o Encontrado');
      SpeedButton5Click(self);
    end;
  end;

  if DBEdit3.Text ='' then
  begin
    ShowMessage('Nehum C�digo Informado!');
    BB_CANCClick(Self);
  end;


end;

procedure TfrmProgramacao.DBEdit6KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmProgramacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsPrgProgramacao.State in [dsEdit,dsInsert] then
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
    frmProgramacao := NIL;
  end;
 { if DM.cdsItemRemessa.State in [dsEdit,dsInsert] then
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
    frmRemessaProducao := NIL;
  end;}


end;

procedure TfrmProgramacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmProgramacao.FormShow(Sender: TObject);
begin
  DM.cdsPrgProgramacao.Close;
  DM.cdsPrgProgramacao.Open;

  if DBEdit19.Text = 'S' then
  begin
    lbl_tipo_estampa.Visible := True;
    DBE_tipo_estampa.Visible := True;
  end
  else
  begin
    lbl_tipo_estampa.Visible := False;
    DBE_tipo_estampa.Visible := False;
  end;

  if DM.cdsPrgProgramacao.RecordCount > 0 then
  begin
    DM.cdsItemprg.Close;
    DM.cdsItemprg.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
    DM.cdsItemprg.Open;
  end;
  GerenciaBotoes;
  GerenciaBotoes2;
end;

procedure TfrmProgramacao.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsPrgProgramacao.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsPrgProgramacao.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_NOTAS.Enabled := BB_EDITAR.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled and not (DM.cdsPrgProgramacao.IsEmpty);
  BB_IMPRIMIR.Enabled   := BB_NOVO.Enabled and not (DM.cdsPrgProgramacao.IsEmpty);
  BB_FINALIZAR.Enabled  := BB_NOVO.Enabled and not (DM.cdsPrgProgramacao.IsEmpty);
  P_PRODUCAO.Enabled := not BB_NOVO.Enabled;

end;

procedure TfrmProgramacao.GerenciaBotoes2;
begin
  BB_INCLUIR.Enabled       := not (DM.cdsItemprg.State in dsEditModes);
  BB_SALVAR.Enabled        := NOT BB_INCLUIR.Enabled;
  BB_EXC.Enabled           := BB_INCLUIR.Enabled and not (DM.cdsItemprg.IsEmpty);
  BB_CANC.Enabled          := BB_SALVAR.Enabled;
  BB_ALTERAR.Enabled       := BB_EXC.Enabled;
  p_item.Enabled           := not BB_INCLUIR.Enabled;

end;

procedure TfrmProgramacao.PesquisaNotasMalharia;
begin
  cdsNotasLancadas.Close;
  cdsNotasLancadas.Params[0].AsInteger := DM.cdsPrgProgramacaoID_CLIENTE.AsInteger;
  cdsNotasLancadas.Params[1].AsInteger := DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger;
  cdsNotasLancadas.Open;

  if cdsNotasLancadas.IsEmpty then
  begin
    ShowMessage('Nenhum Registro Encontrado, Lan�amento Ser� Cancelado');
    P_NOTAS_LANCADAS.Visible := False;
    BB_CANCELARClick(Self);
  end
  else
  begin
   P_NOTAS_LANCADAS.Visible := True;
   DM.cdsPrgProgramacaoNR_NOTA_REMESSA.AsInteger := cdsNotasLancadasNR_NF_REMESSA.AsInteger;
   DM.cdsPrgProgramacaoVL_NOTA.AsFloat           := cdsNotasLancadasVL_NOTA.AsFloat;
   DBEdit22.SetFocus;
  end;
end;

procedure TfrmProgramacao.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(IP.PESO) FROM TB_ITEM_PRG IP '+
                                ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                ' JOIN TB_ARTIGO A            ON (A.ID_ARTIGO = IP.ID_ARTIGO)                 '+
                                ' JOIN TB_CLIENTE C           ON (C.ID_CLIENTE = IP.ID_CLIENTE)               '+
                                ' JOIN TB_GRUPO_EMPRESA GE    ON (GE.ID_GRUPO_EMPRESA = IP.ID_GRUPO_EMPRESA)  '+
                                ' JOIN TB_CORES CC            ON (CC.ID_CORES = IP.ID_CORES)                  '+
                                ' WHERE PR.ID_LOTE = '+IntToStr(DM.cdsPrgProgramacaoID_LOTE.AsInteger);
  DM.cdsDinamica.Open;

  QRLPESO.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[0].AsFloat);
  QRLPESO1.Caption := FormatFloat('###,###0.000',DM.cdsDinamica.Fields[0].AsFloat);

  QRMemo1.Lines.Clear;
  QRMemo1.Lines.Add(DM.cdsPrgProgramacaoOBS.Value);

end;

procedure TfrmProgramacao.SomaTotal;
Var
 qtRolos, qtProgramado, qtSaldoProgramar : Integer;
 sSql : string;
begin
  sSql :=
          ' SELECT SUM(IP.QUANT), SUM(IP.QUANT * IP.VL_UNIT) FROM TB_ITEM_PRG IP '+
          ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
          ' JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = PR.ID_REMESSA)              '+
          ' WHERE RP.NR_NOTA_FISCAL         =  '+DM.cdsPrgProgramacaoNR_NOTA.AsString+
          ' AND PR.ID_CLIENTE               =  '+DM.cdsPrgProgramacaoID_CLIENTE.AsString+
          ' AND PR.ID_FOR_TINTURARIA        =  '+DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsString+
          ' AND PR.ID_LOTE                  =  '+DM.cdsPrgProgramacaoID_LOTE.AsString;
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText :=sSql;
  DM.cdsDinamica.Open;

  qtRolos := DM.cdsDinamica.Fields[0].AsInteger;


  cdsAtuSaldoRolos.Params[0].AsInteger := DM.cdsPrgProgramacaoID_CLIENTE.AsInteger;
  cdsAtuSaldoRolos.Params[1].AsInteger := DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger;
  cdsAtuSaldoRolos.Params[2].AsInteger := DM.cdsPrgProgramacaoNR_NOTA.AsInteger;
  cdsAtuSaldoRolos.Params[3].AsInteger := DM.cdsPrgProgramacaoID_LOTE.AsInteger;
  cdsAtuSaldoRolos.Execute;

  //DM.cdsPrgProgramacao.Edit;
  //DM.cdsPrgProgramacaoQT_ROLOS.AsInteger       := qtRolos;
  DM.cdsPrgProgramacao.ApplyUpdates(0);


end;

procedure TfrmProgramacao.SpeedButton1Click(Sender: TObject);
begin
  cdsArtigo.Close;
  cdsArtigo.Params[0].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[1].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[2].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[3].AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  cdsArtigo.Params[4].AsInteger := DM.cdsPrgProgramacaoNR_NOTA_REMESSA.AsInteger;
  cdsArtigo.Open;
  Pesquisa(cdsArtigo,['NOME_ARTIGO','PESO','ROLOS','QT_SALDO','QT_SALDO_PESO'],['Descri��o Artigo','C�digo','Faturado','Rolos'],[15,12,12,12,12],'','','','','Artigo','Artigo');
  DM.cdsItemprgID_ARTIGO.AsInteger         := cdsArtigoID_ARTIGO.AsInteger;
  DM.cdsItemprgNOME_ARTIGO.AsString        := cdsArtigoNOME_ARTIGO.AsString;
  DM.cdsItemprgID_CLIENTE.AsInteger        := DM.cdsPrgProgramacaoID_CLIENTE.AsInteger;
  DM.cdsItemprgID_PRG_TINTURARIA.AsInteger := DM.cdsPrgProgramacaoID_PRG_TINTURARIA.AsInteger;
  DM.cdsItemprgID_GRUPO_EMPRESA.AsInteger  := DM.cdsPrgProgramacaoID_GRUPO_EMPRESA.AsInteger;
  DM.cdsItemprgCORTA_AUREOLAS.Value        := DM.cdsArtigoCORTA_AUREOLAS.Value;
  DM.cdsItemprgTUBULAR.Value               := DM.cdsArtigoTUBULAR.Value;
  DM.cdsItemprgFELPAR.Value                := DM.cdsArtigoFELPAR.Value;
  DM.cdsItemprgID_LOTE.AsInteger           := DM.cdsPrgProgramacaoID_LOTE.AsInteger;

  DBEdit6.SetFocus;

end;

procedure TfrmProgramacao.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsCliente.Close;
  DM.cdsCliente.Open;
  Pesquisa(DM.cdsCliente,['R_SOCIAL','ID_CLIENTE'],['Nome do Cliente','C�digo'],[40,4],'','','','','Cliente','Cliente');
  DM.cdsPrgProgramacaoID_CLIENTE.AsInteger        := DM.cdsClienteID_CLIENTE.AsInteger;
  DM.cdsPrgProgramacaoCLIENTE.AsString            := DM.cdsClienteR_SOCIAL.AsString;
  DM.cdsPrgProgramacaoID_GRUPO_EMPRESA.AsInteger  := DM.cdsClienteID_GRUPO_EMPRESA.AsInteger;
  if Notas = True then
  begin
   if DM.cdsPrgProgramacaoID_CLIENTE.AsInteger <> idCliente then
   begin
     ShowMessage('Cliente N�o Pode Ser Diferente Para Este Lote.');
     BB_CANCELAR.SetFocus;
     Exit;
   end;
  end
  else
  begin
    DBEdit3.SetFocus;
  end;

end;

procedure TfrmProgramacao.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmProgramacao.SpeedButton4Click(Sender: TObject);
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

  DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsPrgProgramacaoTITURARIA.AsString          := DM.cdsFornecedorNOME.AsString;
  if Notas = True then
  begin
   if DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger <> idTinturaria then
   begin
     ShowMessage('Tinturaria N�o Pode Ser Diferente Para Este Lote.');
     BB_CANCELAR.SetFocus;
     Exit;
   end;
  end
  else
  begin
   // DBEdit2.SetFocus;
    PesquisaNotasMalharia;
  end;

end;

procedure TfrmProgramacao.SpeedButton5Click(Sender: TObject);
begin
  cdsCor.Close;
  cdsCor.Params[0].AsInteger := DM.cdsPrgProgramacaoID_GRUPO_EMPRESA.AsInteger;
  cdsCor.Params[1].AsInteger := DM.cdsPrgProgramacaoID_FOR_TINTURARIA.AsInteger;
  cdsCor.Open;

  Pesquisa(cdsCor,['DESCRICAO','CODIGO','VALOR'],['Cor','C�digo','Valor'],[30,6,8],'','','','','Cores','Cores');
  DM.cdsItemprgID_ARTIGO.AsInteger                    := cdsArtigoID_ARTIGO.AsInteger;
  DM.cdsItemprgID_CORES.AsInteger                     := cdsCorID_CORES.AsInteger;
  DM.cdsItemprgCODIGO.AsInteger                       := cdsCorCODIGO.AsInteger;
  DM.cdsItemprgVL_UNIT.AsFloat                        := cdsCorVALOR.AsFloat;
  DM.cdsItemprgCOR.AsString                           := cdsCorDESCRICAO.AsString;

  if DM.cdsPrgProgramacaoESTAMPADO.Value = 'S' then
  begin
    DBEdit10.Enabled := True;
    DBEdit13.Enabled := True;
    DBEdit10.SetFocus;
  end
  else
  begin
    DBEdit10.Enabled := False;
    DBEdit13.Enabled := False;
    DBEdit17.SetFocus;
  end;

end;

procedure TfrmProgramacao.SpeedButton6Click(Sender: TObject);
begin
  DM.cdsTransportadora.Open;
  Pesquisa(DM.cdsTransportadora,['NOME_TRANSPORTADORA','ID_TRANSPORTADORA'],['Nome Transportadora','C�digo'],[40,4],'','','','','Transportadora','Transportadora');
  DM.cdsPrgProgramacaoID_TRANSPORTADORA.AsInteger := DM.cdsTransportadoraID_TRANSPORTADORA.AsInteger;
  DM.cdsPrgProgramacaoNOME_TRANSPORTADORA.AsString:= DM.cdsTransportadoraNOME_TRANSPORTADORA.AsString;
  DBEdit19.SetFocus;
end;

end.
