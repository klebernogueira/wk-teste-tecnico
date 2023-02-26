unit ClientesController;

interface
uses
   Classes, System.Generics.Collections, SysUtils,
   System.Character, ClientesModel;

type
   TClientesController = class
      private
         FTClientesDadosInvalidos: TObjectList<TClientesModel>;
         FMensagemErro: string;

         function IsLetrasNumeros(sTexto: string): boolean;
         function LetrasNumeros(const sTexto: string): string;
         function ValidarClienteInsert(oClientesModel: TClientesModel): boolean;
      public
         // atributos
         property TClientesDadosInvalidos: TObjectList<TClientesModel>
            read FTClientesDadosInvalidos;
         property MensagemErro: string
            read FMensagemErro
            write FMensagemErro;

         // metodos
         function Insert(
               const oClientesModel: TClientesModel):
            boolean;
         function InsertLote(
               olstClientesModel: TObjectList<TClientesModel>):
            boolean;
   end;

implementation

function TClientesController.IsLetrasNumeros(sTexto: string): boolean;
begin
   Result := false;

   sTexto := sTexto.Trim();
   if (sTexto <> '') then begin
      Result :=
         sTexto = LetrasNumeros(sTexto);

   end;

end;

function TClientesController.LetrasNumeros(const sTexto: string): string;
var
  iLetter: Integer;
begin
   Result := sTexto.Trim();
   if (Result <> '') then begin
      for iLetter := 1 to sTexto.Length do begin
         if (not sTexto[iLetter].IsLetterOrDigit()) then begin
            Result := Result.Replace(sTexto[iLetter], '');

         end;

      end;

   end;

end;

function TClientesController.ValidarClienteInsert(
      oClientesModel: TClientesModel):
   boolean;
var
   oListErros : TStringList;
begin
   Result := false;
   if (oClientesModel = nil) then
      FMensagemErro :=
         'Não Informado o Cliente para Cadastro'

   else begin
      oListErros := TStringList.Create();

      oClientesModel.Documento :=
         oClientesModel.Documento.Trim();
      oClientesModel.PrimeiroNome :=
         oClientesModel.PrimeiroNome.Trim();
      oClientesModel.SobreNome :=
         oClientesModel.SobreNome.Trim();

      if (not (oClientesModel.Natureza in [1..99])) then begin
         oListErros.Add(
            'Natureza deve Conter um Número de 1 a 99'
         );

      end;
      if (
            (not (IsLetrasNumeros(oClientesModel.Documento))) or
            (Length(oClientesModel.Documento) > 20)
         ) then begin
         oListErros.Add(
            'Documento Tamanho Máximo 20 Caracteres (Letras e Números)'
         );

      end;
      if (not (Length(oClientesModel.PrimeiroNome) in [5..100])) then begin
         oListErros.Add(
            'Primeiro Nome Tamanho de 5 a 100 Caracteres'
         );

      end;
      if (not (Length(oClientesModel.SobreNome) in [5..100])) then begin
         oListErros.Add(
            'SobreNome Tamanho de 5 a 100 Caracteres'
         );

      end;
      if (
            (not (IsLetrasNumeros(oClientesModel.CEP))) or
            (Length(oClientesModel.CEP) <> 8)
         ) then begin
         oListErros.Add(
            'CEP Tamanho de 8 Caracteres Numéricos'
         );

      end;

      if ((oListErros <> nil) and (oListErros.Count > 0)) then begin
         oClientesModel.MensagemErro := oListErros;
         if (FTClientesDadosInvalidos = nil) then
            FTClientesDadosInvalidos := TObjectList<TClientesModel>.Create();
         FTClientesDadosInvalidos.Add(oClientesModel); // lista de clientes nao validados corretamente

      end;


   end;

end;

function TClientesController.Insert(const oClientesModel: TClientesModel): boolean;
begin
   Result := false;

   FMensagemErro := '';
   FTClientesDadosInvalidos := nil;
   if (not ValidarClienteInsert(oClientesModel)) then begin

      // enviar para model clientes

   end;

end;

function TClientesController.InsertLote(
      olstClientesModel: TObjectList<TClientesModel>):
   boolean;
var
  oListClientes: TObjectList<TClientesModel>;
  iItem: Integer;
begin
   Result := false;

   FMensagemErro := '';
   FTClientesDadosInvalidos := nil;
   if (
         (olstClientesModel = nil) or
         (olstClientesModel.Count < 1)
      ) then begin
      FMensagemErro :=
         'Cadastro em Lote deve conter no Mínimo 1 ' +
         'Cliente para Cadastrar';

   end
   else begin
      oListClientes := TObjectList<TClientesModel>.Create();
      for iItem := 0 to Pred(olstClientesModel.Count) do begin
         if (ValidarClienteInsert(olstClientesModel[iItem])) then begin
            oListClientes.Add(olstClientesModel[iItem]); // lista de envio em pacotes

         end;
         if (oListClientes.Count > 0) and
            (
               ((iItem > 0) and (iItem mod 20 = 0)) or
               (iItem = Pred(olstClientesModel.Count))
            ) then begin
            // enviar para model clientes
            FreeAndNil(oListClientes);
            oListClientes := TObjectList<TClientesModel>.Create();

         end;

      end;

   end;

end;

end.
