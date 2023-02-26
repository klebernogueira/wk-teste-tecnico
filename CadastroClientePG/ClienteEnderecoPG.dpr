program ClienteEnderecoPG;

uses
  Vcl.Forms,
  uFormMain in 'View\uFormMain.pas' {FormMain},
  uFormMensagem in 'View\uFormMensagem.pas' {FormMensagem},
  ClientesController in 'Controller\ClientesController.pas',
  ClientesModel in 'Model\ClientesModel.pas',
  CEPModel in 'Model\CEPModel.pas' {$R *.res},
  uRestAPI in 'Classes\uRestAPI.pas',
  EnderecosModel in 'View\EnderecosModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
