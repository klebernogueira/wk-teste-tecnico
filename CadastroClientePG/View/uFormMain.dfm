object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormMain'
  ClientHeight = 211
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
    Top = 39
    Width = 54
    Height = 13
    Caption = 'Documento'
  end
  object LabelNatureza: TLabel
    Left = 8
    Top = 9
    Width = 44
    Height = 13
    Caption = 'Natureza'
  end
  object LabelPrimeiroNome: TLabel
    Left = 8
    Top = 70
    Width = 68
    Height = 13
    Caption = 'Primeiro Nome'
  end
  object LabelSobreNome: TLabel
    Left = 8
    Top = 100
    Width = 55
    Height = 13
    Caption = 'SobreNome'
  end
  object LabelCEP: TLabel
    Left = 8
    Top = 132
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object ButtonImportar: TButton
    Left = 364
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 4
    OnClick = ButtonImportarClick
  end
  object EditDocumento: TEdit
    Left = 79
    Top = 36
    Width = 141
    Height = 21
    TabOrder = 1
  end
  object EditNatureza: TEdit
    Left = 79
    Top = 6
    Width = 34
    Height = 21
    TabOrder = 0
    OnKeyUp = EditNaturezaKeyUp
  end
  object EditPrimeiroNome: TEdit
    Left = 79
    Top = 67
    Width = 360
    Height = 21
    TabOrder = 2
  end
  object EditSobreNome: TEdit
    Left = 79
    Top = 97
    Width = 360
    Height = 21
    TabOrder = 3
  end
  object ButtonInserir: TButton
    Left = 8
    Top = 168
    Width = 55
    Height = 25
    Caption = 'Inserir'
    TabOrder = 5
    OnClick = ButtonImportarClick
  end
  object EditCEP: TEdit
    Left = 79
    Top = 129
    Width = 82
    Height = 21
    TabOrder = 6
  end
end
