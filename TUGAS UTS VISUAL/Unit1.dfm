object Form1: TForm1
  Left = 310
  Top = 227
  Width = 509
  Height = 421
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object Label3: TLabel
    Left = 56
    Top = 320
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 56
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 112
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 112
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 112
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 168
    Width = 392
    Height = 120
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 152
    Top = 320
    Width = 297
    Height = 21
    TabOrder = 7
  end
end
