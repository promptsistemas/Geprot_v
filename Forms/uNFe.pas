unit uNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, ACBrDANFCeFortesFr, ACBrNFeDANFeESCPOS, ACBrMail,
  ACBrPosPrinter, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass, ACBrBase, ACBrDFe,
  ACBrNFe,pcnConversao,DB,


IniFiles, ShellAPI, pcnRetConsReciDFe,
  OleCtrls, SHDocVw,
  ACBrUtil,
  XMLIntf, XMLDoc, zlib,
  Spin, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrDFeReport, ACBrDFeDANFeReport;

type
  TfrmNotaFiscalEletronica = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    P_ROMANEIO: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label8: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label18: TLabel;
    Label30: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DBEdit27: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    edtCNPJ: TMaskEdit;
    edtIE: TEdit;
    edtTransportadora: TEdit;
    edtEnd: TEdit;
    edtMun: TEdit;
    edtUF: TEdit;
    edtPlaca: TEdit;
    edtUFPlaca: TEdit;
    edtRNTC: TEdit;
    CB_FRETE: TComboBox;
    TabSheet4: TTabSheet;
    Label42: TLabel;
    Label43: TLabel;
    DBNavigator2: TDBNavigator;
    Panel2: TPanel;
    BB_GERARNF: TBitBtn;
    BB_DELETE: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    P_BOTOES_NFE: TPanel;
    btnPreviuw: TBitBtn;
    BtnEnviar: TBitBtn;
    BtnConsulta: TBitBtn;
    BtnReimpressao: TBitBtn;
    BtnCancelar: TBitBtn;
    btnStatusServ: TBitBtn;
    BB_INUTILIZAR: TBitBtn;
    btnCartadeCorrecao: TBitBtn;
    Button1: TButton;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label19: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label64: TLabel;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit33: TDBEdit;
    DBNavigator1: TDBNavigator;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrMail1: TACBrMail;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    OpenDialog1: TOpenDialog;
    TabSheet5: TTabSheet;
    OpenDialog2: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    MemoDados: TMemo;
    TabSheet11: TTabSheet;
    TabSheet15: TTabSheet;
    memoRespWS: TMemo;
    BtnValidar: TBitBtn;
    TabSheet16: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    MemoResp: TMemo;
    DBLookupComboBox2: TDBLookupComboBox;
    Label89: TLabel;
    DBText1: TDBText;
    qPdv: TSQLQuery;
    dspPdv: TDataSetProvider;
    cdsPdv: TClientDataSet;
    dsPdv: TDataSource;
    qPdvID_PDV: TIntegerField;
    qPdvID_CLIENTE: TIntegerField;
    qPdvID_USUARIO: TIntegerField;
    qPdvID_LOJA: TIntegerField;
    qPdvID_VENDEDOR: TIntegerField;
    qPdvDT_VENDA: TDateField;
    qPdvHR_VENDA: TTimeField;
    qPdvVL_VENDA: TFMTBCDField;
    qPdvVL_DESC: TFMTBCDField;
    qPdvVL_LIQ: TFMTBCDField;
    qPdvPERC_DESC: TFMTBCDField;
    qPdvSTATUS: TStringField;
    qPdvCUPOM: TStringField;
    qPdvCAIXA: TIntegerField;
    qPdvNOME_USUARIO: TStringField;
    qPdvLOJA: TStringField;
    qPdvR_SOCIAL: TStringField;
    qPdvFANTASIA_CLIENTE: TStringField;
    qPdvCNPJ_CPF_CLIENTE: TStringField;
    qPdvINSC_RG_CLIENTE: TStringField;
    qPdvCODIGO_MUNIC_CLIENTE: TStringField;
    qPdvCIDADE_CLIENTE: TStringField;
    qPdvUF_CLIENTE: TStringField;
    qPdvENDERECO_CLIENTE: TStringField;
    qPdvCOMPLEMENTO_CLIENTE: TStringField;
    qPdvNUMERO_CLIENTE: TStringField;
    qPdvBAIRRO_CLIENTE: TStringField;
    qPdvCEP_CLIENTE: TStringField;
    qPdvVENDEDOR: TStringField;
    cdsPdvID_PDV: TIntegerField;
    cdsPdvID_CLIENTE: TIntegerField;
    cdsPdvID_USUARIO: TIntegerField;
    cdsPdvID_LOJA: TIntegerField;
    cdsPdvID_VENDEDOR: TIntegerField;
    cdsPdvDT_VENDA: TDateField;
    cdsPdvHR_VENDA: TTimeField;
    cdsPdvVL_VENDA: TFMTBCDField;
    cdsPdvVL_DESC: TFMTBCDField;
    cdsPdvVL_LIQ: TFMTBCDField;
    cdsPdvPERC_DESC: TFMTBCDField;
    cdsPdvSTATUS: TStringField;
    cdsPdvCUPOM: TStringField;
    cdsPdvCAIXA: TIntegerField;
    cdsPdvNOME_USUARIO: TStringField;
    cdsPdvLOJA: TStringField;
    cdsPdvR_SOCIAL: TStringField;
    cdsPdvFANTASIA_CLIENTE: TStringField;
    cdsPdvCNPJ_CPF_CLIENTE: TStringField;
    cdsPdvINSC_RG_CLIENTE: TStringField;
    cdsPdvCODIGO_MUNIC_CLIENTE: TStringField;
    cdsPdvCIDADE_CLIENTE: TStringField;
    cdsPdvUF_CLIENTE: TStringField;
    cdsPdvENDERECO_CLIENTE: TStringField;
    cdsPdvCOMPLEMENTO_CLIENTE: TStringField;
    cdsPdvNUMERO_CLIENTE: TStringField;
    cdsPdvBAIRRO_CLIENTE: TStringField;
    cdsPdvCEP_CLIENTE: TStringField;
    cdsPdvVENDEDOR: TStringField;
    DBEdit31: TDBEdit;
    Label90: TLabel;
    DBEdit32: TDBEdit;
    Label91: TLabel;
    qPdvTP_CLIENTE: TStringField;
    cdsPdvTP_CLIENTE: TStringField;
    TabSheet17: TTabSheet;
    WBResposta: TWebBrowser;
    qTransportadora: TSQLQuery;
    dspTransportadora: TDataSetProvider;
    cdsTransportadora: TClientDataSet;
    dsTransportadora: TDataSource;
    qTransportadoraID_TRANSPORTADORA: TIntegerField;
    qTransportadoraCNPJ: TStringField;
    qTransportadoraIE: TStringField;
    qTransportadoraNOME_TRANSPORTADORA: TStringField;
    qTransportadoraENDERECO: TStringField;
    qTransportadoraCIDADE: TStringField;
    qTransportadoraUF: TStringField;
    qTransportadoraPLACA: TStringField;
    qTransportadoraUF_PLACA: TStringField;
    qTransportadoraRNTC: TStringField;
    qTransportadoraTP_FRETE: TStringField;
    qTransportadoraID_NOTA_FISCAL: TIntegerField;
    cdsTransportadoraID_TRANSPORTADORA: TIntegerField;
    cdsTransportadoraCNPJ: TStringField;
    cdsTransportadoraIE: TStringField;
    cdsTransportadoraNOME_TRANSPORTADORA: TStringField;
    cdsTransportadoraENDERECO: TStringField;
    cdsTransportadoraCIDADE: TStringField;
    cdsTransportadoraUF: TStringField;
    cdsTransportadoraPLACA: TStringField;
    cdsTransportadoraUF_PLACA: TStringField;
    cdsTransportadoraRNTC: TStringField;
    cdsTransportadoraTP_FRETE: TStringField;
    cdsTransportadoraID_NOTA_FISCAL: TIntegerField;
    BB_TRANSPORTE: TBitBtn;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBComboBox1: TDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    spDelitemnotaFiscal: TSQLStoredProc;
    dspDelitemnotaFiscal: TDataSetProvider;
    cdsDelitemnotaFiscal: TClientDataSet;
    BB_CALCULAR: TBitBtn;
    P_DESCONTO_ITEM: TPanel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    DBText9: TDBText;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    DBEdit44: TDBEdit;
    P_ACRESIMO: TPanel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBText17: TDBText;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    DBEdit43: TDBEdit;
    RG_FINALIZADE: TRadioGroup;
    Label93: TLabel;
    Label92: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    RG_TP_EMISSAO: TRadioGroup;
    SB_TRANSPORTADORA: TSpeedButton;
    Panel1: TPanel;
    Label114: TLabel;
    Label115: TLabel;
    SpeedButton4: TSpeedButton;
    BitBtn6: TBitBtn;
    DBMemoFisco: TDBMemo;
    DBMemoContribuinte: TDBMemo;
    DBGrid2: TDBGrid;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    PageControl4: TPageControl;
    TabSheet7: TTabSheet;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    gbCertificado: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label46: TLabel;
    sbtnGetCert: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button10: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button6: TButton;
    cbAssinar: TCheckBox;
    Button7: TButton;
    Button9: TButton;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    TabSheet8: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    spPathSchemas: TSpeedButton;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    edtFormatoAlerta: TEdit;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtIdToken: TEdit;
    edtToken: TEdit;
    edtPathSchemas: TEdit;
    TabSheet9: TTabSheet;
    GroupBox4: TGroupBox;
    Label54: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    gbProxy: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet12: TTabSheet;
    Label62: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    TabSheet13: TTabSheet;
    sbPathNFe: TSpeedButton;
    Label76: TLabel;
    Label77: TLabel;
    sbPathCan: TSpeedButton;
    Label78: TLabel;
    sbPathCCe: TSpeedButton;
    Label79: TLabel;
    sbPathInu: TSpeedButton;
    Label80: TLabel;
    sbPathDPEC: TSpeedButton;
    Label81: TLabel;
    sbPathEvento: TSpeedButton;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    edtPathCCe: TEdit;
    edtPathNFe: TEdit;
    edtPathCan: TEdit;
    edtPathInu: TEdit;
    edtPathDPEC: TEdit;
    edtPathEvento: TEdit;
    cbxSepararPorModelo: TCheckBox;
    TabSheet10: TTabSheet;
    Label82: TLabel;
    sbtnLogoMarca: TSpeedButton;
    edtLogoMarca: TEdit;
    rgTipoDanfe: TRadioGroup;
    TabSheet14: TTabSheet;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    SB_CLIENTE: TSpeedButton;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure LerConfiguracao ;
    procedure AtualizaSSLLibsCombo;
    procedure FormCreate(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure LoadConsulta201(XML: AnsiString);
    procedure BtnValidarClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnReimpressaoClick(Sender: TObject);
    procedure btnCartadeCorrecaoClick(Sender: TObject);
    procedure BB_INUTILIZARClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure BB_CANCELARMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure dspPDV1GetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure DBEdit16Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure BB_GERARNFClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB_TRANSPORTEClick(Sender: TObject);
    procedure DBEdit34Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BB_DELETEClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BB_CALCULARClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit43Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SB_TRANSPORTADORAClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure SB_CLIENTEClick(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);

  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure GerenciaBotoesNota;

  public
    { Public declarations }
    procedure GerarNFe(NumNFe : String);

  end;

var
  frmNotaFiscalEletronica: TfrmNotaFiscalEletronica;
  caminho      : String;
  Tipo : string;


implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM,
  strutils, math, TypInfo, DateUtils, synacode, blcksock, pcnNFe,
  pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL, ufrmStatus,
  uConfiguraArquivoNfe;

procedure TfrmNotaFiscalEletronica.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutiliza��o...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Carta de Corre��o...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;

end;

procedure TfrmNotaFiscalEletronica.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );

 cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;

