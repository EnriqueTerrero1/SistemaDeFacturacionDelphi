object Form16: TForm16
  Left = 318
  Top = 158
  Width = 692
  Height = 472
  Caption = 'Entrada de ordenes'
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
    Left = 16
    Top = 72
    Width = 31
    Height = 13
    Caption = 'codigo'
  end
  object lbl2: TLabel
    Left = 16
    Top = 112
    Width = 54
    Height = 13
    Caption = 'Descripcion'
    FocusControl = dbedtDescripcion
  end
  object lbl3: TLabel
    Left = 352
    Top = 72
    Width = 43
    Height = 13
    Caption = 'Cantidad'
    FocusControl = dbedtCantidad
  end
  object lbl4: TLabel
    Left = 16
    Top = 152
    Width = 27
    Height = 13
    Caption = 'fecha'
    FocusControl = dbedtfecha
  end
  object lbl5: TLabel
    Left = 352
    Top = 112
    Width = 69
    Height = 13
    Caption = 'precio al costo'
    FocusControl = dbedtprecio
  end
  object lbl6: TLabel
    Left = 280
    Top = 152
    Width = 80
    Height = 13
    Caption = 'Precio a la venta'
  end
  object lbl7: TLabel
    Left = 224
    Top = 16
    Width = 209
    Height = 29
    Caption = 'Entrada de ordenes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 192
    Width = 593
    Height = 185
    DataSource = ds2
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbedtDescripcion: TDBEdit
    Left = 16
    Top = 128
    Width = 329
    Height = 21
    DataField = 'Descripcion'
    DataSource = ds1
    Enabled = False
    TabOrder = 1
  end
  object dbedtCantidad: TDBEdit
    Left = 352
    Top = 88
    Width = 134
    Height = 21
    DataField = 'Cantidad'
    DataSource = ds1
    Enabled = False
    TabOrder = 2
  end
  object dbedtfecha: TDBEdit
    Left = 16
    Top = 168
    Width = 225
    Height = 21
    DataField = 'fecha'
    DataSource = ds1
    Enabled = False
    TabOrder = 3
  end
  object dbedtprecio: TDBEdit
    Left = 352
    Top = 128
    Width = 134
    Height = 21
    DataField = 'precio'
    DataSource = ds1
    Enabled = False
    TabOrder = 4
    OnChange = dbedtprecioChange
  end
  object btn1: TButton
    Left = 600
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 600
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Agregar'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 600
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 600
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Guardar'
    TabOrder = 8
    OnClick = btn4Click
  end
  object edt1: TEdit
    Left = 256
    Top = 168
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object btn5: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 25
    Caption = 'volver'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 600
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 11
    OnClick = btn6Click
  end
  object edt2: TEdit
    Left = 16
    Top = 88
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 12
    OnChange = edt2Change
  end
  object btn7: TButton
    Left = 448
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 13
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 520
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Siguiente'
    TabOrder = 14
    OnClick = btn8Click
  end
  object tbl1: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = 'Orden_de_producto'
    object wdstrngfldtbl1codigo: TWideStringField
      FieldName = 'codigo'
      Size = 25
    end
    object wdstrngfldtbl1Descripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object fltfldtbl1Cantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object wdstrngfldtbl1fecha: TWideStringField
      FieldName = 'fecha'
      Size = 25
    end
    object fltfldtbl1precio: TFloatField
      FieldName = 'precio'
    end
  end
  object con1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Enrique Te' +
      'rrero\Desktop\sistema de empresa de programacion\SISTEMADEBASEDE' +
      'DATOS.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 448
    Top = 224
  end
  object ds2: TDataSource
    DataSet = tbl2
    Left = 88
  end
  object tbl2: TADOTable
    Connection = con1
    CursorType = ctStatic
    TableName = 'TABLA INVENTARIO'
    Left = 144
    Top = 8
    object atncfldtbl2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object wdstrngfldtbl2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object wdstrngfldtbl2DESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 45
    end
    object fltfldtbl2PRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object fltfldtbl2CANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object fltfldtbl2TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object wdstrngfldtbl2fotos: TWideStringField
      FieldName = 'fotos'
      Size = 100
    end
    object wdstrngfldtbl2Fecha_de_entrada: TWideStringField
      FieldName = 'Fecha_de_entrada'
      Size = 25
    end
  end
end
