unit TesteCondicional.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  Label1.Caption := Edit1.Text;
  if  Edit1.Text <> 'Nao' then
     Label1.Enabled := true
  else
    Label1.Enabled := false;
end;
















procedure TForm5.Button2Click(Sender: TObject);
begin
  Label2.Caption := Edit2.Text;
  Label2.Enabled := not (Edit2.Text = 'Nao');
end;

end.
