object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormMain'
  ClientHeight = 237
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDocumento: TLabel
    Left = 8
    Top = 74
    Width = 54
    Height = 13
    Caption = 'Documento'
  end
  object LabelNatureza: TLabel
    Left = 8
    Top = 44
    Width = 44
    Height = 13
    Caption = 'Natureza'
  end
  object LabelPrimeiroNome: TLabel
    Left = 8
    Top = 105
    Width = 68
    Height = 13
    Caption = 'Primeiro Nome'
  end
  object LabelSobreNome: TLabel
    Left = 8
    Top = 135
    Width = 55
    Height = 13
    Caption = 'SobreNome'
  end
  object LabelCEP: TLabel
    Left = 8
    Top = 167
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object LabelId: TLabel
    Left = 8
    Top = 13
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object ButtonImportar: TButton
    Left = 364
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 9
    OnClick = ButtonImportarClick
  end
  object EditDocumento: TEdit
    Left = 79
    Top = 71
    Width = 141
    Height = 21
    TabOrder = 2
  end
  object EditNatureza: TEdit
    Left = 79
    Top = 41
    Width = 34
    Height = 21
    TabOrder = 1
    OnKeyUp = EditNaturezaKeyUp
  end
  object EditPrimeiroNome: TEdit
    Left = 79
    Top = 102
    Width = 360
    Height = 21
    TabOrder = 3
  end
  object EditSobreNome: TEdit
    Left = 79
    Top = 132
    Width = 360
    Height = 21
    TabOrder = 4
  end
  object ButtonInserir: TButton
    Left = 8
    Top = 206
    Width = 55
    Height = 25
    Caption = 'Inserir'
    TabOrder = 6
    OnClick = ButtonImportarClick
  end
  object EditCEP: TEdit
    Left = 79
    Top = 164
    Width = 82
    Height = 21
    TabOrder = 5
  end
  object EditId: TEdit
    Left = 79
    Top = 10
    Width = 141
    Height = 21
    TabOrder = 0
    OnKeyUp = EditIdKeyUp
  end
  object ButtonDeletar: TButton
    Left = 136
    Top = 206
    Width = 55
    Height = 25
    Caption = 'Deletar'
    TabOrder = 8
    OnClick = ButtonDeletarClick
  end
  object ButtonAtualizar: TButton
    Left = 72
    Top = 206
    Width = 55
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 7
    OnClick = ButtonAtualizarClick
  end
end
