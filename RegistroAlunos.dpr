program RegistroAlunos;

uses
  Vcl.Forms,
  uRegistroAlunosNotas in 'src\uRegistroAlunosNotas.pas' {fRegistroAlunosNotas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfRegistroAlunosNotas, fRegistroAlunosNotas);
  Application.Run;
end.
