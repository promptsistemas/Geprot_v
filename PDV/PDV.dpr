program PDV;

uses
  Vcl.Forms,
  U_LIB in 'Forms\U_LIB.pas',
  uCadCliente in 'Forms\uCadCliente.pas' {frmCadCliente},
  uCadEmpresa in 'Forms\uCadEmpresa.pas' {frmCadEmpresa},
  uCadFor in 'Forms\uCadFor.pas' {frmCadfor},
  uConsultaCNPJ in 'Forms\uConsultaCNPJ.pas' {frmConsultaCNPJ},
  uConsultaCPF in 'Forms\uConsultaCPF.pas' {frmConsultaCPF},
  UD_PESQUISA in 'Forms\UD_PESQUISA.pas' {FD_PESQUISA},
  uDesconto in 'Forms\uDesconto.pas' {frmDesconto},
  uDM in 'Forms\uDM.pas' {DM: TDataModule},
  uFrmAberturaCaixa in 'Forms\uFrmAberturaCaixa.pas' {frmAberturaCaixa},
  uMenuCaixa in 'Forms\uMenuCaixa.pas' {frmMenuCaixa},
  uPagamentoPdv in 'Forms\uPagamentoPdv.pas' {frmPagamentoPdv},
  uPdv in 'Forms\uPdv.pas' {frmPdv},
  uPreviaFechamentoCaixa in 'Forms\uPreviaFechamentoCaixa.pas' {frmPreviaFechamentoCaixa},
  uReabrirCaixa in 'Forms\uReabrirCaixa.pas' {frmReaberturaCaixa},
  uSangria in 'Forms\uSangria.pas' {frmSangria},
  uSenha in 'Forms\uSenha.pas' {frmSenha},
  uSuprimento in 'Forms\uSuprimento.pas' {frmSuprimento},
  uReativarVendas in 'Forms\uReativarVendas.pas' {frmReativarVendas},
  uReimpressaoOrcamento in 'Forms\uReimpressaoOrcamento.pas' {frmReimpressaoOrcamento},
  uConfigParamentros in 'Forms\uConfigParamentros.pas' {frmConfigParametros},
  uNFCe in 'Forms\uNFCe.pas' {frmNFCe},
  uRecebimentoComanda in 'Forms\uRecebimentoComanda.pas' {frmRecebeComanda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPdv, frmPdv);
  Application.CreateForm(TfrmNFCe, frmNFCe);
  Application.CreateForm(TfrmConsultaCNPJ, frmConsultaCNPJ);
  Application.CreateForm(TfrmConsultaCPF, frmConsultaCPF);
  Application.CreateForm(TFD_PESQUISA, FD_PESQUISA);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmAberturaCaixa, frmAberturaCaixa);
  Application.CreateForm(TfrmDesconto, frmDesconto);
  Application.Run;
end.
