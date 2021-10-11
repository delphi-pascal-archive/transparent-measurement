unit Regle1;

interface

uses Forms, Menus, Classes, Controls, ExtCtrls, Sysutils, StdCtrls;

const projet = 'Transparent measurement';

Type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    P1: TPanel;
    opEcran1: TMenuItem;
    Normal1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
    procedure Quitter1Click(Sender: TObject);
    procedure opEcran1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    procedure INIT;
    procedure QUITTER;
    procedure Adapte;
  end;

var
  Form1: TForm1;
  top9: integer;

implementation

{$R *.dfm}

procedure TForm1.Quitter1Click(Sender: TObject);
begin
  QUITTER;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#27
 then QUITTER;
end; // avec Form1.keypreview := true

procedure TForm1.QUITTER;
begin
 application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 INIT;
end;

procedure TForm1.INIT;
begin
 caption := projet;
 Top := 0;
 top9 := Top;
 Adapte;
end;

procedure TFORM1.Adapte;
begin
 P1.SetBounds(10,10,width-28,Height-48);
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
NewHeight: Integer; var Resize: Boolean);
begin
 Adapte;
 P1.caption := inttostr(P1.Width) + '/' + inttostr(P1.height)
end;

procedure TForm1.opEcran1Click(Sender: TObject);
begin
 Top := -35;
end;

procedure TForm1.Normal1Click(Sender: TObject);
begin
 Top := top9;
end;

end.
