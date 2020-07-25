object Form14: TForm14
  Left = 298
  Top = 164
  Width = 876
  Height = 460
  Caption = 'Historial de venta'
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 56
    Width = 124
    Height = 16
    Caption = 'Codigo de facturacion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 704
    Top = 56
    Width = 39
    Height = 16
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 352
    Top = 16
    Width = 172
    Height = 25
    Caption = 'Historial de ventas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 296
    Top = 56
    Width = 30
    Height = 13
    Caption = 'Desde'
  end
  object lbl5: TLabel
    Left = 464
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 128
    Width = 753
    Height = 233
    DataSource = ds1
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt1: TEdit
    Left = 112
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = edt1Change
  end
  object edt3: TEdit
    Left = 680
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = edt3Change
  end
  object btn1: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Volver'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 784
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = btn2Click
  end
  object dtp1: TDateTimePicker
    Left = 240
    Top = 72
    Width = 186
    Height = 21
    Date = 42881.410291701390000000
    Time = 42881.410291701390000000
    TabOrder = 5
  end
  object dtp2: TDateTimePicker
    Left = 424
    Top = 72
    Width = 186
    Height = 21
    Date = 42881.410354247690000000
    Time = 42881.410354247690000000
    TabOrder = 6
  end
  object btn3: TButton
    Left = 392
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Caption = 'btn4'
    TabOrder = 8
    OnClick = btn4Click
  end
  object tbl1: TADOTable
    Connection = Form2.con1
    CursorType = ctStatic
    TableName = 'Historial_de_venta'
    Left = 48
    Top = 16
    object wdstrngfldtbl1Codigo_de_Facturacion: TWideStringField
      FieldName = 'Codigo_de_Facturacion'
      Size = 25
    end
    object wdstrngfldtbl1Descripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object fltfldtbl1Cantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object fltfldtbl1Precio: TFloatField
      FieldName = 'Precio'
    end
    object fltfldtbl1total: TFloatField
      FieldName = 'total'
    end
    object wdstrngfldtbl1Cliente: TWideStringField
      FieldName = 'Cliente'
      Size = 25
    end
    object wdstrngfldtbl1Fecha: TWideStringField
      FieldName = 'Fecha'
      Size = 25
    end
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 88
    Top = 24
  end
  object con1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Enrique Te' +
      'rrero\Desktop\sistema de empresa de programacion\SISTEMADEBASEDE' +
      'DATOS.mdb;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 160
    Top = 16
  end
end
