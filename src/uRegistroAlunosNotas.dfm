object fRegistroAlunosNotas: TfRegistroAlunosNotas
  Left = 0
  Top = 0
  Caption = 'Registro de Alunos e Notas '
  ClientHeight = 646
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 209
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 513
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 139
      Height = 24
      Caption = 'Nome Do Aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 51
      Height = 24
      Caption = 'Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 87
      Width = 38
      Height = 13
      Caption = 'Nota 01'
    end
    object Label4: TLabel
      Left = 8
      Top = 119
      Width = 38
      Height = 13
      Caption = 'Nota 02'
    end
    object Label5: TLabel
      Left = 289
      Top = 84
      Width = 38
      Height = 13
      Caption = 'Nota 03'
    end
    object Label6: TLabel
      Left = 289
      Top = 119
      Width = 38
      Height = 13
      Caption = 'Nota 04'
    end
    object edtNomeAluno: TEdit
      Left = 8
      Top = 30
      Width = 473
      Height = 21
      TabOrder = 0
      TextHint = 'Digite o nome do aluno'
    end
    object edtNota01: TEdit
      Left = 58
      Top = 84
      Width = 137
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      Text = '0'
      TextHint = '0'
    end
    object edtNota02: TEdit
      Left = 58
      Top = 116
      Width = 137
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '0'
      TextHint = '0'
    end
    object edtNota03: TEdit
      Left = 344
      Top = 81
      Width = 137
      Height = 21
      NumbersOnly = True
      TabOrder = 3
      Text = '0'
      TextHint = '0'
    end
    object edtNota04: TEdit
      Left = 344
      Top = 116
      Width = 137
      Height = 21
      NumbersOnly = True
      TabOrder = 4
      Text = '0'
      TextHint = '0'
    end
  end
  object btnRegistrarAlunoNotas: TButton
    Left = 8
    Top = 168
    Width = 187
    Height = 25
    Caption = 'Registrar'
    TabOrder = 1
    OnClick = btnRegistrarAlunoNotasClick
  end
  object btnImprimirNotasAlunos: TButton
    Left = 289
    Top = 168
    Width = 192
    Height = 25
    Caption = 'Imprimir Notas'
    TabOrder = 2
    OnClick = btnImprimirNotasAlunosClick
  end
  object mmoRegistroAlunosNotas: TMemo
    Left = 0
    Top = 205
    Width = 498
    Height = 444
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
