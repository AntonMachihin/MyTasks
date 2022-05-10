unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TFMain = class(TForm)
    BNewTask: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Filter: TEdit;
    Label1: TLabel;
    procedure BNewTaskClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FilterMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation
uses AddTask, USearch;
{$R *.dfm}

procedure TFMain.BNewTaskClick(Sender: TObject);
begin
FAddTask.Show;
end;

procedure TFMain.FilterMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
FSearch.Show;
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
try
ADOQuery1.SQL.Clear;
ADoQuery1.SQL.Add('SELECT id as ''№ п/п'', rol as ''Роль'', otvetstv as ''Ответственный'', postanov as ''Постановщик'', nazvanie as ''Название'', statuz as ''Статус'', date_okon as ''Дата окончания'' FROM tasks');
ADOQuery1.Active:=True;
except
on e:Exception do
end;
end;

procedure TFMain.FormResize(Sender: TObject);
begin
DBGrid1.Width:=FMain.Width-30;
DBGrid1.Height:=FMain.Height-150;
end;

end.
