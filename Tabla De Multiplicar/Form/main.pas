unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  Tmainform = class(TForm)
    ListBox1: TListBox;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    calcular: TButton;
    Label1: TLabel;
    Label2: TLabel;
    limpiar: TButton;
    salir: TButton;
    MainMenu1: TMainMenu;
    MatriculasIntegrantes1: TMenuItem;
    procedure clearEdit(formulario: TForm);
    procedure calcularClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure limpiarClick(Sender: TObject);
    procedure salirClick(Sender: TObject);
    procedure MatriculasIntegrantes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainform: Tmainform;

implementation

uses matriculas;

{$R *.dfm}

procedure Tmainform.clearEdit(formulario: TForm);
var
  i, tamano :integer;
begin
  tamano := formulario.ComponentCount;

  for i := 0 to tamano - 1 do
    if (formulario.Components[i] is TEdit) then
       TEdit(formulario.Components[i]).Clear;

  ListBox1.Clear;
end;

procedure Tmainform.calcularClick(Sender: TObject);
Var
  a, b, c, i : Integer;
  d : String;
begin

  (*Miguel Angel De la Cruz De La Cruz 11-MIST-1-072*)
  (*Rafelin Figuereo Beltre            14-MISN-1-090*)
  (*Alvin Almonte Cuevas               14-EISN-1-008*)

  If Edit1.Text = '' Then
    Begin
      ShowMessage('El Valor a Multiplicar No debe de estar en Blanco');
      Exit;
    End;

  If Edit2.Text = '' Then
    Begin
      ShowMessage('El Multiplicador No debe de estar en Blanco');
      Exit;
    End;

  a := 0;
  b := 0;
  c := 0;
  d := '';

  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);

  ListBox1.Clear;

  For i := 0 To b Do
    Begin
      c := a * i;
      d := IntToStr(a)+' X '+IntToStr(i)+' = '+IntToStr(c);
      ListBox1.Items.Add(d);
    End;
end;

procedure Tmainform.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
    begin
      key := #0;
      ShowMessage('Solo Introducir Valores Numericos');
    end
end;

procedure Tmainform.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
    begin
      key := #0;
      ShowMessage('Solo Introducir Valores Numericos');
    end
end;

procedure Tmainform.limpiarClick(Sender: TObject);
begin
  clearEdit(self);
end;

procedure Tmainform.salirClick(Sender: TObject);
begin
  Close;
end;

procedure Tmainform.MatriculasIntegrantes1Click(Sender: TObject);
begin
  fmatricula := Tfmatricula.Create(Self);
  fmatricula.ShowModal;
end;

end.
