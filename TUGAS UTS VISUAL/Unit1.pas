unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('insert into satuan values(null,"'+Edit1.Text+'","'+Edit2.Text+'")');
  DataModule2.ZQuery1.ExecSQL;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from satuan');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil diSimpan!');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Name satuan Tidak Boleh Kosong!');
  end else
  begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('update satuan set Name = "'+Edit1.Text+'", Diskripsi="'+Edit2.Text+'" where Id = "'+a+'"');
  DataModule2.ZQuery1.ExecSQL;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from satuan');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil diEdit!');
  end;

end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text:= DataModule2.ZQuery1.Fields[1].AsString;
  Edit2.Text:= DataModule2.ZQuery1.Fields[2].AsString;
  a:= DataModule2.ZQuery1.Fields[0].AsString;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('delete from satuan where Id="'+a+'"');
  DataModule2.ZQuery1.ExecSQL;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from satuan');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil diDelete!');
  end
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

end.
