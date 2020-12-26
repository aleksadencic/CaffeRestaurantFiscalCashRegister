unit racunu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, ExtCtrls, Spin, Grids, DBGrids,
  Mask, jpeg;

type
  Tracun = class(TForm)
    Panel1: TPanel;
    ADOKonobar: TADOQuery;
    DSKonobar: TDataSource;
    DBKonobar: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ADOCommand1: TADOCommand;
    ADOCommand2: TADOCommand;
    ADOArtikl: TADOQuery;
    DSArtikl: TDataSource;
    ADOUnos: TADOQuery;
    DSUnos: TDataSource;
    ADOid: TADOQuery;
    DSid: TDataSource;
    ADOStariracuni: TADOQuery;
    DSStariracuni: TDataSource;
    Panel2: TPanel;
    DBArtikl: TDBLookupComboBox;
    Button10: TButton;
    SpinEdit1: TSpinEdit;
    Button11: TButton;
    DBUnos: TDBGrid;
    Button12: TButton;
    ADOCommand3: TADOCommand;
    Image1: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DSUnosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   rbrstavka:integer;
   racun: Tracun;

implementation
uses glavnau;
{$R *.dfm}

procedure Tracun.FormShow(Sender: TObject);
begin
ADOKonobar.Active:=true;
ADOArtikl.Active:=true;
ADOUnos.Active:=true;
ADOid.Active:=true;
end;

procedure Tracun.Button1Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint(Button1.Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button2Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button3Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button4Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button5Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button6Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button7Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint(Button7.Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint(Button7.Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button8Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;

procedure Tracun.Button9Click(Sender: TObject);
begin
ADOStariracuni.Active:=false;
ADOStariracuni.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOStariracuni.Active:=true;
if DSStariracuni.DataSet.RecordCount=0 then
  begin
if (DBKonobar.Text<>'') then
      begin
ADOCommand1.Parameters.ParamByName('psto').Value:=strtoint((sender as tbutton).Caption);
ADOCommand1.Parameters.ParamByName('pkonobar').Value:=DBKonobar.KeyValue;
ADOCommand1.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=false;
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
      end
else showmessage ('Unesite konobara!');
  end
else
  begin
showmessage('Postoji nedovrsen racun na ovom stolu!');
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSStariracuni.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
Panel1.Visible:=false;
Label1.Visible:=false;
Label2.Visible:=false;
DBKonobar.Visible:=false;
Panel2.Visible:=true;
  end;
end;
procedure Tracun.Button10Click(Sender: TObject);
begin
if (DBArtikl.Text<>'') and (SpinEdit1.Value>0) then
begin
ADOCommand2.Parameters.ParamByName('pbr').Value:=SpinEdit1.Value;
ADOCommand2.Parameters.ParamByName('partikl').Value:=DBArtikl.KeyValue;
ADOCommand2.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOCommand2.Execute;
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pracun').Value:=DSid.DataSet.FieldValues['id'];
ADOUnos.Active:=true;
end
else showmessage ('Niste popunili sva polja ispravno!');
end;

procedure Tracun.Button11Click(Sender: TObject);
begin
rbrstavka:=0;
ADOid.Active:=false;
ADOid.Active:=true;
Panel1.Visible:=true;
Label1.Visible:=true;
Label2.Visible:=true;
DBKonobar.Visible:=true;
Panel2.Visible:=false;
end;

procedure Tracun.Button12Click(Sender: TObject);
var vreme: TDateTime;
begin
vreme:=Now;

if DSStariracuni.dataset.RecordCount=1  then
ADOCommand3.Parameters.ParamByName('pid').Value:=DSStariracuni.DataSet.FieldValues['id']
                                               else
ADOCommand3.Parameters.ParamByName('pid').Value:= DSid.DataSet.FieldValues['id'];
ADOCommand3.Parameters.ParamByName('pvreme').Value:=FormatDateTime('dd/mm/yy hh:mm:ss', vreme);

ADOCommand3.Execute;
ADOid.Active:=false;
ADOid.Active:=true;
Panel1.Visible:=true;
Label1.Visible:=true;
Label2.Visible:=true;
DBKonobar.Visible:=true;
Panel2.Visible:=false;
end;

procedure Tracun.DSUnosDataChange(Sender: TObject; Field: TField);
begin
DBUnos.Columns[0].Width:=140;
DBUnos.Columns[1].Width:=68;
DBUnos.Columns[2].Width:=195;
DBUnos.Columns[3].Width:=120;
DBUnos.Columns[4].Width:=110;
DBUnos.Columns[5].Width:=110;
end;

end.
