unit USearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFSearch = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    otvetstv: TEdit;
    postanov: TEdit;
    nazvanie: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CBDate: TComboBox;
    BFind: TButton;
    BCancel: TButton;
    status: TComboBox;
    rol: TComboBox;
    procedure BCancelClick(Sender: TObject);
    procedure BFindClick(Sender: TObject);
    procedure CBDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSearch: TFSearch;

implementation
uses Main;
{$R *.dfm}

procedure TFSearch.BCancelClick(Sender: TObject);
begin
rol.ItemIndex := 0;
otvetstv.text := '';
postanov.text := '';
nazvanie.text := '';
status.ItemIndex := 0;
CBDate.ItemIndex := 0;
Datetimepicker1.Visible:=False;
Datetimepicker2.Visible:=False;
end;

procedure TFSearch.BFindClick(Sender: TObject);
var S, srol, sotv, spost, snazv, sstat, sdate1:String; s1:TStringList; i,n:Integer; l:pchar; res:String;
begin
if ((rol.Text = '?????') and (otvetstv.text = '') and (postanov.text = '') and (nazvanie.text = '' ) and (status.text = '?????')and (CBDate.Text = '????? ????')) then
begin
FMain.ADOQuery1.SQL.Clear;
FMain.ADoQuery1.SQL.Add('SELECT id as ''? ?/?'', rol as ''????'', otvetstv as ''?????????????'', postanov as ''???????????'', nazvanie as ''????????'', statuz as ''??????'', date_okon as ''???? ?????????'' FROM tasks');
FMain.ADOQuery1.Active:=True;
FSearch.Hide;
end
else

begin
if rol.text <> '?????' then
  begin
  srol:= ' rol = '+chr(39)+rol.text+chr(39);
  end;

if otvetstv.text <> '' then
  begin
  if rol.Text <> '?????' then
    begin
    sotv:=' AND ';
    end;
  s1:=TStringList.Create;
  l:=pchar(otvetstv.Text);
    try
    n:=ExtractStrings([';', ','], [' '], l, s1);
    res:='(';
    for i := 0 to (n-1) do
      begin
      if i>0 then res:=res+' OR ';
      res:=res+'(otvetstv = '+chr(39)+s1[i]+chr(39)+')';
      end;
    finally
    s1.Free;
    end;
    res:=res+')';
  sotv:=sotv+res;
  end;

if postanov.text <> '' then
  begin
  if (rol.Text <> '?????')or(otvetstv.text <> '') then
    begin
    spost:=' AND ';
    end;
  s1:=TStringList.Create;
  l:=pchar(postanov.Text);
    try
    n:=ExtractStrings([';', ','], [' '], l, s1);
    res:='(';
    for i := 0 to (n-1) do
      begin
      if i>0 then res:=res+' OR ';
      res:=res+'(postanov = '+chr(39)+s1[i]+chr(39)+')';
      end;
    finally
    s1.Free;
    end;
    res:=res+')';

  spost:=spost+res;
  end;
if nazvanie.text <> '' then
  begin
  if (rol.Text <> '?????')or(otvetstv.text <> '') or (postanov.text <> '') then
    begin
    snazv:=' AND ';
    end;
  snazv:=snazv+' nazvanie like '+chr(39)+'%'+nazvanie.text+'%'+chr(39);
  end;
if status.text <> '?????' then
  begin
  if (rol.Text <> '?????')or(otvetstv.text <> '') or (postanov.text <> '') or (nazvanie.text <> '' ) then
    begin
    sstat:=' AND ';
    end;
  sstat:=sstat+' statuz = '+chr(39)+status.text+chr(39);
  end;
if CBDate.Text = '???????' then
  begin
  if (rol.Text <> '?????')or(otvetstv.text <> '') or (postanov.text <> '') or (nazvanie.text <> '' ) or (status.text <> '?????') then
    begin
    sdate1:=' AND ';
    end;
  sdate1:=sdate1+' date_okon between '+chr(39)+formatdatetime('yyy-mm-dd',datetimepicker1.Date)+chr(39)+' AND '+chr(39)+formatdatetime('yyy-mm-dd',datetimepicker2.Date)+chr(39);
  end;
S:='SELECT id as ''? ?/?'', rol as ''????'', otvetstv as ''?????????????'', postanov as ''???????????'', nazvanie as ''????????'', statuz as ''??????'', date_okon as ''???? ?????????'' from tasks WHERE'+srol+sotv+spost+snazv+sstat+sdate1;
//Edit1.Text:=S;
FMain.ADOQuery1.SQL.Clear;
FMain.ADoQuery1.SQL.Add(S);
FMain.ADOQuery1.Active:=True;
FSearch.Hide;
end;
end;

procedure TFSearch.CBDateChange(Sender: TObject);
begin
if CBDate.Text = '???????' then
  begin
  Datetimepicker1.Visible:=True;
  Datetimepicker2.Visible:=True;
  end
else
  begin
  Datetimepicker1.Visible:=False;
  Datetimepicker2.Visible:=False;
  end;
end;

end.
