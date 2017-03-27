unit RecordHelper.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TEnumTeste = (tpEntrada, tpSaida, tpDevolucao);

type
  THelpEnum = record Helper for TEnumTeste
  public
    function SQL : String;
  end;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  System.Generics.Collections;

{$R *.dfm}

{ THelpEnum }

function THelpEnum.SQL: String;
var
  ListaSQL : TList<String>;
begin
  ListaSQL := TList<String>.Create;
  try
    ListaSQL.Insert(Integer(TEnumTeste.tpEntrada), 'SELECT * FROM ENTRADA');
    ListaSQL.Insert(Integer(TEnumTeste.tpSaida),   'SELECT * FROM SAIDA');
    ListaSQL.Insert(Integer(TEnumTeste.tpDevolucao), 'SELECT * FROM DEVOLUCAO');
    Result := ListaSQL[Integer(Self)];
  finally
    ListaSQL.Free;
  end;
end;














//Sem IF
procedure TForm4.Button1Click(Sender: TObject);
begin
  ShowMessage(TEnumTeste(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).SQL);
end;















//Com If
procedure TForm4.Button2Click(Sender: TObject);
begin
  if ComboBox1.Text = 'Entrada' then
    ShowMessage('SELECT * FROM ENTRADA')
  else if ComboBox1.Text = 'Saida' then
    ShowMessage('SELECT * FROM SAIDA')
  else if ComboBox1.Text = 'Devolu��o' then
    ShowMessage('SELECT * FROM DEVOLUCAO')
  else
    ShowMessage('Erro');
end;













procedure TForm4.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Clear;
  ComboBox1.Items.AddObject('Entrada', TObject(tpEntrada));
  ComboBox1.Items.AddObject('Saida', TObject(tpSaida));
  ComboBox1.Items.AddObject('Devolu��o', TObject(tpDevolucao));
end;

end.
