unit artikliu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, DBCtrls, ExtCtrls, jpeg;

type
  Tartikli = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ADOCommand1: TADOCommand;
    ADOCommand2: TADOCommand;
    ADOArtikl: TADOQuery;
    DSArtikl: TDataSource;
    ADOUnos2: TADOQuery;
    DSUnos2: TDataSource;
    DSUnos: TDataSource;
    ADOUnos: TADOQuery;
    DBUnos: TDBGrid;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit5: TEdit;
    Panel1: TPanel;
    Edit3: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button2: TButton;
    DBUnos2: TDBGrid;
    Edit4: TEdit;
    Button6: TButton;
    Image1: TImage;
    Label9: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Label3: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSUnos2DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DSUnosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  artikli: Tartikli;

implementation
uses glavnau;

{$R *.dfm}

procedure Tartikli.Button1Click(Sender: TObject);
begin

if (Edit1.Text<>'') and (Edit2.Text<>'')
then
begin
ADOCommand1.Parameters.ParamByName('pnaziv').Value:=Edit1.Text;
ADOCommand1.Parameters.ParamByName('pkolicina').Value:=Edit2.Text;
ADOCommand1.Execute;
ADOUnos2.Active:=false;
ADOUnos2.Active:=true;
ADOArtikl.Active:=false;
ADOArtikl.Active:=true;
Edit1.Text:='';
Edit2.Text:='';
end
else showmessage('Morate popuniti sva polja!');
ADOUnos.Active:=false;
ADOUnos.Active:=true;
end;

procedure Tartikli.FormShow(Sender: TObject);
begin
ADOUnos2.Active:=true;
ADOUnos.Active:=true;
ADOArtikl.Active:=true;
end;

procedure Tartikli.DSUnos2DataChange(Sender: TObject; Field: TField);
begin
DBUnos2.Columns[0].Width:=248;
DBUnos2.Columns[1].Width:=248;
DBUnos2.Columns[2].Width:=245;


end;

procedure Tartikli.Button2Click(Sender: TObject);
begin
if (Edit3.text<>'') and (Edit4.Text<>'') and (DBLookupComboBox1.Text<>'')
then begin
ADOCommand2.Parameters.ParamByName('ppakovanje').Value:=Edit4.Text;
ADOCommand2.Parameters.ParamByName('pcena').Value:=Edit3.Text;
ADOCommand2.Parameters.ParamByName('pid').Value:=DBLookupComboBox1.KeyValue;
ADOCommand2.Execute;
Edit4.Text:='';
Edit3.Text:='';
ADOUnos2.active:=false;
ADOUnos2.active:=true;
end
else showmessage('Morate popuniti sva polja!');
end;

procedure Tartikli.Button4Click(Sender: TObject);
begin
Label1.Visible:=false;
Label2.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
Button1.Visible:=false;
Button3.Visible:=false;
Button5.Visible:=true;
Panel1.Visible:=true;
DBUnos.Visible:=false;
Button3.Visible:=false;
Edit1.Visible:=false;
Edit2.Visible:=false;
end;

procedure Tartikli.Button5Click(Sender: TObject);
begin
Label1.Visible:=true;
Label2.Visible:=true;
Label6.Visible:=true;
Label7.Visible:=true;
Label8.Visible:=false;
Label9.Visible:=false;
Button1.Visible:=true;
Button3.Visible:=true;
Button4.Visible:=true;
Button5.Visible:=false;
Panel1.Visible:=false;
DBUnos.Visible:=true;
Edit1.Visible:=true;
Edit2.Visible:=true;
Edit5.Visible:=false;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
end;

procedure Tartikli.Button3Click(Sender: TObject);
begin
Edit1.Visible:=false;
Edit2.Visible:=false;
Edit5.Visible:=true;
Label1.Visible:=false;
Label2.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
Label8.Visible:=true;
Label9.Visible:=true;
Button1.Visible:=false;
Button3.Visible:=false;
Button4.Visible:=false;
Button5.Visible:=true;
DBUnos.Visible:=true;
end;

procedure Tartikli.Edit5Change(Sender: TObject);
begin
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pnaziv').Value:=Edit5.Text + '%';
ADOUnos.Active:=true;
end;

procedure Tartikli.Button6Click(Sender: TObject);
begin
Label1.Visible:=true;
Label2.Visible:=true;
Label6.Visible:=true;
Label7.Visible:=true;
Label8.Visible:=false;
Label9.Visible:=false;
Button1.Visible:=true;
Button3.Visible:=true;
Button4.Visible:=true;
Button5.Visible:=false;
Panel1.Visible:=false;
DBUnos.Visible:=true;
Edit1.Visible:=true;
Edit2.Visible:=true;
Edit5.Visible:=false;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
end;

procedure Tartikli.DSUnosDataChange(Sender: TObject; Field: TField);
begin
DBUnos.Columns[0].Width:=99;
DBUnos.Columns[1].Width:=410;
DBUnos.Columns[2].Width:=245;
end;

end.
