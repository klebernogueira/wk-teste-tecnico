object DataModuleBD: TDataModuleBD
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConexao: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'ConnectionDef=WKPessoas')
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\kleber\Documents\Embarcadero\Studio\Projects\CadastroCl' +
      'ientePG\Win32\Debug'
    Left = 24
    Top = 64
  end
end
