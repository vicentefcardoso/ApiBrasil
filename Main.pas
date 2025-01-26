unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TFrmMain = class(TForm)
    EdtCep: TEdit;
    LblCEP: TLabel;
    BtnBuscaCepV1: TButton;
    GrpResposta: TGroupBox;
    MemJSON: TMemo;
    BtnBuscaCepV2: TButton;
    EdtCNPJ: TEdit;
    lblCNPJ: TLabel;
    BtnBuscaCNPJ: TButton;
    lblDDD: TLabel;
    EdtDDD: TEdit;
    BtnBuscarDDD: TButton;
    lblFeriados: TLabel;
    EdtFeriadoANO: TEdit;
    BtnBuscarFeriados: TButton;
    lblNCM: TLabel;
    EdtNCM: TEdit;
    BtnBuscarNCM: TButton;
    lblRegistroBR: TLabel;
    EdtRegistroBr: TEdit;
    BtnBuscarRegistroBr: TButton;
    img: TImage;
    BtnCidades: TButton;
    EdtEstado: TEdit;
    lblEstado: TLabel;
    procedure BtnBuscaCepV1Click(Sender: TObject);
    procedure BtnBuscaCepV2Click(Sender: TObject);
    procedure BtnBuscaCNPJClick(Sender: TObject);
    procedure BtnBuscarDDDClick(Sender: TObject);
    procedure BtnBuscarFeriadosClick(Sender: TObject);
    procedure BtnBuscarNCMClick(Sender: TObject);
    procedure BtnBuscarRegistroBrClick(Sender: TObject);
    function SomenteNumeros(const Texto: string): string;
    procedure EdtCepExit(Sender: TObject);
    procedure EdtCNPJExit(Sender: TObject);
    procedure EdtDDDExit(Sender: TObject);
    procedure EdtFeriadoANOExit(Sender: TObject);
    procedure EdtNCMExit(Sender: TObject);
    procedure BtnCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}


uses Classe.APIBrasil, Constants.APIBrasil;

procedure TFrmMain.BtnBuscaCepV1Click(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtCep.Text, cCEPV1));
end;

procedure TFrmMain.BtnBuscaCepV2Click(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtCep.Text, cCEPV2));
end;

procedure TFrmMain.BtnBuscaCNPJClick(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtCNPJ.Text, cCNPJ));
end;

procedure TFrmMain.BtnBuscarDDDClick(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtDDD.Text, cDDD));
end;

procedure TFrmMain.BtnBuscarFeriadosClick(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtFeriadoANO.Text, cFERIADOS));
end;

procedure TFrmMain.BtnBuscarNCMClick(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtNCM.Text, cNCM));
end;

procedure TFrmMain.BtnBuscarRegistroBrClick(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtRegistroBr.Text, cREGISTROBR));
end;

procedure TFrmMain.BtnCidadesClick(Sender: TObject);
begin
  MemJSON.Lines.Clear;
  MemJSON.Lines.Add(TAPIBrasil.New.ConsultaGenerica(EdtEstado.Text, cCIDADE));
end;

procedure TFrmMain.EdtCepExit(Sender: TObject);
begin
  EdtCep.Text := SomenteNumeros(EdtCep.Text);
end;

procedure TFrmMain.EdtCNPJExit(Sender: TObject);
begin
  EdtCNPJ.Text := SomenteNumeros(EdtCNPJ.Text);
end;

procedure TFrmMain.EdtDDDExit(Sender: TObject);
begin
  EdtDDD.Text := SomenteNumeros(EdtDDD.Text);
end;

procedure TFrmMain.EdtFeriadoANOExit(Sender: TObject);
begin
  EdtFeriadoANO.Text := SomenteNumeros(EdtFeriadoANO.Text);
end;

procedure TFrmMain.EdtNCMExit(Sender: TObject);
begin
  EdtNCM.Text := SomenteNumeros(EdtNCM.Text);
end;

function TFrmMain.SomenteNumeros(const Texto: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(Texto) do
  begin
    if CharInSet(Texto[I], ['0' .. '9']) then
      Result := Result + Texto[I];
  end;
end;

end.
