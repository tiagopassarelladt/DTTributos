object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demo - Motor Tributario'
  ClientHeight = 428
  ClientWidth = 821
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
    Left = 16
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Total Produtos'
  end
  object Label2: TLabel
    Left = 16
    Top = 83
    Width = 41
    Height = 13
    Caption = 'Despesa'
  end
  object Label3: TLabel
    Left = 111
    Top = 83
    Width = 24
    Height = 13
    Caption = 'frete'
  end
  object Label4: TLabel
    Left = 206
    Top = 83
    Width = 44
    Height = 13
    Caption = 'desconto'
  end
  object Label5: TLabel
    Left = 302
    Top = 83
    Width = 76
    Height = 13
    Caption = 'Aliquota Origem'
  end
  object Label7: TLabel
    Left = 397
    Top = 83
    Width = 48
    Height = 13
    Caption = 'Base Icms'
  end
  object Label8: TLabel
    Left = 492
    Top = 83
    Width = 36
    Height = 13
    Caption = '% Icms'
  end
  object Label9: TLabel
    Left = 553
    Top = 83
    Width = 56
    Height = 13
    Caption = '% Reducao'
  end
  object Label10: TLabel
    Left = 625
    Top = 83
    Width = 49
    Height = 13
    Caption = 'Valor Icms'
  end
  object Label11: TLabel
    Left = 111
    Top = 8
    Width = 42
    Height = 13
    Caption = 'CST icms'
  end
  object Label6: TLabel
    Left = 16
    Top = 163
    Width = 63
    Height = 13
    Caption = 'Base Icms ST'
  end
  object Label12: TLabel
    Left = 111
    Top = 163
    Width = 54
    Height = 13
    Caption = 'Aliquota ST'
  end
  object Label13: TLabel
    Left = 206
    Top = 163
    Width = 20
    Height = 13
    Caption = 'Mva'
  end
  object Label15: TLabel
    Left = 397
    Top = 163
    Width = 64
    Height = 13
    Caption = 'Valor Icms ST'
  end
  object Label14: TLabel
    Left = 624
    Top = 369
    Width = 112
    Height = 13
    Caption = 'Valor total da opera'#231#227'o'
  end
  object Label16: TLabel
    Left = 111
    Top = 242
    Width = 41
    Height = 13
    Caption = 'Valor IPI'
  end
  object Label17: TLabel
    Left = 16
    Top = 242
    Width = 56
    Height = 13
    Caption = 'Aliquota IPI'
  end
  object Label18: TLabel
    Left = 206
    Top = 8
    Width = 57
    Height = 13
    Caption = 'Tipo Pessoa'
  end
  object Label19: TLabel
    Left = 302
    Top = 163
    Width = 66
    Height = 13
    Caption = 'Mva Ajustado'
  end
  object Label20: TLabel
    Left = 397
    Top = 242
    Width = 55
    Height = 13
    Caption = 'Aliquota Pis'
  end
  object Label21: TLabel
    Left = 302
    Top = 242
    Width = 79
    Height = 13
    Caption = 'Base Pis / Cofins'
  end
  object Label22: TLabel
    Left = 587
    Top = 242
    Width = 72
    Height = 13
    Caption = 'Aliquota Cofins'
  end
  object Label23: TLabel
    Left = 492
    Top = 242
    Width = 40
    Height = 13
    Caption = 'Valor Pis'
  end
  object Label24: TLabel
    Left = 682
    Top = 242
    Width = 57
    Height = 13
    Caption = 'Valor Cofins'
  end
  object Label25: TLabel
    Left = 111
    Top = 318
    Width = 56
    Height = 13
    Caption = 'Valor DIFAL'
  end
  object Label26: TLabel
    Left = 16
    Top = 318
    Width = 49
    Height = 13
    Caption = 'Aliq DIFAL'
  end
  object Label27: TLabel
    Left = 397
    Top = 318
    Width = 46
    Height = 13
    Caption = 'Valor FCP'
  end
  object Label28: TLabel
    Left = 302
    Top = 318
    Width = 39
    Height = 13
    Caption = 'Aliq FCP'
  end
  object Label29: TLabel
    Left = 587
    Top = 318
    Width = 68
    Height = 13
    Caption = 'Valor FCP - ST'
  end
  object Label30: TLabel
    Left = 492
    Top = 318
    Width = 61
    Height = 13
    Caption = 'Aliq FCP - ST'
  end
  object edtTotalProdutos: TJvCalcEdit
    Left = 16
    Top = 24
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 0
    Value = 100.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtDespesa: TJvCalcEdit
    Left = 16
    Top = 99
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
  end
  object edtfrete: TJvCalcEdit
    Left = 111
    Top = 99
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
  end
  object edtDesconto: TJvCalcEdit
    Left = 206
    Top = 99
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqOrigem: TJvCalcEdit
    Left = 302
    Top = 99
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 4
    Value = 18.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtBaseIcms: TJvCalcEdit
    Left = 397
    Top = 99
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqIcms: TJvCalcEdit
    Left = 492
    Top = 99
    Width = 55
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 6
    Value = 18.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqReducao: TJvCalcEdit
    Left = 553
    Top = 99
    Width = 66
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
  end
  object edtValorIcms: TJvCalcEdit
    Left = 625
    Top = 99
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
  end
  object Panel1: TPanel
    Left = 16
    Top = 51
    Width = 792
    Height = 25
    BevelOuter = bvNone
    Caption = 'Valores Ref ao ICMS'
    Color = 15524797
    ParentBackground = False
    TabOrder = 9
  end
  object edtCST: TEdit
    Left = 111
    Top = 24
    Width = 89
    Height = 21
    Alignment = taCenter
    TabOrder = 10
    Text = '000'
  end
  object Button1: TButton
    Left = 723
    Top = 8
    Width = 88
    Height = 26
    Cursor = crHandPoint
    Caption = 'Calcular'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 16
    Top = 131
    Width = 792
    Height = 25
    BevelOuter = bvNone
    Caption = 'Valores Ref. a ST'
    Color = 15524797
    ParentBackground = False
    TabOrder = 12
  end
  object edtBIcmsST: TJvCalcEdit
    Left = 16
    Top = 179
    Width = 89
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 13
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqST: TJvCalcEdit
    Left = 111
    Top = 179
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 14
    DecimalPlacesAlwaysShown = False
  end
  object edtMVa: TJvCalcEdit
    Left = 206
    Top = 179
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 15
    Value = 50.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtValorST: TJvCalcEdit
    Left = 397
    Top = 179
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 16
    DecimalPlacesAlwaysShown = False
  end
  object edtTotal: TJvCalcEdit
    Left = 624
    Top = 385
    Width = 184
    Height = 31
    DisplayFormat = '#,##0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShowButton = False
    TabOrder = 17
    DecimalPlacesAlwaysShown = False
  end
  object edtValorIPI: TJvCalcEdit
    Left = 111
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 18
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqIPI: TJvCalcEdit
    Left = 16
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 19
    Value = 4.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object Panel3: TPanel
    Left = 16
    Top = 209
    Width = 279
    Height = 25
    BevelOuter = bvNone
    Caption = 'Valores Ref. ao IPI'
    Color = 15524797
    ParentBackground = False
    TabOrder = 20
  end
  object Panel4: TPanel
    Left = 16
    Top = 288
    Width = 279
    Height = 25
    BevelOuter = bvNone
    Caption = 'Valores Ref. ao DIFAL'
    Color = 15524797
    ParentBackground = False
    TabOrder = 21
  end
  object ComboBox1: TComboBox
    Left = 206
    Top = 24
    Width = 145
    Height = 22
    Cursor = crHandPoint
    Style = csOwnerDrawFixed
    Color = clInfoBk
    ItemIndex = 0
    TabOrder = 22
    Text = '1 - Fisica'
    StyleElements = [seBorder]
    Items.Strings = (
      '1 - Fisica'
      '2 - Juridica')
  end
  object edtMvaAjustado: TJvCalcEdit
    Left = 302
    Top = 179
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 23
    Value = 50.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object CheckBox1: TCheckBox
    Left = 361
    Top = 26
    Width = 169
    Height = 17
    Cursor = crHandPoint
    Caption = 'Calculo para venda de Ve'#237'culo'
    TabOrder = 24
  end
  object Panel5: TPanel
    Left = 302
    Top = 209
    Width = 506
    Height = 25
    BevelOuter = bvNone
    Caption = 'Valores Ref. ao Pis / Cofins'
    Color = 15524797
    ParentBackground = False
    TabOrder = 25
  end
  object edtAliqPis: TJvCalcEdit
    Left = 397
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 26
    Value = 0.650000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtBasePiscofins: TJvCalcEdit
    Left = 302
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 27
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqCofins: TJvCalcEdit
    Left = 587
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 28
    Value = 3.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtValorPis: TJvCalcEdit
    Left = 492
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 29
    DecimalPlacesAlwaysShown = False
  end
  object edtValorCofins: TJvCalcEdit
    Left = 682
    Top = 258
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 30
    DecimalPlacesAlwaysShown = False
  end
  object edtValorDIFAL: TJvCalcEdit
    Left = 111
    Top = 334
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 31
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqDIFAL: TJvCalcEdit
    Left = 16
    Top = 334
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 32
    DecimalPlacesAlwaysShown = False
  end
  object Panel6: TPanel
    Left = 302
    Top = 288
    Width = 506
    Height = 25
    BevelOuter = bvNone
    Caption = 'Valores Ref. ao FCP'
    Color = 15524797
    ParentBackground = False
    TabOrder = 33
  end
  object edtValorFCP: TJvCalcEdit
    Left = 397
    Top = 334
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 34
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqFCP: TJvCalcEdit
    Left = 302
    Top = 334
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 35
    Value = 2.000000000000000000
    DecimalPlacesAlwaysShown = False
  end
  object edtValorFCPST: TJvCalcEdit
    Left = 587
    Top = 334
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 36
    DecimalPlacesAlwaysShown = False
  end
  object edtAliqFCPST: TJvCalcEdit
    Left = 492
    Top = 334
    Width = 89
    Height = 21
    DisplayFormat = '#,##0.00'
    ShowButton = False
    TabOrder = 37
    DecimalPlacesAlwaysShown = False
  end
  object JvDBGrid1: TJvDBGrid
    Left = 16
    Top = 374
    Width = 135
    Height = 42
    TabOrder = 38
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object CheckBox2: TCheckBox
    Left = 536
    Top = 26
    Width = 97
    Height = 17
    Cursor = crHandPoint
    Caption = 'Calcula DIFAL'
    TabOrder = 39
  end
  object DTTributo1: TDTTributo
    CST = pi000
    ModalidadeST = tmValorOperacao
    TipoClienteForn = pCFisica
    TipoNF = tpCSaida
    CstPisCofins = Ppis01
    AbaterIcmsDaBasePisCofins = False
    HabilitaDIFAL = False
    Left = 240
    Top = 352
  end
end
