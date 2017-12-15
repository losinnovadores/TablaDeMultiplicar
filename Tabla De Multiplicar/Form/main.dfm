object mainform: Tmainform
  Left = 423
  Top = 126
  Caption = 'INNOVADORES (Proyecto Final)'
  ClientHeight = 421
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object ListBox1: TListBox
    Left = 0
    Top = 80
    Width = 338
    Height = 341
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ItemHeight = 15
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 4
      Width = 102
      Height = 15
      Caption = 'Valor A Multiplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 134
      Top = 4
      Width = 73
      Height = 15
      Caption = 'Multiplicador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 3
      Top = 20
      Width = 121
      Height = 23
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 134
      Top = 20
      Width = 121
      Height = 23
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object calcular: TButton
      Left = 258
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 2
      OnClick = calcularClick
    end
    object limpiar: TButton
      Left = 258
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 3
      OnClick = limpiarClick
    end
    object salir: TButton
      Left = 258
      Top = 52
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 4
      OnClick = salirClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 216
    object MatriculasIntegrantes1: TMenuItem
      Caption = 'Matriculas Integrantes'
      OnClick = MatriculasIntegrantes1Click
    end
  end
end
