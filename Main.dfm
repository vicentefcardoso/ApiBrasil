object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'API Brasil'
  ClientHeight = 716
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  TextHeight = 17
  object LblCEP: TLabel
    Left = 12
    Top = 75
    Width = 117
    Height = 17
    Caption = 'CEP (Informe o CEP)'
  end
  object lblCNPJ: TLabel
    Left = 8
    Top = 163
    Width = 131
    Height = 17
    Caption = 'CNPJ (Informe o CNPJ)'
  end
  object lblDDD: TLabel
    Left = 8
    Top = 251
    Width = 140
    Height = 17
    Caption = 'DDD (Informe o Prefixo)'
  end
  object lblFeriados: TLabel
    Left = 8
    Top = 339
    Width = 146
    Height = 17
    Caption = 'Feriados (Informe o Ano)'
  end
  object lblNCM: TLabel
    Left = 8
    Top = 427
    Width = 133
    Height = 17
    Caption = 'NCM (Informe o NCM)'
  end
  object lblRegistroBR: TLabel
    Left = 8
    Top = 515
    Width = 187
    Height = 17
    Caption = 'Registro.br (Informe o Dom'#237'nio)'
  end
  object img: TImage
    Left = 8
    Top = 8
    Width = 317
    Height = 61
    Center = True
    Proportional = True
  end
  object lblEstado: TLabel
    Left = 8
    Top = 613
    Width = 179
    Height = 17
    Caption = 'Cidades (Informe o Estado UF)'
  end
  object EdtCep: TEdit
    Left = 12
    Top = 98
    Width = 313
    Height = 25
    TabOrder = 0
    OnExit = EdtCepExit
  end
  object BtnBuscaCepV1: TButton
    Left = 12
    Top = 127
    Width = 157
    Height = 33
    Caption = 'Buscar CEP V1'
    TabOrder = 1
    OnClick = BtnBuscaCepV1Click
  end
  object GrpResposta: TGroupBox
    AlignWithMargins = True
    Left = 335
    Top = 3
    Width = 732
    Height = 710
    Align = alRight
    Caption = 'Resposta JSON'
    TabOrder = 2
    object MemJSON: TMemo
      Left = 2
      Top = 19
      Width = 728
      Height = 689
      Align = alClient
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object BtnBuscaCepV2: TButton
    Left = 168
    Top = 127
    Width = 157
    Height = 33
    Caption = 'Buscar CEP V2'
    TabOrder = 3
    OnClick = BtnBuscaCepV2Click
  end
  object EdtCNPJ: TEdit
    Left = 8
    Top = 185
    Width = 313
    Height = 25
    TabOrder = 4
    OnExit = EdtCNPJExit
  end
  object BtnBuscaCNPJ: TButton
    Left = 8
    Top = 215
    Width = 313
    Height = 33
    Caption = 'Buscar CNPJ'
    TabOrder = 5
    OnClick = BtnBuscaCNPJClick
  end
  object EdtDDD: TEdit
    Left = 8
    Top = 274
    Width = 313
    Height = 25
    TabOrder = 6
    OnExit = EdtDDDExit
  end
  object BtnBuscarDDD: TButton
    Left = 8
    Top = 303
    Width = 313
    Height = 33
    Caption = 'Buscar DDD'
    TabOrder = 7
    OnClick = BtnBuscarDDDClick
  end
  object EdtFeriadoANO: TEdit
    Left = 8
    Top = 362
    Width = 313
    Height = 25
    TabOrder = 8
    OnExit = EdtFeriadoANOExit
  end
  object BtnBuscarFeriados: TButton
    Left = 8
    Top = 391
    Width = 313
    Height = 33
    Caption = 'Buscar Feriados'
    TabOrder = 9
    OnClick = BtnBuscarFeriadosClick
  end
  object EdtNCM: TEdit
    Left = 8
    Top = 450
    Width = 313
    Height = 25
    TabOrder = 10
    OnExit = EdtNCMExit
  end
  object BtnBuscarNCM: TButton
    Left = 8
    Top = 479
    Width = 313
    Height = 33
    Caption = 'Buscar NCM'
    TabOrder = 11
    OnClick = BtnBuscarNCMClick
  end
  object EdtRegistroBr: TEdit
    Left = 8
    Top = 538
    Width = 313
    Height = 25
    CharCase = ecLowerCase
    TabOrder = 12
  end
  object BtnBuscarRegistroBr: TButton
    Left = 8
    Top = 567
    Width = 313
    Height = 33
    Caption = 'Buscar Registro.br'
    TabOrder = 13
    OnClick = BtnBuscarRegistroBrClick
  end
  object BtnCidades: TButton
    Left = 8
    Top = 664
    Width = 313
    Height = 33
    Caption = 'Buscar Cidades'
    TabOrder = 14
    OnClick = BtnCidadesClick
  end
  object EdtEstado: TEdit
    Left = 8
    Top = 636
    Width = 313
    Height = 25
    CharCase = ecUpperCase
    TabOrder = 15
  end
end
