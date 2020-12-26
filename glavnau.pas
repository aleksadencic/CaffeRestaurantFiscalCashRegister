unit glavnau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, jpeg, ExtCtrls;

type
  Tglavna = class(TForm)
    konekcija: TADOConnection;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  glavna: Tglavna;

implementation
uses konobariu, artikliu, racunu, pregledracunau;
{$R *.dfm}

procedure Tglavna.FormShow(Sender: TObject);
begin
konekcija.ConnectionString:='Persist Security Info=True;Extended Properties="Driver={MySQL ODBC 5.1 Driver};SERVER= 160.99.191.7 ;UID=aleksa613;DATABASE=aleksa613 ;PWD=452181;"' ;
konekcija.LoginPrompt:=false;
konekcija.Connected:=true;
end;

procedure Tglavna.Button1Click(Sender: TObject);
begin
konobari.ShowModal;
end;

procedure Tglavna.Button2Click(Sender: TObject);
begin
artikli.ShowModal;
end;

procedure Tglavna.Button3Click(Sender: TObject);
begin
racun.ShowModal;
end;

procedure Tglavna.Button4Click(Sender: TObject);
begin
application.Terminate;
end;

procedure Tglavna.Button5Click(Sender: TObject);
begin
pregledracuna.ShowModal;
end;

end.
