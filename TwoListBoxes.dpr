program TwoListBoxes;

uses
  System.StartUpCopy,
  FMX.Forms,
  fTwoListBoxes in 'fTwoListBoxes.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