end;

procedure TfrmNotaFiscalEletronica.BB_CALCULARClick(Sender: TObject);
Var
 vRecNo, TPCliente : Integer;
begin
    if DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Fisica' then
       TPCliente := 0;

    if DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Juridica' then
       TPCliente := 1;

    DM.cdsNotaFiscal.Open;
    DM.cdsSomaNf.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsSomaNf.Params[1].AsInteger := DM.cdsNotaFiscalID_PDV.AsInteger;
    DM.cdsSomaNf.Params[2].AsString  := DM.cdsNotaFiscalUF.AsString;
    DM.cdsSomaNf.Params[3].AsInteger := TPCliente;//DM.cdsNotaFiscalTP_CLIENTE.AsInteger;
    DM.cdsSomaNf.Execute;
    vRecNo := DM.cdsNotaFiscal.RecNo;
    DM.cdsNotaFiscal.Close;
    DM.cdsNotaFiscal.Open;
    DM.cdsNotaFiscal.RecNo := vRecNo;

    DM.cdsItemNotaFiscal.Close;
    DM.cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsItemNotaFiscal.Open;

end;

procedure TfrmNotaFiscalEletronica.BB_CANCELARClick(Sender: TObject);
begin
  if Tipo = 'Cancelar' then
  begin
    DM.cdsNotaFiscal.Cancel;
    PageControl1.ActivePage := TabSheet1;
    GerenciaBotoes;
    GerenciaBotoes2;

  end
  else
  begin
    DM.cdsNotaFiscal.Cancel;
    PageControl1.ActivePage := TabSheet1;
    GerenciaBotoes;
    GerenciaBotoes2;
  end;

end;

procedure TfrmNotaFiscalEletronica.BB_CANCELARMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Tipo :='Cancelar';
end;

procedure TfrmNotaFiscalEletronica.BB_DELETEClick(Sender: TObject);
begin
  if DM.cdsNotaFiscalSITUACAO.Value = 'Autorizada' then
  begin
    ShowMessage('Nota Fiscal J� Autorizada. Exclus�o Negada');
    Exit;
  end;
  if Application.MessageBox('Deseja Excluir este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO )=idyes then
  begin
    if DM.cdsItemNotaFiscal.RecordCount > 0 then
    begin
      DM.cdsItemNotaFiscal.Delete;
      DM.cdsItemNotaFiscal.ApplyUpdates(0);

      DM.cdsSomaNf.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
      DM.cdsSomaNf.Params[1].AsInteger := DM.cdsNotaFiscalID_PDV.AsInteger;
      DM.cdsSomaNf.Params[2].AsString  := DM.cdsNotaFiscalUF.AsString;
      DM.cdsSomaNf.Params[3].AsInteger := DM.cdsNotaFiscalTP_CLIENTE.AsInteger;
      DM.cdsSomaNf.Execute;
      DM.cdsNotaFiscal.Refresh;
      GerenciaBotoesNota;
//      SomaIcmsSubst;
    end
    else
    begin
      MessageDlg('Nenhum Registro Encontrado', mtInformation,
        [mbOk], 0);
    end
  end
  else
  begin
  end;

end;

procedure TfrmNotaFiscalEletronica.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  PageControl1.ActivePage := TabSheet1;
  DM.cdsNotaFiscal.Edit;
  GerenciaBotoes;
  GerenciaBotoes2;
  DBLookupComboBox2.SetFocus;

end;

procedure TfrmNotaFiscalEletronica.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO )=idyes then
  begin
    DM.cdsNotaFiscal.Delete;
    DM.cdsNotaFiscal.ApplyUpdates(0);
 //   DM.cdsNotaFiscal.Refresh;
    GerenciaBotoes;
    GerenciaBotoes2;
  end
  else
  begin
  end;
    GerenciaBotoes;
    GerenciaBotoes2;

end;

procedure TfrmNotaFiscalEletronica.BB_GERARNFClick(Sender: TObject);
begin
  if (DM.cdsNotaFiscal.State in dsEditModes) then
  begin
    ShowMessage('Favor Salvar Dados da Nota');
    BB_GRAVAR.SetFocus;
    Exit;
  end;
  if DM.cdsItemNotaFiscal.RecordCount > 0 then
  begin
    ShowMessage('Nota Fiscal J� Foi Gerada.');
    exit;
  end;
  if DM.cdsNotaFiscal.IsEmpty then
  begin
    ShowMessage('N�o Exite Nota Para Gerar.');
    Exit;
  end
  else
  begin
    DM.cdsItemNotaFiscal.Open;
    DM.cdsInc_Item_nf.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsInc_Item_nf.Params[1].AsInteger := DM.cdsNotaFiscalID_PDV.AsInteger;
    DM.cdsInc_Item_nf.Params[2].AsInteger := DM.cdsNotaFiscalID_CLIENTE.AsInteger;
    DM.cdsInc_Item_nf.Params[3].AsString  := DM.cdsNotaFiscalUF.AsString;
    DM.cdsInc_Item_nf.Params[4].AsString  := DM.cdsNotaFiscalTP_CLIENTE.AsString;
    DM.cdsInc_Item_nf.Params[5].AsInteger := 1;//TpNotaFiscal;
    DM.cdsInc_Item_nf.Params[6].AsInteger := DM.cdsNotaFiscalID_LOJA.AsInteger;
    DM.cdsInc_Item_nf.Execute;
    DM.cdsItemNotaFiscal.ApplyUpdates(0);
    DM.cdsItemNotaFiscal.Refresh;
{    DM.cdsNotaFiscal.Close;
    DM.cdsNotaFiscal.Open;

    DM.cdsItemNotaFiscal.Close;
    DM.cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsItemNotaFiscal.Open;
 }

    //somar total da nota

    DM.cdsNotaFiscal.Open;
    DM.cdsSomaNf.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsSomaNf.Params[1].AsInteger := DM.cdsNotaFiscalID_PDV.AsInteger;
    DM.cdsSomaNf.Params[2].AsString  := DM.cdsNotaFiscalUF.AsString;
    DM.cdsSomaNf.Params[3].AsString := DM.cdsNotaFiscalTP_CLIENTE.AsString;
    DM.cdsSomaNf.Execute;
    DM.cdsNotaFiscal.ApplyUpdates(0);
    DM.cdsNotaFiscal.Refresh;
{    DM.cdsNotaFiscal.Close;
    DM.cdsNotaFiscal.Open;

    DM.cdsItemNotaFiscal.Close;
    DM.cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsItemNotaFiscal.Open;   }

    PageControl1.ActivePage := TabSheet2;
    Button1Click(Self);
    //SomaIcmsSubst;
    DBGrid2.SetFocus;
    ShowMessage('Nota Fiscal Gerada com Sucesso ');
    GerenciaBotoes2;
    GerenciaBotoesNota;
  end;

end;

procedure TfrmNotaFiscalEletronica.BB_GRAVARClick(Sender: TObject);
begin
  if DBEdit16.Text = '' then
  begin
    ShowMessage('    A T E N � � O  !!!!!! '+#13+
                '                          '+#13+
                '  Favor Informar Pedido');
    DBEdit16.SetFocus;
    Exit;
  end;

  if DBEdit1.Text = '' then
  begin
    ShowMessage('    A T E N � � O  !!!!!! '+#13+
                '                          '+#13+
                'Campo "C�d.Cliente" n�o informado');
    DBEdit1.SetFocus;
    Exit;
  end;
    if Tipo ='Insert' then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := 'SELECT MAX(ID_NOTA_FISCAL) FROM TB_NOTA_FISCAL ';
      DM.cdsDinamica.Open;
      DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := 'SELECT MAX(NR_NOTA_FISCAL) FROM TB_NOTA_FISCAL WHERE ID_LOJA = '+DM.cdsNotaFiscalID_LOJA.AsString;
      DM.cdsDinamica.Open;
      DM.cdsNotaFiscalNR_NOTA_FISCAL.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;


      PageControl1.ActivePage := TabSheet2;
      DBGrid2.SetFocus;
      if DM.cdsNotaFiscal.ApplyUpdates(0) <> 0  then
      begin
       ShowMessage('Erro Ao Gravar Dados Da Nota, Feche O Sistema e Tente Novamente, Ou Contate O Suporte.');
       Exit;
      end
      else
      begin
        DM.cdsNotaFiscal.ApplyUpdates(0);
        GerenciaBotoes;
        GerenciaBotoes2;
      end;
    end;

    if Tipo ='Edit' then
    begin
      PageControl1.ActivePage := TabSheet2;
      DBGrid2.SetFocus;
      if DM.cdsNotaFiscal.ApplyUpdates(0) <> 0  then
      begin
       ShowMessage('Erro Ao Gravar Dados Da Nota, Feche O Sistema e Tente Novamente, Ou Contate O Suporte.');
       Exit;
      end
      else
      begin
        DM.cdsNotaFiscal.ApplyUpdates(0);
        GerenciaBotoes;
        GerenciaBotoes2;
      end;
    end;

end;

