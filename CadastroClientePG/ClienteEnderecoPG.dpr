program ClienteEnderecoPG;

uses
  Vcl.Forms,
  uFormMain in 'View\uFormMain.pas' {FormMain},
  uFormMensagem in 'View\uFormMensagem.pas' {FormMensagem},
  ClientesController in 'Controller\ClientesController.pas' {$R *.res},
  ClientesModel in 'Model\ClientesModel.pas' {$R *.res},
  CEPModel in 'Model\CEPModel.pas' {$R *.res},
  uRestAPI in 'Classes\uRestAPI.pas' {$R *.res},
  EnderecosModel in 'View\EnderecosModel.pas' {$R *.res},
  ClientesDAO in 'DAO\ClientesDAO.pas' {$R *.res},
  uDM in 'DAO\uDM.pas' {DataModuleBD: TDataModule},
  CEPDAO in 'DAO\CEPDAO.pas',
  CEPController in 'Controller\CEPController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
