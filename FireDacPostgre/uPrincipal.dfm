object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 398
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 256
    Top = 112
    Width = 121
    Height = 65
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 168
    Top = 256
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 256
    Top = 208
    Width = 121
    Height = 25
    Caption = 'Abrir tabela'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG')
    LoginPrompt = False
    Left = 96
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 192
    Top = 296
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 192
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 264
    Top = 296
  end
end
