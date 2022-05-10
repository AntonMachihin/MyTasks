unit AddTask;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFAddTask = class(TForm)
    otvetstv: TEdit;
    postanov: TEdit;
    nazvanie: TEdit;
    date_okon: TMonthCalendar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BAdd: TButton;
    BCancel: TButton;
    status: TComboBox;
    rol: TComboBox;
    procedure BAddClick(Sender: TObject);
    procedure BCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddTask: TFAddTask;

implementation
uses Main;

{$R *.dfm}

procedure TFAddTask.BAddClick(Sender: TObject);
Var S: String;
begin
FMain.ADOQuery1.SQL.Clear;
S:= 'INSERT INTO mytasks.tasks (rol, otvetstv, postanov, nazvanie, statuz, date_okon) VALUES ('+chr(39)+rol.Text+chr(39)+', '+
chr(39)+otvetstv.Text+chr(39)+', '+chr(39)+postanov.Text+chr(39)+', '+chr(39)+nazvanie.Text+chr(39)+', '+
chr(39)+status.Text+chr(39)+', '+chr(39)+formatdatetime('yyy-mm-dd',date_okon.Date)+chr(39)+');';
FMain.AdoQuery1.SQL.Clear;
FMain.ADOQuery1.SQL.Add(S);
FMain.ADOQuery1.ExecSQL;

FMain.ADOQuery1.SQL.Clear;
FMain.ADoQuery1.SQL.Add('SELECT id as ''№ п/п'', rol as ''Роль'', otvetstv as ''Ответственный'', postanov as ''Постановщик'', nazvanie as ''Название'', statuz as ''Статус'', date_okon as ''Дата окончания'' FROM tasks');
FMain.ADOQuery1.Active:=True;
FAddTask.Hide;
end;

procedure TFAddTask.BCancelClick(Sender: TObject);
begin
FAddTask.Hide;
end;

end.
