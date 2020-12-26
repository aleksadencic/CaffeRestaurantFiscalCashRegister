unit pregledracunau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls, ComCtrls, Spin,
  jpeg, ExtCtrls;

type
  Tpregledracuna = class(TForm)
    ADOUnos: TADOQuery;
    DSUnos: TDataSource;
    DBUnos: TDBGrid;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure DSUnosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pregledracuna: Tpregledracuna;

implementation
uses glavnau;
{$R *.dfm}

procedure Tpregledracuna.FormShow(Sender: TObject);
begin
ADOUnos.Active:=true;
end;

procedure Tpregledracuna.Edit1Change(Sender: TObject);
begin
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('pime').Value:=Edit1.Text + '%';
ADOUnos.Active:=true;
end;

procedure Tpregledracuna.SpinEdit1Change(Sender: TObject);
begin
ADOUnos.Active:=false;
ADOUnos.Parameters.ParamByName('psto').Value:=SpinEdit1.Value;
ADOUnos.Active:=true;
end;

procedure Tpregledracuna.DSUnosDataChange(Sender: TObject; Field: TField);
begin
DBUnos.Columns[0].Width:=185;
DBUnos.Columns[1].Width:=85;
DBUnos.Columns[2].Width:=185;
end;

end.
