unit Animais.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAnimal = class
    function barulho: String; virtual; abstract;
  end;

  TCachorro = class(TAnimal)
    function barulho: String; override;
  end;

  TGalinha = class(TAnimal)
    function barulho: String; override;
  end;

  TVaca = class(TAnimal)
    function barulho: String; override;
  end;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}
{ TForm8 }

procedure TForm8.Button2Click(Sender: TObject);
var
  i : Integer;
begin

  if TryStrToInt('1', i) then
    ShowMessage('Ok')
  else
    ShowMessage('Erro');



  if ComboBox1.Text = 'Cachorro' then
    ShowMessage('Au Au')
  else if ComboBox1.Text = 'Galinha' then
    ShowMessage('CoCoRiCo')
  else if ComboBox1.Text = 'Vaca' then
    ShowMessage('Muuuuuu');
end;













procedure TForm8.Button1Click(Sender: TObject);
begin
  ShowMessage(
    TAnimal(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).barulho
  );
end;


procedure TForm8.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Clear;
  ComboBox1.Items.AddObject('Cachorro', TObject(TCachorro.Create));
  ComboBox1.Items.AddObject('Galinha', TObject(TGalinha.Create));
  ComboBox1.Items.AddObject('Vaca', TObject(TVaca.Create));
end;

{ TCachorro }

function TCachorro.barulho: String;
begin
  Result := 'Au Au';
end;

{ TGalinha }

function TGalinha.barulho: String;
begin
  Result := 'CoCoRiCo';
end;

{ TVaca }

function TVaca.barulho: String;
begin
  Result := 'Muuuuuuu';
end;

end.
