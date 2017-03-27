unit EnumCase.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils;

type

  eValores = (tpValor1, tpValor2, tpValor3, tpValor4);

  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  if ComboBox1.Text = 'Valor1' then
    ShowMessage('Exibindo Valor 1')
  else if ComboBox1.Text = 'Valor2' then
    ShowMessage('Exibindo Valor 2')
  else if ComboBox1.Text = 'Valor3' then
    ShowMessage('Exibindo Valor 3')
  else if ComboBox1.Text = 'Valor4' then
    ShowMessage('Exibindo Valor 4')
  else
    ShowMessage('Nenhum Valor Selecionado');
end;














procedure TForm7.Button2Click(Sender: TObject);
begin
  case eValores(ComboBox1.ItemIndex) of
    tpValor1 : ShowMessage('Exibindo Valor 1');
    tpValor2 : ShowMessage('Exibindo Valor 2');
    tpValor3 : ShowMessage('Exibindo Valor 3');
    tpValor4 : ShowMessage('Exibindo Valor 4');
    else ShowMessage('Nenhum Valor Selecionado');
  end;
end;














procedure TForm7.Button3Click(Sender: TObject);
const
  Tabela : array[0..3] of string = ('Valor1', 'Valor2', 'Valor3', 'Valor4');
begin
  case eValores(AnsiIndexStr(ComboBox1.Text, Tabela)) of
    tpValor1 : ShowMessage('Exibindo Valor 1');
    tpValor2 : ShowMessage('Exibindo Valor 2');
    tpValor3 : ShowMessage('Exibindo Valor 3');
    tpValor4 : ShowMessage('Exibindo Valor 4');
    else ShowMessage('Nenhum Valor Selecionado');
  end;

end;

end.