procedure TfrmNotaFiscalEletronica.BB_INUTILIZARClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutiliza��o ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetWS;
  memoRespWS.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Inutilizacao.RetornoWS, WBResposta);

  PageControl1.ActivePage := TabSheet11;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Inutiliza��o');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
  MemoDados.Lines.Add('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
  MemoDados.Lines.Add('CNPJ: '      +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
  MemoDados.Lines.Add('Modelo: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
  MemoDados.Lines.Add('Serie: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
  MemoDados.Lines.Add('Protocolo: '      +ACBrNFe1.WebServices.Inutilizacao.Protocolo);

end;

procedure TfrmNotaFiscalEletronica.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  PageControl1.ActivePage := TabSheet1;
  cdsPDV.Close;
  DM.CdsCliente.Close;

  DM.cdsNotaFiscal.Insert;
  DM.cdsNotaFiscalDT_EMISSAO.AsDateTime := Date;
  DM.cdsNotaFiscalDT_SAIDA.AsDateTime := Date;
  DM.cdsNotaFiscalN_SERIE.AsString := '1';
  DM.cdsNotaFiscalSITUACAO.Value := 'Em Digitacao';
  DM.cdsNotaFiscal.Open;
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  RG_TP_EMISSAO.ItemIndex := 1;
//  DBMemoFisco.Lines.Add(' Interesse Ao Fisco : EMPRESA OPTANTE PELO SIMPLES NACIONAL LEI COMPLEMENTAR N� 123, DE 14/12/2016. N�O GERA DIREITO A CR�DITO FISCAL DE ICMS.');
  GerenciaBotoes;
  GerenciaBotoes2;
  DBLookupComboBox2.SetFocus;
end;

procedure TfrmNotaFiscalEletronica.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsNotaFiscal,['NR_NOTA_FISCAL','DT_EMISSAO','R_SOCIAL','VL_TOTAL_NOTA'],
                        ['N� Nota','Data','Nome do Cliente','Total da Nota'],
    [8,10,30,13],'','','','','Pedido','Pedido');
    GerenciaBotoes;
    GerenciaBotoes2;
    GerenciaBotoesNota;
end;

procedure TfrmNotaFiscalEletronica.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNotaFiscalEletronica.BB_TRANSPORTEClick(Sender: TObject);
begin
  TabSheet3.Enabled := True;
  PageControl1.ActivePage := TabSheet3;

  DM.cdsNotaFiscal.Edit;
  SB_TRANSPORTADORAClick(Self);
end;

procedure TfrmNotaFiscalEletronica.BitBtn1Click(Sender: TObject);
begin
  DM.cdsNotaFiscal.ApplyUpdates(0);
  ShowMessage('Gravado Com Sucesso!');
  TabSheet3.Enabled := False;
end;

procedure TfrmNotaFiscalEletronica.BitBtn2Click(Sender: TObject);
begin
  if DM.cdsNotaFiscalSITUACAO.Value = 'Autorizada' then
  begin
    ShowMessage('Nota Fiscal J� Autorizada. Opera��o Negada');
    Exit;
  end;
  P_DESCONTO_ITEM.Visible := True;
  dm.cdsItemNotaFiscal.Edit;
  DBEdit44.SetFocus;

end;

procedure TfrmNotaFiscalEletronica.BitBtn3Click(Sender: TObject);
begin
  if DM.cdsNotaFiscalSITUACAO.Value = 'Autorizada' then
  begin
    ShowMessage('Nota Fiscal J� Autorizada. Opera��o Negada');
    Exit;
  end;
  P_ACRESIMO.Visible := True;
  dm.cdsItemNotaFiscal.Edit;
  DBEdit43.SetFocus;

end;

procedure TfrmNotaFiscalEletronica.BitBtn4Click(Sender: TObject);
begin
  if DM.cdsNotaFiscalSITUACAO.Value = 'Autorizada' then
  begin
    ShowMessage('Nota Fiscal J� Autorizada. Exclus�o Negada');
    P_BOTOES_NFE.SetFocus;
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Todos os Itens?','Confirma��o',MB_YESNO+MB_ICONQUESTION ) = idyes then
  begin
    cdsDelitemnotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    cdsDelitemnotaFiscal.Execute;
    DM.cdsItemNotaFiscal.ApplyUpdates(0);
    DM.cdsItemNotaFiscal.Close;
    DM.cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsItemNotaFiscal.Open;
    GerenciaBotoes;
    GerenciaBotoes2;
    GerenciaBotoesNota;
    BB_CALCULARClick(Self);
    ShowMessage('Regsistros Exclu�dos com Sucesso');
  end;

end;

procedure TfrmNotaFiscalEletronica.BitBtn5Click(Sender: TObject);
begin
  cdsTransportadora.Cancel;
  ShowMessage('Informa��o Cancelada.');
  TabSheet3.Enabled := False;
end;

procedure TfrmNotaFiscalEletronica.BitBtn6Click(Sender: TObject);
var
 CarregarMaisXML : Boolean;
begin
	CarregarMaisXML := true;
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFe1.NotasFiscais.Clear;

  while CarregarMaisXML do
  begin
    if OpenDialog1.Execute then
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    CarregarMaisXML := MessageDlg('Carregar mais Notas?', mtConfirmation, mbYesNo, 0) = mrYes;
  end;

  ACBrNFe1.NotasFiscais.ImprimirPDF;

end;

procedure TfrmNotaFiscalEletronica.BitBtn7Click(Sender: TObject);
begin
ACBrNFe1.DistribuicaoDFePorChaveNFe(35,'14735903000125',Edit1.Text);

//ACBrNFe1.Download;
end;

procedure TfrmNotaFiscalEletronica.BtnCancelarClick(Sender: TObject);
var
  idLote,vAux, nChave, dData : String;
  dDataReal : TDate;
  AnoMes : Integer;
  DadosNota : string;

begin
  if DM.cdsNotaFiscalSITUACAO.AsString <> 'Autorizada' then
  begin
    ShowMessage('Nota Fiscal N�o Foi Autorizada, Impossiv�l Realizar o Cancelamento. Por Favor Verifique');
    Exit;
  end;

  DadosNota := DM.cdsNotaFiscalNR_NOTA_FISCAL.AsString+' Cliente '+DM.cdsNotaFiscalR_SOCIAL.AsString;

  ShowMessage('Por Favor Conferir os Dada Nota Para Cancelamento '+#13+
              'N� da NF-e  '+DadosNota);

  if Application.MessageBox(' Deseja Cancelar a NF-e ','confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  begin
  {  OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt := '*-nfe.XML';
    OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;}
    dDataReal := Date;
    dData:=FormatDateTime('YYYYMM', dDataReal);
    AnoMes := StrToInt(dData);
    nChave := 'C:\Sintegra\Aplicativo\Schemas\XML\'+IntToStr(AnoMes)+'\'+DM.cdsNotaFiscalCHAVE_NFE.AsString+'-nfe.xml';
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  //  if OpenDialog1.Execute then
  //  begin
      ACBrNFe1.NotasFiscais.Clear;
  //    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
      ACBrNFe1.NotasFiscais.LoadFromFile(nChave);

      idLote := '1';
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
         exit;
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
         exit;
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
      with ACBrNFe1.EventoNFe.Evento.Add do
      begin
       infEvento.dhEvento := now;
       infEvento.tpEvento := teCancelamento;
       infEvento.detEvento.xJust := vAux;
      end;
      ACBrNFe1.EnviarEvento(StrToInt(idLote));
      ACBrNFe1.ImprimirEvento;

      MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
      memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
      LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
   //   ShowMessage(IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat));
   //   ShowMessage(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
      ACBrNFe1.NotasFiscais.ImprimirCancelado;
      ACBrNFe1.NotasFiscais.ImprimirPDF;

      DM.cdsNotaFiscal.Edit;
      DM.cdsNotaFiscalSITUACAO.Value := 'Cancelada';
//      DM.cdsNotaFiscalCHAVE_NFE.AsString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      DM.cdsNotaFiscal.ApplyUpdates(0);
      DM.cdsNotaFiscal.Refresh;

   // end;

  end
  else
  begin
    ShowMessage('Cancelamento N�o Realizado!');
  end;



end;

procedure TfrmNotaFiscalEletronica.btnCartadeCorrecaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
//  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Chave da NF-e', Chave)) then
//     exit;

  Chave := DM.cdsNotaFiscalCHAVE_NFE.AsString;  //Trim(OnlyNumber(Chave));
  idLote := '1';
//  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Identificador de controle do Lote de envio do Evento', idLote)) then
//     exit;
  CNPJ :=  TiraPontos(DM.cdsNotaFiscalCNPJ_CPF.AsString);  //copy(Chave,7,14);
//  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
//     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Corre��o a ser considerada, texto livre. A corre��o mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Corre��o a ser considerada', Correcao)) then
     exit;
  ACBrNFe1.EventoNFe.Evento.Clear;
 // ACBrNFe1.Env := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.detEvento.xCorrecao := Correcao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));
  ACBrNFe1.ImprimirEvento;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  //memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.EventoRetorno;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetWS, WBResposta);
end;

procedure TfrmNotaFiscalEletronica.BtnConsultaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    ShowMessage(ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
    LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
    PageControl1.ActivePage := TabSheet16;
  end;

end;

procedure TfrmNotaFiscalEletronica.BtnEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
 if  (NOT DM.cdsNotaFiscalPROTOCOLO_AUTORIZACAO.IsNull) then
 begin
   ShowMessage('Nota Fiscal J� Assinada e Enviada');
   Exit;
 end;
  vAux     := DM.cdsNotaFiscalNR_NOTA_FISCAL.AsString;
  vNumLote := DM.cdsNotaFiscalNR_NOTA_FISCAL.AsString;
  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF :=  TpcnVersaoDF(cbVersaoDF.ItemIndex);
  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.GerarNFe;

  ACBrNFe1.Enviar(vNumLote,True);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);
  ///*pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
//  ACBrNFe1.NotasFiscais.Imprimir;
  DM.cdsNotaFiscal.Edit;
  DM.cdsNotaFiscalSITUACAO.Value := 'Autorizada';
  DM.cdsNotaFiscalCHAVE_NFE.Value := ACBrNFe1.WebServices.Retorno.ChaveNFe;
  DM.cdsNotaFiscalPROTOCOLO_AUTORIZACAO.Value := ACBrNFe1.WebServices.Retorno.Protocolo;
  DM.cdsNotaFiscalRECIBO.Value                := ACBrNFe1.WebServices.Retorno.Recibo;
  DM.cdsNotaFiscalDT_AUTORIZACAO.AsDateTime := Now;
  DM.cdsNotaFiscalSTATUS.Value :='S';
  DM.cdsNotaFiscal.ApplyUpdates(0);

  ACBrNFe1.NotasFiscais.Clear;
end;

procedure TfrmNotaFiscalEletronica.BtnReimpressaoClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName,False);
    ACBrNFe1.NotasFiscais.Imprimir;
  end;

end;

procedure TfrmNotaFiscalEletronica.BtnValidarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

// Sugest�o de configura��o para apresenta��o de mensagem mais amig�vel ao usu�rio final
  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';

  if OpenDialog1.Execute then
   begin
     ACBrNFe1.NotasFiscais.Clear;
     ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, True);
     try
        ACBrNFe1.NotasFiscais.Validar;
        if ACBrNFe1.NotasFiscais.Items[0].Alertas <> '' then
          MemoDados.Lines.Add('Alertas: '+ACBrNFe1.NotasFiscais.Items[0].Alertas);
        ShowMessage('Nota Fiscal Eletr�nica Valida');
     except
        on E: Exception do
        begin
          PageControl1.ActivePage := TabSheet5;
          MemoDados.Lines.Add('Exception: '+E.Message);
          MemoDados.Lines.Add('Erro: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacao);
          MemoDados.Lines.Add('Erro Completo: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacaoCompleto); //Útil para gravar em arquivos de LOG
        end;
     end;
   end;


end;

procedure TfrmNotaFiscalEletronica.Button1Click(Sender: TObject);
begin
{    DM.cdsNotaFiscal.Edit;
    DM.cdsNotaFiscalBC_VL_ICMS_ST.AsFloat := round(DM.cdsNotaFiscalVL_TOTAL_PRODUTO.AsFloat*20)/100;
    DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat :=
    (DM.cdsNotaFiscalVL_TOTAL_PRODUTO.AsFloat+DM.cdsNotaFiscalVL_ICMS_ST.AsFloat+DM.cdsNotaFiscalVL_ACRESCIMO.AsFloat)-(DM.cdsNotaFiscalVL_TOTAL_DESC.AsFloat);
    DM.cdsNotaFiscal.ApplyUpdates(0);}

end;

procedure TfrmNotaFiscalEletronica.DBEdit16Enter(Sender: TObject);
begin
  cdsPdv.Close;
  cdsPdv.Open;
end;

procedure TfrmNotaFiscalEletronica.DBEdit16Exit(Sender: TObject);
begin
  if DBEdit16.Text <> '' then
  begin
    if cdsPDV.Locate('ID_PDV',DM.cdsNotaFiscalID_PDV.AsInteger,[]) then
    begin
      DM.cdsNotaFiscalID_PDV.AsInteger          := cdsPDVID_PDV.AsInteger;
      DM.cdsNotaFiscalID_CLIENTE.AsInteger      := cdsPDVID_CLIENTE.AsInteger;
      DM.cdsNotaFiscalR_SOCIAL.AsString         := cdsPDVR_SOCIAL.AsString;
      DM.cdsNotaFiscalENDERECO.AsString         := cdsPDVENDERECO_CLIENTE.AsString;
      DM.cdsNotaFiscalBAIRRO.AsString           := cdsPDVBAIRRO_CLIENTE.AsString;
      DM.cdsNotaFiscalCNPJ_CPF.AsString         := cdsPDVCNPJ_CPF_CLIENTE.AsString;
      DM.cdsNotaFiscalINSC_RG.AsString          := cdsPDVINSC_RG_CLIENTE.AsString;
      DM.cdsNotaFiscalCIDADE.AsString           := cdsPDVCIDADE_CLIENTE.AsString;
      DM.cdsNotaFiscalUF.AsString               := cdsPDVUF_CLIENTE.AsString;
      DM.cdsNotaFiscalCEP.AsString              := cdsPDVCEP_CLIENTE.AsString;
      DM.cdsNotaFiscalNUMERO.AsString           := cdsPDVNUMERO_CLIENTE.AsString;
      DM.cdsNotaFiscalID_VENDEDOR.AsInteger     := cdsPDVID_VENDEDOR.AsInteger;
//      DM.cdsNotaFiscalVENDEDOR.AsString         := cdsPDVNOME_DO_VENDEDOR.AsString;
      DM.cdsNotaFiscalCODIGO_MUNIC.AsString     := cdsPDVCODIGO_MUNIC_CLIENTE.AsString;
      DM.cdsNotaFiscalTP_CLIENTE.AsString      := cdsPdvTP_CLIENTE.AsString;
      DM.cdsNotaFiscalVL_TOTAL_DESC.AsFloat      := cdsPdvVL_DESC.AsFloat;

      //      DM.cdsNotaFiscalID_LOJA.AsInteger         := cdsPDVID_LOJA.AsInteger;
//      DM.cdsNotaFiscalR_SOCIAL_EMPRESA.AsString := cdsPDVLOJA.AsString;
     // if DM.cdsNotaFiscalTP_CLIENTE.AsInteger = 0 then
     //   LBLTPPESSOA.Caption :='Pessoa Jur�dica'
     // else
     //   LBLTPPESSOA.Caption :='Pessoa F�sica';


     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexName :='';
     DM.cdsDinamica.CommandText := ' SELECT PP.ID_PLANO_PAGAMENTO FROM TB_PAGAMENTO_PDV PP '+
                                   ' WHERE PP.ID_PDV = '+CDSPDVID_PDV.AsString;
     DM.cdsDinamica.Open;
     DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger;
     DM.cdsNotaFiscalDESCRICAO_PAGAMENTO.AsString := DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString;
     DM.cdsDinamica.Close;

      DBEdit3.SetFocus;
    end else
    begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                  '                                     '+#13+
                  '   Pedido n�o Encontrado             '+#13+
                  '   Ou n�o Faturado                   ');
      DM.cdsNotaFiscalID_PDV.Clear;
      SpeedButton1Click(Self);
    end;
  end;

end;

procedure TfrmNotaFiscalEletronica.DBEdit16KeyPress(Sender: TObject;
  var Key: Char);
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

procedure TfrmNotaFiscalEletronica.DBEdit17Exit(Sender: TObject);
begin
  if DBEdit17.Text <> '' then
  begin
    DM.cdsCliente.Close;
    DM.cdsCliente.Open;
    if DM.cdsCliente.Locate('ID_CLIENTE',DM.cdsNotaFiscalID_CLIENTE.AsInteger,[]) then
    begin
      DM.cdsNotaFiscalID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
      DM.cdsNotaFiscalR_SOCIAL.AsString    := DM.cdsClienteR_SOCIAL.AsString;
      DM.cdsNotaFiscalCNPJ_CPF.AsString    := DM.cdsClienteCNPJ_CPF.AsString;
      DM.cdsNotaFiscalINSC_RG.AsString     := DM.cdsClienteINSC_RG.AsString;
      DM.cdsNotaFiscalENDERECO.AsString    := DM.cdsClienteENDERECO.AsString;
      DM.cdsNotaFiscalNUMERO.AsString      := DM.cdsClienteNUMERO.AsString;
      DM.cdsNotaFiscalBAIRRO.AsString      := DM.cdsClienteBAIRRO.AsString;
      DM.cdsNotaFiscalCODIGO_MUNIC.AsString:= DM.cdsClienteCODIGO_MUNIC.AsString;
      DM.cdsNotaFiscalCIDADE.AsString      := DM.cdsClienteCIDADE.AsString;
      DM.cdsNotaFiscalUF.AsString          := DM.cdsClienteUF.AsString;
      DM.cdsNotaFiscalCEP.AsString         := DM.cdsClienteCEP.AsString;
      DBEdit3.SetFocus;
    end
    else
    begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                  '                                     '+#13+
                  '   Cliente n�o Encontrado             ');
      DM.cdsNotaFiscalID_CLIENTE.Clear;
      SB_CLIENTEClick(Self);
    end;

  end;

end;

procedure TfrmNotaFiscalEletronica.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SB_CLIENTEClick(self);
  end;

end;

procedure TfrmNotaFiscalEletronica.DBEdit34Enter(Sender: TObject);
begin
  cdsTransportadoraCNPJ.EditMask := '##.###.###/####-##';
end;

procedure TfrmNotaFiscalEletronica.DBEdit43Exit(Sender: TObject);
Var
 vRecNo : Integer;
begin
  if Application.MessageBox('Confirma Acrescimo Para o Item?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  begin
    DM.cdsItemNotaFiscal.ApplyUpdates(0);
    BB_CALCULARClick(Self);
    P_ACRESIMO.Visible := False;
    ShowMessage('Acrescimo Realizado Com Sucesso');
  end
  else
  begin
    DM.cdsItemPdv.Cancel;
    P_ACRESIMO.Visible := False;
    ShowMessage('Desconto Cancelado');
  end;

end;

procedure TfrmNotaFiscalEletronica.DBEdit44Exit(Sender: TObject);
Var
 vRecNo : Integer;
begin
  if Application.MessageBox('Confirma Desconto Para o Item?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
  begin
    DM.cdsItemNotaFiscal.ApplyUpdates(0);
    BB_CALCULARClick(Self);
    P_DESCONTO_ITEM.Visible := False;
    ShowMessage('Desconto Realizado Com Sucesso');
  end
  else
  begin
    DM.cdsItemPdv.Cancel;
    P_DESCONTO_ITEM.Visible := False;
    ShowMessage('Desconto Cancelado');
  end;

end;

procedure TfrmNotaFiscalEletronica.DBEdit6Enter(Sender: TObject);
begin
  SpeedButton2Click(Self);
end;

procedure TfrmNotaFiscalEletronica.DBGrid2CellClick(Column: TColumn);
begin
  GerenciaBotoes;
  GerenciaBotoes2;
  GerenciaBotoesNota;
end;

procedure TfrmNotaFiscalEletronica.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If DM.cdsNotaFiscalSITUACAO.AsString = 'Cancelada'  then // condi��o
  begin
    DBGrid2.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    DBGrid2.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
  end
  else
  if DM.cdsNotaFiscalSITUACAO.AsString = 'Autorizada'  then // condi��o
  begin
    DBGrid2.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    DBGrid2.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
  end
  else
  if DM.cdsNotaFiscalSITUACAO.AsString = 'Em digitacao'  then // condi��o
  begin
    DBGrid2.Canvas.Font.Color:= cl3DLight; // coloque aqui a cor desejada
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    DBGrid2.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
  end
  else
  if DM.cdsNotaFiscalSITUACAO.AsString = 'Assinada'  then // condi��o
  begin
    DBGrid2.Canvas.Font.Color:= clNavy; // coloque aqui a cor desejada
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    DBGrid2.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito

  end
  else
  begin
    DBGrid2.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    DBGrid2.Canvas.Font.Style :=(Sender as TDBGrid).Canvas.Font.Style + [FSBOLD]; //Deixa em negrito
  end;

end;

procedure TfrmNotaFiscalEletronica.DBGrid2Enter(Sender: TObject);
begin
  GerenciaBotoes;
  GerenciaBotoes2;
  GerenciaBotoesNota;
end;

procedure TfrmNotaFiscalEletronica.DBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  GerenciaBotoes;
  GerenciaBotoes2;
  GerenciaBotoesNota;
end;

procedure TfrmNotaFiscalEletronica.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  GerenciaBotoes;
  GerenciaBotoes2;
  GerenciaBotoesNota;
end;

procedure TfrmNotaFiscalEletronica.DBLookupComboBox1Exit(Sender: TObject);
begin
  DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger;
end;

procedure TfrmNotaFiscalEletronica.DBLookupComboBox2Exit(Sender: TObject);
begin
  DM.cdsNotaFiscalID_LOJA.AsInteger := DM.cdsEmpresaID_LOJA.AsInteger;
  DM.cdsNotaFiscalR_SOCIAL_EMPRESA.AsString := DM.cdsEmpresaR_SOCIAL.AsString;

end;

procedure TfrmNotaFiscalEletronica.dspPDV1GetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'TB_PDV';
end;

procedure TfrmNotaFiscalEletronica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmNotaFiscalEletronica := nil;
end;

procedure TfrmNotaFiscalEletronica.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;

begin
  cbSSLLib.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbSSLLib.ItemIndex := 0 ;

  cbCryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;
  cbCryptLib.ItemIndex := 0 ;

  cbHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;
  cbHttpLib.ItemIndex := 0 ;

  cbXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;
  cbXmlSignLib.ItemIndex := 0 ;

  cbSSLType.Items.Clear ;
  For Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) ) ;
  cbSSLType.ItemIndex := 0 ;

  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFe' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;
  cbVersaoDF.Items[0] := 've200' ;
  cbVersaoDF.ItemIndex := 0 ;

  LerConfiguracao;
//  PageControl3.ActivePage := tsNFe;
  //pgRespostas.ActivePageIndex := 2;

  ACBrNFe1.Configuracoes.WebServices.Salvar := true;

end;

procedure TfrmNotaFiscalEletronica.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmNotaFiscalEletronica.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Open;
  DM.cdsNotaFiscal.Close;
  DM.cdsNotaFiscal.Open;

  DM.cdsPlanoPagamento.Open;

  if DM.cdsNotaFiscal.RecordCount > 0 then
  begin
    DM.cdsItemNotaFiscal.Close;
    DM.cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
    DM.cdsItemNotaFiscal.Open;
  end;
  GerenciaBotoes;
  GerenciaBotoesNota;
  GerenciaBotoes2;

end;

procedure TfrmNotaFiscalEletronica.GerarNFe(NumNFe: String);
Var NotaF: NotaFiscal;
    Produto: TDetCollectionItem;
    Servico: TDetCollectionItem;
    Volume: TVolCollectionItem;
    Duplicata: TDupCollectionItem;
    ObsComplementar: TobsContCollectionItem;
    ObsFisco: TobsFiscoCollectionItem;
    Referenciada: TNFrefCollectionItem;
    DI: TDICollectionItem;
    Adicao: TAdiCollectionItem;
    Medicamento: TMedCollectionItem;
    Arma: TArmaCollectionItem;
    Reboque: TreboqueCollectionItem;
    Lacre: TLacresCollectionItem;
    ProcReferenciado: TprocRefCollectionItem;
    aNumIten : integer;

vSt,vTotSt, ST,TOTST   : Double;

//

  ex, descricao: String;
  tabela: Integer;
  aliqFedNac, aliqFedImp, aliqEst, aliqMun: Double;


//
begin
  vSt := 0;
  vTotSt := 0;

  ACBrNFe1.DANFE.PathPDF                   :='C:\Sintegra\Aplicativo\Schemas\PDF'; // criar caminho do PDF no Confif


  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    // Dados Principais
    DM.cdsEmpresa.Open;
    Ide.natOp   := DM.cdsNotaFiscalCFOP.AsString;//+' '+DM.cdsNotaFiscalDESC_CFOP.AsString;
    Ide.indPag  := ipVista;
    Ide.modelo  := 55;
    Ide.serie   := DM.cdsNotaFiscalN_SERIE.AsInteger;
    Ide.nNF     := StrToInt(DM.cdsNotaFiscalNR_NOTA_FISCAL.AsString);
    Ide.dEmi    := DM.cdsNotaFiscalDT_EMISSAO.AsDateTime;
    ide.tpEmis  := teNormal;
    Ide.dSaiEnt := StrToDate(DateToStr(Date)); //DM.cdsNotaFiscalDT_SAIDA.AsDateTime;
    ide.hSaiEnt := Now;
    if RG_TP_EMISSAO.ItemIndex = 0 then
      Ide.tpNF    := tnEntrada
    else
      Ide.tpNF    := tnSaida;
    Ide.cUF     := 29;
    Ide.cNF     := StrToInt(TiraPontos(Copy(DM.cdsEmpresaCNPJ.AsString,0,7)));
    ide.tpImp   := tiRetrato;
    if rgTipoAmb.ItemIndex = 0 then
      ide.tpAmb   := taProducao;
    if rgTipoAmb.ItemIndex = 1 then
      ide.tpAmb   := taHomologacao;

    Ide.cMunFG  := StrToInt(DM.cdsEmpresaCODIGO_MUNIC.AsString);
    if DM.cdsNotaFiscalUF.AsString = 'BA' then
      ide.idDest := doInterna
    else
      ide.idDest := doInterestadual;

    ide.indPres := pcPresencial;
    ide.procEmi := peAplicativoContribuinte;
    Ide.verProc := 'PromptCDV';

    if RG_FINALIZADE.ItemIndex = 0 then
      Ide.finNFe  := fnNormal;
    if RG_FINALIZADE.ItemIndex = 1 then
      Ide.finNFe  := fnDevolucao;

    // Emitente

    Emit.CNPJCPF := DM.cdsEmpresaCNPJ.AsString;//  '14735903000125';//DmNFe.sCNPJ;
    Emit.IE      := DM.cdsEmpresaINS_EST.AsString;//'50882881';//DmNFe.sIE;
    Emit.IEST    := '';
    Emit.xNome   := DM.cdsEmpresaR_SOCIAL.AsString;//'W B COM ';//DmNFe.sRazao;
    Emit.xFant   := DM.cdsEmpresaFANTASIA.AsString;//' BIJUTERIAS';//DmNFe.sFantasia;
    Emit.IM      := '';
    Emit.CNAE    := '';
    Emit.EnderEmit.xLgr    := DM.cdsEmpresaENDERECO.AsString;//'RUA J ';//DmNFe.sEndereco;
    Emit.EnderEmit.nro     := DM.cdsEmpresaNUMERO.AsString;//'21';//DmNFe.sNum;
    Emit.EnderEmit.xCpl    := DM.cdsEmpresaCOMPLEMENTO.AsString;//'';
    Emit.EnderEmit.xBairro := DM.cdsEmpresaBAIRRO.AsString;//'FELICIA';//DmNFe.sBairro;
    Emit.EnderEmit.cMun    := StrToInt(DM.cdsEmpresaCODIGO_MUNIC.AsString);
    Emit.EnderEmit.xMun    := DM.cdsEmpresaCIDADE.AsString;//'VITORIA DA CONQUISTA';//DmNFe.sCidade;
    Emit.EnderEmit.UF      := DM.cdsEmpresaUF.AsString;//'BA';//DmNFe.sUF;
    Emit.EnderEmit.CEP     := StrToInt('45055405');
    Emit.EnderEmit.fone    := DM.cdsEmpresaTELEFONE.AsString;//'34252703';//DmNFe.sFone;
    Emit.EnderEmit.cPais   := 1058;
    Emit.EnderEmit.xPais   := 'BRASIL';
    Emit.CRT               := crtSimplesNacional;
    // Destinatario
    if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Juridica' ) and (DM.cdsNotaFiscalUF.AsString = 'BA') and (DM.cdsNotaFiscalINSC_RG.AsString<>'') then
    begin
     Dest.indIEDest := inContribuinte;
     ide.indFinal := cfNao;
    end;

    if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Juridica' ) and (DM.cdsNotaFiscalUF.AsString = 'BA') and (DM.cdsNotaFiscalINSC_RG.AsString = '') then
    begin
     Dest.indIEDest := inIsento;
     ide.indFinal := cfNao;

    end;

    if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Juridica') and (DM.cdsNotaFiscalUF.AsString <> 'BA') and (DM.cdsNotaFiscalINSC_RG.AsString<>'') then
    begin
     Dest.indIEDest := inContribuinte;
     ide.indFinal := cfNao;
    end;

    if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Juridica') and (DM.cdsNotaFiscalUF.AsString <> 'BA') and (DM.cdsNotaFiscalINSC_RG.AsString = '') then
    begin
     Dest.indIEDest := inNaoContribuinte;
//*     ide.indFinal := cfConsumidorFinal;
     ide.indFinal := cfNao;

    end;

    if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Fisica') and (DM.cdsNotaFiscalUF.AsString = 'BA') then
    begin
     Dest.indIEDest := inIsento;
     ide.indFinal := cfNao;
    end;

    if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Fisica') and (DM.cdsNotaFiscalUF.AsString <> 'BA') then
    begin
     Dest.indIEDest := inNaoContribuinte;
     ide.indFinal := cfConsumidorFinal;
    end;

//    if DM.cdsNotaFiscalTP_CLIENTE.AsInteger = 1 then
//     ide.indFinal := cfConsumidorFinal;
//     ide.indFinal := cfNao;

    Dest.IE                := DM.cdsNotaFiscalINSC_RG.AsString;
    Dest.CNPJCPF           := DM.cdsNotaFiscalCNPJ_CPF.AsString;
    Dest.IM                := 'NULL';
    Dest.xNome             := DM.cdsNotaFiscalR_SOCIAL.AsString;
    Dest.EnderDest.xLgr    := DM.cdsNotaFiscalENDERECO.AsString;
    Dest.EnderDest.nro     := DM.cdsNotaFiscalNUMERO.AsString;
    Dest.EnderDest.xCpl    := DM.cdsNotaFiscalCOMPLEMENTO.AsString;
    Dest.EnderDest.xBairro := DM.cdsNotaFiscalBAIRRO.AsString;
    Dest.EnderDest.cMun    := DM.cdsNotaFiscalCODIGO_MUNIC.AsInteger;
    Dest.EnderDest.xMun    := DM.cdsNotaFiscalCIDADE.AsString;
    Dest.EnderDest.UF      := DM.cdsNotaFiscalUF.AsString;
    Dest.EnderDest.CEP     := StrToInt('45055405');//DM.cdsNotaFiscalCEP.AsString);
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';
//    Dest.EnderDest.fone    := DM.cdsNotaFiscalTELEFONE_EMPRESA.AsString;
    // Entrega
    Entrega.xLgr    := '';//;DmNFe.CdsContatosEND_ENTREGA.AsString;
    Entrega.nro     := '';//;DmNFe.CdsContatosNUM_END_ENTREGA.AsString;
    Entrega.xCpl    := '';//;DmNFe.CdsContatosCOMPL_ENT.AsString;
    Entrega.xBairro := '';//DmNFe.CdsContatosBAIRRO_END_ENTREGA.AsString;
    Entrega.cMun    := 0;
    Entrega.xMun    := '';//DmNFe.CdsContatosCID_END_ENTREGA.AsString;
    Entrega.UF      := '';//DmNFe.CdsContatosUF_END_ENT.AsString;
    // Itens da NFe
    aNumIten := 0;
    DM.cdsItemNotaFiscal.DisableControls;
    DM.cdsItemNotaFiscal.First;
    while not DM.cdsItemNotaFiscal.Eof do
    begin
      Inc(aNumIten);
      with Det.Add do
      begin
        Prod.nItem  := aNumIten;
        Prod.cProd  := DM.cdsItemNotaFiscalREFERENCIA.AsString;
//        Prod.cEAN   := DM.cdsItemNotaFiscalCD_BARRA.AsString;  //PARA CODIGOS DE BARRAS EXTERNOS ( EM CAIXAS)
        Prod.xProd  := DM.cdsItemNotaFiscalDESCRICAO.AsString;
        Prod.NCM    := DM.cdsItemNotaFiscalNCM.AsString;
        Prod.EXTIPI := '';
        Prod.CFOP := DM.cdsItemNotaFiscalCFOP.AsString;;
        Prod.uCom := DM.cdsItemNotaFiscalUNIDADE.AsString;
        Prod.qCom := DM.cdsItemNotaFiscalQUANT.AsFloat;
        Prod.vUnCom := DM.cdsItemNotaFiscalVL_UNI.AsFloat;
        Prod.vUnTrib := DM.cdsItemNotaFiscalVL_TOTAL.AsFloat/DM.cdsItemNotaFiscalQUANT.AsFloat;
//        Prod.cEANTrib := DM.cdsItemNotaFiscalCD_BARRA.AsString; // PARA CODIGOS DE BARRAS INTERNOS
        Prod.uTrib := DM.cdsItemNotaFiscalUNIDADE.AsString;
        Prod.vProd := DM.cdsItemNotaFiscalVL_TOTAL.AsFloat;
        Prod.qTrib  := DM.cdsItemNotaFiscalQUANT.AsFloat;
        Prod.vFrete := 0;
        Prod.vSeg   := 0;
        Prod.vDesc  := DM.cdsItemNotaFiscalVL_TOTAL_DESC_ITEM.AsFloat;
        Prod.CEST   := '2805900';

////        mmmm

{        //Valor Aproximados dos Impostos IBPT
        ACBrIBPTax1.AbrirTabela(ExtractFilePath(Application.ExeName)+
          'tabela_ibpt\TabelaIBPTaxBA18.2.A.csv');


        ACBrIBPTax1.Procurar(DM.cdsItemNotaFiscalNCM.AsString,ex, descricao, tabela, aliqFedNac,
          aliqFedImp, aliqEst, aliqMun, False);

        //Campo NF-e valor aproximado dos impostos;
        ACBrNFe1.NotasFiscais[0].NFe.Det[0].Imposto.vTotTrib := (
          (ACBrNFe1.NotasFiscais[0].NFe.Det[0].Prod.vProd -
          ACBrNFe1.NotasFiscais[0].NFe.Det[0].Prod.vDesc) *
          (aliqFedNac + aliqEst + aliqMun) / 100);  }



////////  mmmmmmm

        with Imposto do
        begin
          with ICMS do
          begin
              ICMS.orig     := oeNacional;
              if DM.cdsItemNotaFiscalCST.Value = '203' then
                 ICMS.CSOSN    := csosn203
              else
              if DM.cdsItemNotaFiscalCST.Value = '101' then
                 ICMS.CSOSN    := csosn101
              else
              if DM.cdsItemNotaFiscalCST.Value = '102' then
                 ICMS.CSOSN    := csosn102
              else
              if DM.cdsItemNotaFiscalCST.Value = '103' then
                 ICMS.CSOSN    := csosn103
              else
              if DM.cdsItemNotaFiscalCST.Value = '201' then
                 ICMS.CSOSN    := csosn201
              else
              if DM.cdsItemNotaFiscalCST.Value = '202' then
                 ICMS.CSOSN    := csosn202
              else
              if DM.cdsItemNotaFiscalCST.Value = '500' then
                 ICMS.CSOSN    := csosn500;

              if (DM.cdsNotaFiscalTP_CLIENTE.AsString = 'Fisica') and (DM.cdsNotaFiscalUF.AsString = 'BA') then
              begin
                ICMS.modBC    := dbiValorOperacao;
                ICMS.vBC      := Dm.cdsItemNotaFiscalVL_TOTAL.AsFloat;
                ICMS.pICMS    := Dm.cdsItemNotaFiscalALIQ_ICMS.AsFloat;
                ICMS.vICMS    := (DM.cdsItemNotaFiscalVL_ICMS_ST.AsFloat * Dm.cdsItemNotaFiscalALIQ_ICMS.AsFloat) / 10000;
                ICMS.modBCST  := dbisMargemValorAgregado;
                ICMS.pMVAST   := 20;
//                ICMS.pRedBCST := 20;
                ICMS.vBCST    := DM.cdsItemNotaFiscalBC_ICMS_ST.AsFloat;//(Dm.cdsItemNotaFiscalVL_TOTAL.AsFloat *20)/100;
                ICMS.pICMSST  := Dm.cdsItemNotaFiscalALIQ_ICMS.AsFloat;
                ICMS.vICMSST  := DM.cdsItemNotaFiscalVL_ICMS_ST.AsFloat;//(Dm.cdsItemNotaFiscalVL_TOTAL.AsFloat * 20)* Dm.cdsItemNotaFiscalALIQ_ICMS.AsFloat / 10000;
                ICMS.pRedBC   := 0;
                 vSt := vSt+(Dm.cdsItemNotaFiscalVL_TOTAL.AsFloat*20)/100;
                 vTotSt := (vSt*Dm.cdsItemNotaFiscalALIQ_ICMS.AsFloat)/100;
                // informa��es finais da NFe
              //  ST := ST+vSt;
              //  TOTST := TOTST+vTotSt;

                Total.ICMSTot.vBC     :=  DM.cdsNotaFiscalVL_TOTAL_PRODUTO.AsFloat;
                Total.ICMSTot.vICMS   :=  Dm.cdsNotaFiscalVL_ICMS.AsFloat;
                Total.ICMSTot.vBCST   := DM.cdsNotaFiscalBC_VL_ICMS_ST.AsFloat;//vSt;
                Total.ICMSTot.vST     := DM.cdsNotaFiscalVL_ICMS_ST.AsFloat;//vTotSt;
                Total.ICMSTot.vProd   := DM.cdsNotaFiscalVL_TOTAL_PRODUTO.AsFloat;
                Total.ICMSTot.vFrete  := 0;
                Total.ICMSTot.vSeg    := 0;
                Total.ICMSTot.vDesc   := DM.cdsNotaFiscalVL_TOTAL_DESC.AsFloat;
                Total.ICMSTot.vII     := 0;
                Total.ICMSTot.vIPI    := 0;
                Total.ICMSTot.vPIS    := 0;
                Total.ICMSTot.vCOFINS := 0;
                Total.ICMSTot.vOutro  := DM.cdsNotaFiscalVL_ACRESCIMO.AsFloat;
                Total.ICMSTot.vNF     := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;//(DM.cdsItemNotaFiscalVL_TOTAL.AsFloat + vTotSt) - DM.cdsItemNotaFiscalVL_TOTAL_DESC_ITEM.AsFloat;  //DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
                //
                Total.ISSQNtot.vServ   := 0;
                Total.ISSQNtot.vBC     := 0;
                Total.ISSQNtot.vISS    := 0;
                Total.ISSQNtot.vPIS    := 0;
                Total.ISSQNtot.vCOFINS := 0;
                //
                Total.retTrib.vRetPIS    := 0;
                Total.retTrib.vRetCOFINS := 0;
                Total.retTrib.vRetCSLL   := 0;
                Total.retTrib.vBCIRRF    := 0;
                Total.retTrib.vIRRF      := 0;
                Total.retTrib.vRetPrev   := 0;
              end
              else
              begin
                ICMS.modBC    := dbiValorOperacao;
                ICMS.vBC      := 0;
                ICMS.pICMS    := 0;
                ICMS.vICMS    := 0;
                ICMS.modBCST  := dbisMargemValorAgregado;
                ICMS.pMVAST   := 0;
                ICMS.pRedBCST := 0;
                ICMS.vBCST    := 0;//Dm.cdsNotaFiscalBC_VL_ICMS_ST.AsFloat;
                ICMS.pICMSST  := 0;
                ICMS.vICMSST  := 0; //Dm.cdsNotaFiscalVL_ICMS_ST.AsFloat;//(Dm.cdsItemNotaFiscalVL_TOTAL.AsFloat * 20)*17 / 100;
                ICMS.pRedBC   := 0;

                Total.ICMSTot.vBC     := 0;
                Total.ICMSTot.vICMS   := 0;
                Total.ICMSTot.vBCST   := 0;
                Total.ICMSTot.vST     := 0;
                Total.ICMSTot.vProd   := DM.cdsNotaFiscalVL_TOTAL_PRODUTO.AsFloat;
                Total.ICMSTot.vFrete  := 0;
                Total.ICMSTot.vSeg    := 0;
                Total.ICMSTot.vDesc   := DM.cdsNotaFiscalVL_TOTAL_DESC.AsFloat;
                Total.ICMSTot.vII     := 0;
                Total.ICMSTot.vIPI    := 0;
                Total.ICMSTot.vPIS    := 0;
                Total.ICMSTot.vCOFINS := 0;
                Total.ICMSTot.vOutro  := DM.cdsNotaFiscalVL_ACRESCIMO.AsFloat;
                Total.ICMSTot.vNF     := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
                Total.ICMSTot.vTotTrib :=  ACBrNFe1.NotasFiscais[0].NFe.Det[0].Imposto.vTotTrib;
                //
                Total.ISSQNtot.vServ   := 0;
                Total.ISSQNtot.vBC     := 0;
                Total.ISSQNtot.vISS    := 0;
                Total.ISSQNtot.vPIS    := 0;
                Total.ISSQNtot.vCOFINS := 0;
                //
                Total.retTrib.vRetPIS    := 0;
                Total.retTrib.vRetCOFINS := 0;
                Total.retTrib.vRetCSLL   := 0;
                Total.retTrib.vBCIRRF    := 0;
                Total.retTrib.vIRRF      := 0;
                Total.retTrib.vRetPrev   := 0;
              end;
          end;

      end;
      Dm.cdsItemNotaFiscal.Next;
    end;
      DM.cdsItemNotaFiscal.EnableControls;
  end;

    if DBComboBox1.ItemIndex = 0 then //Emitente
    begin
      Transp.modFrete := mfContaEmitente;
    // transportara
      edtCNPJ.Text :=  DM.cdsNotaFiscalCNPJ_TRANSP.AsString;
      edtIE.Text   := DM.cdsNotaFiscalIE_TRANSP.AsString;
      edtTransportadora.Text := DM.cdsNotaFiscalNOME_TRANSPORTADORA.AsString;
      edtEnd.Text            := DM.cdsNotaFiscalEND_TRANS.AsString;
      edtMun.Text            := DM.cdsNotaFiscalCIDADE_TRANS.AsString;
      edtUF.Text             := DM.cdsNotaFiscalUF_TRANS.AsString;

      Transp.Transporta.CNPJCPF := edtCNPJ.Text;
      Transp.Transporta.xNome   := edtTransportadora.Text;
      Transp.Transporta.IE      := edtIE.Text;
      Transp.Transporta.xEnder  := edtEnd.Text;
      Transp.Transporta.xMun    := edtMun.Text;
      Transp.Transporta.UF      := edtUF.Text;
    end
    else if DBComboBox1.ItemIndex = 1 then //Destinatario
    begin
      Transp.modFrete        := mfContaDestinatario;
      edtCNPJ.Text           := DM.cdsNotaFiscalCNPJ_TRANSP.AsString;
      edtIE.Text             := DM.cdsNotaFiscalIE_TRANSP.AsString;
      edtTransportadora.Text := DM.cdsNotaFiscalNOME_TRANSPORTADORA.AsString;
      edtEnd.Text            := DM.cdsNotaFiscalEND_TRANS.AsString;
      edtMun.Text            := DM.cdsNotaFiscalCIDADE_TRANS.AsString;
      edtUF.Text             := DM.cdsNotaFiscalUF_TRANS.AsString;

      Transp.Transporta.CNPJCPF := edtCNPJ.Text;
      Transp.Transporta.xNome   := edtTransportadora.Text;
      Transp.Transporta.IE      := edtIE.Text;
      Transp.Transporta.xEnder  := edtEnd.Text;
      Transp.Transporta.xMun    := edtMun.Text;
      Transp.Transporta.UF      := edtUF.Text;

    end
    else if DBComboBox1.ItemIndex = 2 then
    begin //'Terceiros'
      Transp.modFrete := mfContaTerceiros;
      edtCNPJ.Text := DM.cdsNotaFiscalCNPJ_TRANSP.AsString;
      edtIE.Text   := DM.cdsNotaFiscalIE_TRANSP.AsString;
      edtTransportadora.Text := DM.cdsNotaFiscalNOME_TRANSPORTADORA.AsString;
      edtEnd.Text            := DM.cdsNotaFiscalEND_TRANS.AsString;
      edtMun.Text            := DM.cdsNotaFiscalCIDADE_TRANS.AsString;
      edtUF.Text             := DM.cdsNotaFiscalUF_TRANS.AsString;

      Transp.Transporta.CNPJCPF := edtCNPJ.Text;
      Transp.Transporta.xNome   := edtTransportadora.Text;
      Transp.Transporta.IE      := edtIE.Text;
      Transp.Transporta.xEnder  := edtEnd.Text;
      Transp.Transporta.xMun    := edtMun.Text;
      Transp.Transporta.UF      := edtUF.Text;

    end
    else if DBComboBox1.ItemIndex = 3 then //'Sem Frete'
      Transp.modFrete := mfSemFrete;

    if DBComboBox1.ItemIndex = -1 then //'Sem Frete'
      Transp.modFrete := mfSemFrete;


   if DBEdit40.Text <> '' then
   begin
      With Transp.Reboque.Add do
      begin
        edtPlaca.Text   := DM.cdsNotaFiscalPLACA.AsString;
        edtUFPlaca.Text := DM.cdsNotaFiscalUF_PLACA.AsString;
        edtRNTC.Text    := DM.cdsNotaFiscalRNTC.AsString;
        placa := edtPlaca.Text;
        UF    := edtUFPlaca.Text;
        RNTC  := edtRNTC.Text;
      end;
   end;
    with Transp.Vol.Add do
    begin
      if DM.cdsNotaFiscalQT_VOL.AsString <> '' then
          qVol := DM.cdsNotaFiscalQT_VOL.AsInteger
      else
          qVol := 0 ;

      if DM.cdsNotaFiscalESPECIE.AsString <> '' then
         esp   := DM.cdsNotaFiscalESPECIE.AsString
      else
         esp   := '';
      marca := '';
      nVol  := '';
      pesoL := 0;
      pesoB := 0;
    end;
    // Cobranca
    {Cobr.Fat.nFat  := DM.cdsNotaFiscalID_NOTA_FISCAL.AsString;
    Cobr.Fat.vOrig := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
    Cobr.Fat.vDesc := 0;
    Cobr.Fat.vLiq  := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
    with Cobr.Dup.Add do
    begin
      nDup  := DM.cdsNotaFiscalID_NOTA_FISCAL.AsString;
      dVenc := DM.cdsNotaFiscalDT_EMISSAO.AsDateTime + 30;
      vDup  := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
    end; }
    //

    with pag.Add do
    begin
      if RG_FINALIZADE.ItemIndex = 1 then
      begin
        tPag := fpSemPagamento;
        vPag := 0;
      end
      else
      begin
        if DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger = 1 then
        begin
          tPag := fpDinheiro;
          vPag := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
        end else
        if DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger = 3 then
        begin
          tPag := fpCartaoCredito;
          vPag := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
        end else
        if DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger = 2 then
        begin
          tPag := fpCartaoCredito;
          vPag := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
        end else
        if DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger = 4 then
        begin
          tPag := fpCartaoCredito;
          vPag := DM.cdsNotaFiscalVL_TOTAL_NOTA.AsFloat;
        end;
      end;
    end;

    if DBMemoFisco.Lines.Text <> '' then
    begin
     InfAdic.infAdFisco := DBMemoFisco.Lines.Text;
    end;

    if DBMemoContribuinte.Lines.Text <> '' then
    begin
      with InfAdic.obsCont.Add do
      begin
        xCampo := ':';
        xTexto :=DBMemoContribuinte.Lines.Text;
      end;
    end;

  with autXML.Add do // Lista contendo at� 10
  begin
      CNPJCPF := '13937073000156';
  end;
{//  ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
  caminho := ACBrNFe1.NotasFiscais.Items[0].NomeArq;
  ACBrNFe1.NotasFiscais.GerarNFe;
  ACBrNFe1.NotasFiscais.Assinar;
//  DM.cdsNotaFiscal.Open;
//  DM.cdsNotaFiscal.Edit;
//  DM.cdsNotaFiscalSITUACAO.Value := 'Assinada';
//  DM.cdsNotaFiscal.ApplyUpdates(0);
  ShowMessage('Status : Nota Assinada');
  MemoResp.Lines.Clear;
  MemoResp.Lines.Add('       STATUS DO SERVI�OS   ');
  MemoResp.Lines.Add('');
  MemoResp.Lines.Add('Retorno : Nota Assinada!');
  BtnValidar.Enabled := True;
 // ShowMessage('Nota Salva em '+ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  ACBrNFe1.NotasFiscais.Items[0].GerarXML;
  ACBrNFe1.NotasFiscais.Clear; }
   ACBrNFe1.NotasFiscais.GerarNFe;
  end;


end;

procedure TfrmNotaFiscalEletronica.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsNotaFiscal.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
//  BitBtn1.Enabled   := NOT BB_GRAVAR.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsNotaFiscal.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  P_ROMANEIO.Enabled := not BB_NOVO.Enabled;
  TabSheet4.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmNotaFiscalEletronica.GerenciaBotoes2;
begin
  DM.cdsItemNotaFiscal.Close;
  DM.cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsNotaFiscalID_NOTA_FISCAL.AsInteger;
  DM.cdsItemNotaFiscal.Open;

  if DM.cdsItemNotaFiscal.RecordCount = 0 then
  begin
    BB_GERARNF.Enabled := True;
    BB_DELETE.Enabled := False;
  end
  else
  begin
    BB_GERARNF.Enabled := False;
    BB_DELETE.Enabled := True;
  end;

end;

procedure TfrmNotaFiscalEletronica.GerenciaBotoesNota;
begin
  if DM.cdsItemNotaFiscal.IsEmpty then
    BtnEnviar.Enabled := False
  else
    BtnEnviar.Enabled := True;

end;

procedure TfrmNotaFiscalEletronica.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
     cbSSLLib.ItemIndex:= Ini.ReadInteger( 'Certificado','SSLLib' ,0) ;
     cbCryptLib.ItemIndex := Ini.ReadInteger( 'Certificado','CryptLib' , 0) ;
     cbHttpLib.ItemIndex := Ini.ReadInteger( 'Certificado','HttpLib' , 0) ;
     cbXmlSignLib.ItemIndex := Ini.ReadInteger( 'Certificado','XmlSignLib' , 0) ;
     edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
     edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
     edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
     ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
     ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
     ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

      cbxAtualizarXML.Checked    := Ini.ReadBool(   'Geral','AtualizarXML',True) ;
      cbxExibirErroSchema.Checked    := Ini.ReadBool(   'Geral','ExibirErroSchema',True) ;
      edtFormatoAlerta.Text    := Ini.ReadString( 'Geral','FormatoAlerta'  ,'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.') ;
      cbFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      cbModeloDF.ItemIndex := Ini.ReadInteger( 'Geral','ModeloDF',0) ;
      cbVersaoDF.ItemIndex := Ini.ReadInteger( 'Geral','VersaoDF',0) ;
      edtIdToken.Text      := Ini.ReadString( 'Geral','IdToken'  ,'') ;
      edtToken.Text        := Ini.ReadString( 'Geral','Token'  ,'') ;
      ckSalvar.Checked     := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral','RetirarAcentos',True) ;
      edtPathLogs.Text     := Ini.ReadString( 'Geral','PathSalvar'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs') ;
      edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) )) ;

      ACBrNFe1.SSL.DescarregarCertificado;

      with ACBrNFe1.Configuracoes.Geral do
       begin
         SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
         SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
         SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
         SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
         AtualizaSSLLibsCombo;
         ExibirErroSchema := cbxExibirErroSchema.Checked;
         RetirarAcentos   := cbxRetirarAcentos.Checked;
         FormatoAlerta    := edtFormatoAlerta.Text;
         FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
         ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
         VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);
         IdCSC            := edtIdToken.Text;
         CSC              := edtToken.Text;
         Salvar           := ckSalvar.Checked;
       end;

      cbUF.ItemIndex        := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
      rgTipoAmb.ItemIndex   := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      cbxVisualizar.Checked  := Ini.ReadBool(    'WebService','Visualizar',False) ;
      cbxSalvarSOAP.Checked := Ini.ReadBool(    'WebService','SalvarSOAP',False) ;
      cbxAjustarAut.Checked  := Ini.ReadBool(   'WebService','AjustarAut' ,False) ;
      edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','5') ;
      edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0') ;
      seTimeOut.Value        := Ini.ReadInteger('WebService','TimeOut'  ,5000) ;
      cbSSLType.ItemIndex    := Ini.ReadInteger('WebService','SSLType' , 0) ;
      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      with ACBrNFe1.Configuracoes.WebServices do
       begin
         UF         := cbUF.Text;
         Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
         Visualizar := cbxVisualizar.Checked;
         Salvar     := cbxSalvarSOAP.Checked;
         AjustaAguardaConsultaRet := cbxAjustarAut.Checked;
         if NaoEstaVazio(edtAguardar.Text)then
            AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
         else
            edtAguardar.Text := IntToStr(AguardarConsultaRet);

         if NaoEstaVazio(edtTentativas.Text) then
            Tentativas          := StrToInt(edtTentativas.Text)
         else
            edtTentativas.Text := IntToStr(Tentativas);

         if NaoEstaVazio(edtIntervalo.Text) then
            IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
         else
            edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);

         TimeOut := seTimeOut.Value;
         ProxyHost := edtProxyHost.Text;
         ProxyPort := edtProxyPorta.Text;
         ProxyUser := edtProxyUser.Text;
         ProxyPass := edtProxySenha.Text;
       end;

      ACBrNFe1.SSL.SSLType := TSSLType( cbSSLType.ItemIndex );

      cbxSalvarArqs.Checked       := Ini.ReadBool(   'Arquivos','Salvar'     ,false);
      cbxPastaMensal.Checked      := Ini.ReadBool(   'Arquivos','PastaMensal',false);
      cbxAdicionaLiteral.Checked  := Ini.ReadBool(   'Arquivos','AddLiteral' ,false);
      cbxEmissaoPathNFe.Checked   := Ini.ReadBool(   'Arquivos','EmissaoPathNFe',false);
      cbxSalvaPathEvento.Checked  := Ini.ReadBool(   'Arquivos','SalvarPathEvento',false);
      cbxSepararPorCNPJ.Checked   := Ini.ReadBool(   'Arquivos','SepararPorCNPJ',false);
      cbxSepararPorModelo.Checked := Ini.ReadBool(   'Arquivos','SepararPorModelo',false);
      edtPathNFe.Text             := Ini.ReadString( 'Arquivos','PathNFe'    ,'') ;
      edtPathCan.Text             := Ini.ReadString( 'Arquivos','PathCan'    ,'') ;
      edtPathInu.Text             := Ini.ReadString( 'Arquivos','PathInu'    ,'') ;
      edtPathDPEC.Text            := Ini.ReadString( 'Arquivos','PathDPEC'   ,'') ;
      edtPathCCe.Text             := Ini.ReadString( 'Arquivos','PathCCe'   ,'') ;
      edtPathEvento.Text          := Ini.ReadString( 'Arquivos','PathEvento','') ;

      with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := cbxSalvarArqs.Checked;
         SepararPorMes      := cbxPastaMensal.Checked;
         AdicionarLiteral   := cbxAdicionaLiteral.Checked;
         EmissaoPathNFe     := cbxEmissaoPathNFe.Checked;
         SalvarEvento       := cbxSalvaPathEvento.Checked;
         SepararPorCNPJ     := cbxSepararPorCNPJ.Checked;
         SepararPorModelo   := cbxSepararPorModelo.Checked;
         PathSalvar         := edtPathLogs.Text;
         PathSchemas        := edtPathSchemas.Text;
         PathNFe            := edtPathNFe.Text;
         PathInu            := edtPathInu.Text;
         PathEvento         := edtPathEvento.Text;
       end;

      edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'DANFE','Tipo'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'DANFE','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;
  finally
     Ini.Free ;
  end;
