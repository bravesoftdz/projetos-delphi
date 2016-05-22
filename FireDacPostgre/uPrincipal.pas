unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDPhysPgDriverLink1.VendorHome := ExtractFilePath(Application.ExeName)+
                                    'pgbin32\';
  FDPhysPgDriverLink1.VendorLib := 'libpq.dll';
  FDPhysPgDriverLink1.Release;

  FDConnection1.Connected := false;
  FDConnection1.Params.Values['database']  := 'postgres';
  FDConnection1.Params.Values['user_name'] := 'postgres';
  FDConnection1.Params.Values['password']  := '123123';
  FDConnection1.Params.Values['server']    := 'localhost';
  FDConnection1.Params.Values['port']      := '5432';
  FDConnection1.Connected := true;
  Button2.Enabled := FDConnection1.Connected = true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //FDQuery1.Close;
  //FDQuery1.SQL.Add('select * from clientes');
  FDQuery1.Open('select * from clientes');

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDConnection1.Connected := false;
end;

end.
