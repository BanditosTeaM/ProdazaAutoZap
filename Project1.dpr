program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {Main},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {CheckREP},
  Unit6 in 'Unit6.pas' {TovariOtchet};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TCheckREP, CheckREP);
  Application.CreateForm(TTovariOtchet, TovariOtchet);
  Application.Run;
end.