end;

procedure TfrmNotaFiscalEletronica.LoadConsulta201(XML: AnsiString);
var
  DOM: IXMLDocument;
  lXML: AnsiString;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} '�' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:AnsiString ):AnsiString;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: AnsiString; TagRemover:AnsiString): AnsiString;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(XML,'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;

end;

procedure TfrmNotaFiscalEletronica.LoadXML(RetWS: String;
  MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');

  if ACBrNFe1.NotasFiscais.Count > 0then
    MemoResp.Lines.Add('Empresa: '+ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);

end;

procedure TfrmNotaFiscalEletronica.SB_TRANSPORTADORAClick(Sender: TObject);
begin
  DM.cdsTransportadora.Open;
  DM.cdsTransportadora.Refresh;

   if Pesquisa(DM.cdsTransportadora,['NOME_TRANSPORTADORA','CNPJ','ID_TRANSPORTADORA'],
    ['','',''],[30,18,4],'','0','','','TRANSPORTADORA','TRANSPORTADORA') Then
   Begin
      DM.cdsNotaFiscalID_TRANSPORTADORA.AsInteger    := DM.cdsTransportadoraID_TRANSPORTADORA.AsInteger;
      DM.cdsNotaFiscalCNPJ_TRANSP.AsString           := DM.cdsTransportadoraCNPJ.AsString;
      DM.cdsNotaFiscalIE_TRANSP.AsString             := DM.cdsTransportadoraIE.AsString;
      DM.cdsNotaFiscalNOME_TRANSPORTADORA.AsString   := DM.cdsTransportadoraNOME_TRANSPORTADORA.AsString;
      DM.cdsNotaFiscalEND_TRANS.AsString             := DM.cdsTransportadoraENDERECO.AsString;
      DM.cdsNotaFiscalCIDADE_TRANS.AsString          := DM.cdsTransportadoraCIDADE_1.AsString;
      DM.cdsNotaFiscalUF_TRANS.AsString              := DM.cdsTransportadoraUF_1.AsString;
      DBEdit40.SetFocus;
   end;
   DM.cdsCfop.Close;

end;

procedure TfrmNotaFiscalEletronica.SpeedButton1Click(Sender: TObject);
begin
   if Pesquisa(cdsPDV,['ID_PDV','ID_CLIENTE','R_SOCIAL','CNPJ_CPF_CLIENTE'],
    ['','','',''],[8,6,28,20],'','0','','Or�amento','Or�amento','Or�amento') Then
   begin
      DM.cdsNotaFiscalID_PDV.AsInteger          := cdsPDVID_PDV.AsInteger;
      DM.cdsNotaFiscalID_CLIENTE.AsInteger      := cdsPDVID_CLIENTE.AsInteger;
      DM.cdsNotaFiscalR_SOCIAL.AsString         := cdsPDVR_SOCIAL.AsString;
      DM.cdsNotaFiscalENDERECO.AsString         := cdsPDVENDERECO_CLIENTE.AsString;
      DM.cdsNotaFiscalBAIRRO.AsString           := cdsPDVBAIRRO_CLIENTE.AsString;
      DM.cdsNotaFiscalCNPJ_CPF.AsString         := cdsPDVCNPJ_CPF_CLIENTE.AsString;
      DM.cdsNotaFiscalINSC_RG.AsString          := cdsPDVINSC_RG_CLIENTE.AsString;
      DM.cdsNotaFiscalCIDADE.AsString           := cdsPDVCIDADE_CLIENTE.AsString;
      DM.cdsNotaFiscalUF.AsString               := cdsPDVUF_CLIENTE.AsString;
      DM.cdsNotaFiscalCEP.AsString              := cdsPDVCEP_CLIENTE.AsString;
      DM.cdsNotaFiscalNUMERO.AsString           := cdsPDVNUMERO_CLIENTE.AsString;
      DM.cdsNotaFiscalID_VENDEDOR.AsInteger     := cdsPDVID_VENDEDOR.AsInteger;
//      DM.cdsNotaFiscalVENDEDOR.AsString         := cdsPDVNOME_DO_VENDEDOR.AsString;
      DM.cdsNotaFiscalCODIGO_MUNIC.AsString     := cdsPDVCODIGO_MUNIC_CLIENTE.AsString;
      DM.cdsNotaFiscalTP_CLIENTE.AsString      := cdsPdvTP_CLIENTE.AsString;
      DM.cdsNotaFiscalVL_TOTAL_DESC.AsFloat      := cdsPdvVL_DESC.AsFloat;
//      DM.cdsNotaFiscalID_LOJA.AsInteger         := DM.cdsEmpresaID_LOJA.AsInteger;
//      DM.cdsNotaFiscalR_SOCIAL_EMPRESA.AsString := cdsPDVLOJA.AsString;
     // if DM.cdsNotaFiscalTP_CLIENTE.AsInteger = 0 then
     //   LBLTPPESSOA.Caption :='Pessoa Jur�dica'
     // else
     //   LBLTPPESSOA.Caption :='Pessoa F�sica';

     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexName :='';
     DM.cdsDinamica.CommandText := ' SELECT PP.ID_PLANO_PAGAMENTO FROM TB_PAGAMENTO_PDV PP '+
                                   ' WHERE PP.ID_PDV = '+CDSPDVID_PDV.AsString;
     DM.cdsDinamica.Open;
     DM.cdsNotaFiscalID_TIPO_PAGAMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger;
     DM.cdsNotaFiscalDESCRICAO_PAGAMENTO.AsString := DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString;
     DM.cdsDinamica.Close;

    DBEdit3.SetFocus;
  end;

end;

procedure TfrmNotaFiscalEletronica.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsCfop.Open;

   if Pesquisa(DM.cdsCfop,['CFCOD','CFNOME'],
    ['',''],[10,40],'','0','','','CFOP','CFOP') Then
   Begin
      DM.cdsNotaFiscalCFOP.AsString        := DM.cdsCfopCFCOD.AsString;
      DM.cdsNotaFiscalID_CFOP.AsInteger    := DM.cdsCfopCFCOD.AsInteger;
      DM.cdsNotaFiscalDESC_CFOP.AsString   := DM.cdsCfopCFNOME.AsString;
      DBEdit14.SetFocus;
   end;
   DM.cdsCfop.Close;

end;

procedure TfrmNotaFiscalEletronica.SpeedButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmNotaFiscalEletronica.SB_CLIENTEClick(Sender: TObject);
begin
  DM.cdsCliente.Close;
  DM.cdsCliente.Open;
  if Pesquisa(DM.cdsCliente,['R_SOCIAL','FANTASIA','CNPJ_CPF'],
   ['','',''],[20,20,18],'','0','','','R_SOCIAL','FANTASIA') Then
  Begin
    DM.cdsNotaFiscalID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
    DM.cdsNotaFiscalR_SOCIAL.AsString    := DM.cdsClienteR_SOCIAL.AsString;
    DM.cdsNotaFiscalCNPJ_CPF.AsString    := DM.cdsClienteCNPJ_CPF.AsString;
    DM.cdsNotaFiscalINSC_RG.AsString     := DM.cdsClienteINSC_RG.AsString;
    DM.cdsNotaFiscalENDERECO.AsString    := DM.cdsClienteENDERECO.AsString;
    DM.cdsNotaFiscalNUMERO.AsString      := DM.cdsClienteNUMERO.AsString;
    DM.cdsNotaFiscalBAIRRO.AsString      := DM.cdsClienteBAIRRO.AsString;
    DM.cdsNotaFiscalCODIGO_MUNIC.AsString:= DM.cdsClienteCODIGO_MUNIC.AsString;
    DM.cdsNotaFiscalCIDADE.AsString      := DM.cdsClienteCIDADE.AsString;
    DM.cdsNotaFiscalUF.AsString          := DM.cdsClienteUF.AsString;
    DM.cdsNotaFiscalCEP.AsString         := DM.cdsClienteCEP.AsString;
    DBEdit3.SetFocus;
  end;
    DM.cdsCliente.Close;
end;

end.


