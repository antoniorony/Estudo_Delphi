object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Relacionais'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'A'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Vote 20'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Maioral'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 416
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Desafio 01'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 520
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Bem Vindo'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 624
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Par ou '#205'mpar'
    TabOrder = 6
    OnClick = Button7Click
  end
  object cmbSelecaoEstado: TComboBox
    Left = 890
    Top = 376
    Width = 145
    Height = 21
    TabOrder = 7
    OnChange = cmbSelecaoEstadoChange
    Items.Strings = (
      'AP'
      'AM'
      'CE'
      'RJ'
      'PE')
  end
end
