unit uRegistroAlunosNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfRegistroAlunosNotas = class(TForm)
    Panel1: TPanel;
    edtNomeAluno: TEdit;
    Label1: TLabel;
    btnRegistrarAlunoNotas: TButton;
    btnImprimirNotasAlunos: TButton;
    Label2: TLabel;
    edtNota01: TEdit;
    edtNota02: TEdit;
    edtNota03: TEdit;
    edtNota04: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    mmoRegistroAlunosNotas: TMemo;
    procedure btnRegistrarAlunoNotasClick(Sender: TObject);
    procedure btnImprimirNotasAlunosClick(Sender: TObject);
  private
    { Private declarations }
    procedure ImprimirNotas;
    procedure AlimparCampos;
    function VerificarCampos: Boolean;
  public
    { Public declarations }
  end;

var
  fRegistroAlunosNotas: TfRegistroAlunosNotas;

implementation
{$R *.dfm}

type rgAluno = record
  index: Integer;
  nome: string[150];
  nota1: double;
  nota2: double;
  nota3: double;
  nota4: double;
end;

var
  aluno: array of rgAluno;
  iTamanhoVetor: Integer = 0;
  registroAluno: rgAluno;

// BTN Registrar Alunos e Notas
procedure TfRegistroAlunosNotas.btnImprimirNotasAlunosClick(Sender: TObject);
begin
  ImprimirNotas;
end;

procedure TfRegistroAlunosNotas.btnRegistrarAlunoNotasClick(Sender: TObject);
begin
  if VerificarCampos then
    begin
      {
        usando a estrutura with do
        para evitar o repetimendo do nome da variavel,
        uma vez que so quero os params dela
      }
      with registroAluno do
      begin
          index := Random(1000);
          nome  := edtNomeAluno.Text;
          nota1 := StrToFloat(edtNota01.Text);
          nota2 := StrToFloat(edtNota02.Text);
          nota3 := StrToFloat(edtNota03.Text);
          nota4 := StrToFloat(edtNota04.Text);

      end;
      inc(iTamanhoVetor);
      SetLength(aluno, iTamanhoVetor);
      aluno[iTamanhoVetor-1] := registroAluno;
      mmoRegistroAlunosNotas.Lines.Add(registroAluno.nome + ', gravado com sucesso.');
      AlimparCampos; // Function sem retorno para limpar os campos
    end
  else
    ShowMessage('Campo(s) não informado');
end;

// Procedure Imprimir notas
procedure TfRegistroAlunosNotas.ImprimirNotas;
var
  I: Integer;
  Media: Real;
begin
  mmoRegistroAlunosNotas.Lines.Clear;
  for I := Low(aluno) to High(aluno) do
    begin
      media := (aluno[i].nota1 + aluno[i].nota2 + aluno[i].nota3 + aluno[i].nota4) / 4;

      with mmoRegistroAlunosNotas do
      begin
        Lines.Add('Registro Nro.: ' + aluno[i].index.ToString);
        Lines.Add('Nome do Aluno: ' + aluno[i].nome);
        Lines.Add('1a. nota.....: ' + Format('%.2f', [aluno[i].nota1]));
        Lines.Add('2a. nota.....: ' + Format('%.2f', [aluno[i].nota2]));
        Lines.Add('3a. nota.....: ' + Format('%.2f', [aluno[i].nota3]));
        Lines.Add('4a. nota.....: ' + Format('%.2f', [aluno[i].nota4]));
        Lines.Add('Média........: ' + Format('%.2f', [media]));

        if (media >= 6.0) then
          Lines.Add('Situação.....: Aprovado')
        else
          Lines.Add('Situação.....: Reprovado');

        Lines.Add('==================================');
      end;
    end;
end;

// Function Verificar Campos
function TfRegistroAlunosNotas.VerificarCampos: Boolean;
var
  nm, nt1, nt2, nt3, nt4 : String;
begin
  nm:= edtNomeAluno.Text;
  nt1 := edtNota01.Text;
  nt2 := edtNota02.Text;
  nt3 := edtNota03.Text;
  nt4 := edtNota04.Text;
  Result := (nm <> '') and (nt1 <> '') and (nt2 <> '') and (nt3 <> '') and (nt4 <> '');
end;

// Procedure Alimpar Campos
procedure TfRegistroAlunosNotas.AlimparCampos;
begin
   edtNomeAluno.Clear;
   edtNomeAluno.SetFocus;

   edtNota01.Clear;
   edtNota02.Clear;
   edtNota03.Clear;
   edtNota04.Clear;

end;
end.
