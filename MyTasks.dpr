program MyTasks;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FMain},
  AddTask in 'AddTask.pas' {FAddTask},
  USearch in 'USearch.pas' {FSearch};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFAddTask, FAddTask);
  Application.CreateForm(TFSearch, FSearch);
  Application.Run;
end.
