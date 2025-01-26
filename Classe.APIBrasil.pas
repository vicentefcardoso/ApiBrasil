unit Classe.APIBrasil;

interface

uses
  System.SysUtils, System.Classes, REST.Client, REST.Types, System.JSON, Vcl.Dialogs;

type
  iAPIBrasil = interface
    ['{5C052ED2-707C-49C5-BE29-88936B56DA59}']
    function ConsultaGenerica(const AValue, AType: string): string;
  end;

  TAPIBrasil = class(TInterfacedObject, iAPIBrasil)
  private
    function ConsultarCNPJ(const ACNPJ: string): string;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iAPIBrasil;
    function ConsultaGenerica(const AValue, AType: string): string;
  end;

var
  _BaseURL: string;

implementation

{ TAPIBrasil }

uses Constants.APIBrasil;

function TAPIBrasil.ConsultaGenerica(const AValue, AType: string): string;
var
  RestClient: TRESTClient;
  RestRequest: TRESTRequest;
  RestResponse: TRESTResponse;
  JsonValue: TJSONValue;
begin
  if AValue.Trim = EmptyStr then
  begin
    ShowMessage('Obrigatório informa algo na caixa de texto');
    Exit;
  end;

  if AType = cCEPV1 then
    _BaseURL := 'https://brasilapi.com.br/api/cep/v1/' + AValue;

  if AType = cCEPV2 then
    _BaseURL := 'https://brasilapi.com.br/api/cep/v2/' + AValue;

  if AType = cCNPJ then
    _BaseURL := 'https://brasilapi.com.br/api/cnpj/v1/' + AValue;

  if AType = cDDD then
    _BaseURL := 'https://brasilapi.com.br/api/ddd/v1/' + AValue;

  if AType = cFERIADOS then
    _BaseURL := 'https://brasilapi.com.br/api/feriados/v1/' + AValue;

  if AType = cNCM then
    _BaseURL := 'https://brasilapi.com.br/api/ncm/v1?search=' + AValue;

  if AType = cREGISTROBR then
    _BaseURL := 'https://brasilapi.com.br/api/registrobr/v1/' + AValue;

  if AType = cCIDADE then
    _BaseURL := 'https://brasilapi.com.br/api/ibge/municipios/v1/' + AValue + '?providers=dados-abertos-br,gov,wikipedia';

  Result := '';
  RestClient := TRESTClient.Create(nil);
  RestRequest := TRESTRequest.Create(nil);
  RestResponse := TRESTResponse.Create(nil);

  try
    RestClient.BaseURL := _BaseURL;
    RestRequest.Client := RestClient;
    RestRequest.Response := RestResponse;
    RestRequest.Method := TRESTRequestMethod.rmGET;
    RestRequest.Execute;

    if RestResponse.StatusCode = 200 then
    begin
      JsonValue := TJSONObject.ParseJSONValue(RestResponse.Content);
      try
        if JsonValue <> nil then
          Result := JsonValue.Format
        else
          Result := 'Erro ao processar JSON.';
      finally
        JsonValue.Free;
      end;
    end
    else
    begin
      raise Exception.Create('Erro ao consultar. Código: ' + RestResponse.StatusCode.ToString + sLineBreak +
        RestResponse.Content);
    end;
  finally
    RestClient.Free;
    RestRequest.Free;
    RestResponse.Free;
  end;
end;

function TAPIBrasil.ConsultarCNPJ(const ACNPJ: string): string;
begin

end;

constructor TAPIBrasil.Create;
begin

end;

destructor TAPIBrasil.Destroy;
begin

  inherited;
end;

class function TAPIBrasil.New: iAPIBrasil;
begin
  Result := Self.Create;
end;

end.
