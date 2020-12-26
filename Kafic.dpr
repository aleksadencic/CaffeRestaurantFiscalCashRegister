program Kafic;

uses
  Forms,
  glavnau in 'glavnau.pas' {glavna},
  konobariu in 'konobariu.pas' {konobari},
  artikliu in 'artikliu.pas' {artikli},
  racunu in 'racunu.pas' {racun},
  pregledracunau in 'pregledracunau.pas' {pregledracuna};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tglavna, glavna);
  Application.CreateForm(Tkonobari, konobari);
  Application.CreateForm(Tartikli, artikli);
  Application.CreateForm(Tracun, racun);
  Application.CreateForm(Tpregledracuna, pregledracuna);
  Application.Run;
end.
