program Regle;

uses
  Forms,
  Regle1 in 'Regle1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
