unit konobariu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, jpeg, ExtCtrls;

type
  Tkonobari = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBUnos: TDBGrid;
    Button1: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOUnos: TADOQuery;
    DSUnos: TDataSource;
    ADOCommand1: TADOCommand;
    procedure FormShow(Sender: TObject);
    procedure DSUnosDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  konobari: Tkonobari;

implementation
uses glavnau;
{$R *.dfm}

procedure Tkonobari.FormShow(Sender: TObject);
begin
ADOUnos.Active:=true;
end;

procedure Tkonobari.DSUnosDataChange(Sender: TObject; Field: TField);
begin
DBUnos.Columns[0].Width:=47;
DBUnos.Columns[1].Width:=140;
DBUnos.Columns[2].Width:=140;
DBUnos.Columns[3].Width:=167;
DBUnos.Columns[4].Width:=100;
DBUnos.Columns[5].Width:=75;
DBUnos.Columns[6].Width:=75;
end;

procedure Tkonobari.Button1Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') and
(Edit4.Text<>'') and (Edit5.Text<>'') and (Edit6.Text<>'')
then begin
ADOCommand1.Parameters.ParamByName('pime').Value:=Edit1.Text;
ADOCommand1.Parameters.ParamByName('pprezime').Value:=Edit2.Text;
ADOCommand1.Parameters.ParamByName('padresa').Value:=Edit3.Text;
ADOCommand1.Parameters.ParamByName('pbrtel').Value:=Edit4.Text;
ADOCommand1.Parameters.ParamByName('pveluniforme').Value:=Edit5.Text;
ADOCommand1.Parameters.ParamByName('pbrcipela').Value:=Edit6.Text;
ADOCommand1.Execute;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
ADOUnos.Active:=false;
ADOUnos.Active:=true;
end
else showmessage('Morate popuniti sva polja!');
end;

procedure Tkonobari.Edit7Change(Sender: TObject);
begin
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pime').Value:=Edit7.Text + '%';
ADOUnos.Active:=true;
end;

procedure Tkonobari.Edit8Change(Sender: TObject);
begin
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pprezime').Value:=Edit8.Text + '%';
ADOUnos.Active:=true;
end;

procedure Tkonobari.Button2Click(Sender: TObject);
begin
Label1.Visible:=false;
Label2.Visible:=false;
Label3.Visible:=false;
Label4.Visible:=false;
Label5.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
Label8.Visible:=true;
Label9.Visible:=true;
Label10.Visible:=true;
Label11.Visible:=false;
Edit1.Visible:=false;
Edit2.Visible:=false;
Edit3.Visible:=false;
Edit4.Visible:=false;
Edit5.Visible:=false;
Edit6.Visible:=false;
Edit7.Visible:=true;
Edit8.Visible:=true;
Button1.Visible:=false;
Button2.Visible:=false;
Button3.Visible:=false;
Button4.Visible:=true;
DBUnos.Visible:=true;
end;

procedure Tkonobari.Button3Click(Sender: TObject);
begin
Label1.Visible:=true;
Label2.Visible:=true;
Label3.Visible:=true;
Label4.Visible:=true;
Label5.Visible:=true;
Label6.Visible:=true;
Label7.Visible:=true;
Label8.Visible:=false;
Label9.Visible:=false;
Label10.Visible:=false;
Label11.Visible:=false;
Edit1.Visible:=true;
Edit2.Visible:=true;
Edit3.Visible:=true;
Edit4.Visible:=true;
Edit5.Visible:=true;
Edit6.Visible:=true;
Edit7.Visible:=false;
Edit8.Visible:=false;
Button1.Visible:=true;
Button2.Visible:=false;
Button3.Visible:=false;
Button4.Visible:=true;
DBUnos.Visible:=true;
end;

procedure Tkonobari.Button4Click(Sender: TObject);
begin
Label1.Visible:=false;
Label2.Visible:=false;
Label3.Visible:=false;
Label4.Visible:=false;
Label5.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
Label8.Visible:=false;
Label9.Visible:=false;
Label10.Visible:=false;
Label11.Visible:=true;
Edit1.Visible:=false;
Edit2.Visible:=false;
Edit3.Visible:=false;
Edit4.Visible:=false;
Edit5.Visible:=false;
Edit6.Visible:=false;
Edit7.Visible:=false;
Edit8.Visible:=false;
Button1.Visible:=false;
Button2.Visible:=true;
Button3.Visible:=true;
Button4.Visible:=false;
DBUnos.Visible:=false;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
end;

procedure Tkonobari.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (((ord(key)>64) and (ord(key)<91))or ((ord(key)>96) and (ord(key)<123)) or (ord(key) in [138,142,154,158,198,200,208,230,232,240,8,150]) )   then   key:=chr(0);
end;

procedure Tkonobari.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [ '0','1','2','3','4','5','6','7','8','9',chr(8)])   then   key:=chr(0);
end;

procedure Tkonobari.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [ '0','1','2','3','4','5','6','7','8','9',chr(8)])   then   key:=chr(0);
end;

end.
