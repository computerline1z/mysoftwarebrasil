unit uFrmSobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls
type
  TfrmSobre=class(TForm)
    Image1: TImage [0];
    Shape1: TShape [1];
    Label2: TLabel [2];
    LSite: TLabel [3];
    Label4: TLabel [4];
    Label5: TLabel [5];
    Label6: TLabel [6];
    Label7: TLabel [7];
    Shape2: TShape [8];
    LVersao: TLabel [9];
    procedure LSiteClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  frmSobre: TfrmSobre;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmSobre.LSiteClick(Sender : TObject);
begin
(*
005A9BAC   6A01                   push    $01
005A9BAE   6A00                   push    $00
005A9BB0   6A00                   push    $00

* Possible String Reference to: 'www.strategos.com.br'
|
005A9BB2   68D09B5A00             push    $005A9BD0

* Possible String Reference to: 'OPEN'
|
005A9BB7   68E89B5A00             push    $005A9BE8
005A9BBC   A1C04E6400             mov     eax, dword ptr [$00644EC0]

|
005A9BC1   E81EDCEBFF             call    004677E4
005A9BC6   50                     push    eax

* Reference to: shell32.ShellExecuteA()
|
005A9BC7   E8400EE9FF             call    0043AA0C
005A9BCC   C3                     ret

*)
end;

end.