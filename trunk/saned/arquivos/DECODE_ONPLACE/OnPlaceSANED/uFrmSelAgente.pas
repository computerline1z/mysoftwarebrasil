unit uFrmSelAgente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls
type
  TfrmSelAgente=class(TForm)
    ListBox: TListBox;
    qryGeral: TQuery;
    procedure sbtnSairClick(Sender : TObject);
    procedure _PROC_005864CD(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  frmSelAgente: TfrmSelAgente;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmSelAgente.sbtnSairClick(Sender : TObject);
begin
(*
00586258   55                     push    ebp
00586259   8BEC                   mov     ebp, esp
0058625B   33C9                   xor     ecx, ecx
0058625D   51                     push    ecx
0058625E   51                     push    ecx
0058625F   51                     push    ecx
00586260   51                     push    ecx
00586261   51                     push    ecx
00586262   53                     push    ebx
00586263   56                     push    esi
00586264   8BD8                   mov     ebx, eax
00586266   33C0                   xor     eax, eax
00586268   55                     push    ebp

* Possible String Reference to: '�/�����^[��]�'
|
00586269   6860635800             push    $00586360

***** TRY
|
0058626E   64FF30                 push    dword ptr fs:[eax]
00586271   648920                 mov     fs:[eax], esp

* Reference to control TfrmSelAgente.ListBox : TListBox
|
00586274   8B8380030000           mov     eax, [ebx+$0380]
0058627A   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
0058627C   FF92DC000000           call    dword ptr [edx+$00DC]
00586282   40                     inc     eax
00586283   7504                   jnz     00586289
00586285   B001                   mov     al, $01
00586287   EB42                   jmp     005862CB

* Reference to control TfrmSelAgente.ListBox : TListBox
|
00586289   8BB380030000           mov     esi, [ebx+$0380]
0058628F   8BC6                   mov     eax, esi
00586291   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
00586293   FF92DC000000           call    dword ptr [edx+$00DC]
00586299   8BD0                   mov     edx, eax
0058629B   8D4DF8                 lea     ecx, [ebp-$08]

* Reference to field TListBox.OFFS_0260
|
0058629E   8B8660020000           mov     eax, [esi+$0260]
005862A4   8B30                   mov     esi, [eax]
005862A6   FF560C                 call    dword ptr [esi+$0C]
005862A9   8B45F8                 mov     eax, [ebp-$08]
005862AC   8D55FC                 lea     edx, [ebp-$04]

|
005862AF   E8A046E8FF             call    0040A954
005862B4   8B45FC                 mov     eax, [ebp-$04]
005862B7   8945F4                 mov     [ebp-$0C], eax
005862BA   8B45F4                 mov     eax, [ebp-$0C]
005862BD   85C0                   test    eax, eax
005862BF   7405                   jz      005862C6
005862C1   83E804                 sub     eax, +$04
005862C4   8B00                   mov     eax, [eax]
005862C6   85C0                   test    eax, eax
005862C8   0F94C0                 setz    al
005862CB   84C0                   test    al, al
005862CD   7425                   jz      005862F4
005862CF   6A00                   push    $00
005862D1   0FB70D70635800         movzx   ecx, word ptr [$00586370]
005862D8   B202                   mov     dl, $02

* Possible String Reference to: 'Selecione um Agente !'
|
005862DA   B87C635800             mov     eax, $0058637C

|
005862DF   E8C4A8ECFF             call    00450BA8

* Reference to control TfrmSelAgente.ListBox : TListBox
|
005862E4   8B8380030000           mov     eax, [ebx+$0380]
005862EA   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00D4
|
005862EC   FF92D4000000           call    dword ptr [edx+$00D4]
005862F2   EB44                   jmp     00586338
005862F4   8D45F0                 lea     eax, [ebp-$10]
005862F7   50                     push    eax

* Reference to control TfrmSelAgente.ListBox : TListBox
|
005862F8   8BB380030000           mov     esi, [ebx+$0380]
005862FE   8BC6                   mov     eax, esi
00586300   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
00586302   FF92DC000000           call    dword ptr [edx+$00DC]
00586308   8BD0                   mov     edx, eax
0058630A   8D4DEC                 lea     ecx, [ebp-$14]

* Reference to field TListBox.OFFS_0260
|
0058630D   8B8660020000           mov     eax, [esi+$0260]
00586313   8B30                   mov     esi, [eax]
00586315   FF560C                 call    dword ptr [esi+$0C]
00586318   8B45EC                 mov     eax, [ebp-$14]
0058631B   B903000000             mov     ecx, $00000003
00586320   BA01000000             mov     edx, $00000001

|
00586325   E89EFAE7FF             call    00405DC8
0058632A   8B45F0                 mov     eax, [ebp-$10]

|
0058632D   E8124FE8FF             call    0040B244

* Reference to field TfrmSelAgente.OFFS_0294
|
00586332   898394020000           mov     [ebx+$0294], eax
00586338   33C0                   xor     eax, eax
0058633A   5A                     pop     edx
0058633B   59                     pop     ecx
0058633C   59                     pop     ecx
0058633D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[��]�'
|
00586340   6867635800             push    $00586367
00586345   8D45EC                 lea     eax, [ebp-$14]
00586348   BA02000000             mov     edx, $00000002

|
0058634D   E876F5E7FF             call    004058C8
00586352   8D45F8                 lea     eax, [ebp-$08]
00586355   BA02000000             mov     edx, $00000002

|
0058635A   E869F5E7FF             call    004058C8
0058635F   C3                     ret


|
00586360   E92FEDE7FF             jmp     00405094
00586365   EBDE                   jmp     00586345

****** END
|
00586367   5E                     pop     esi
00586368   5B                     pop     ebx
00586369   8BE5                   mov     esp, ebp
0058636B   5D                     pop     ebp
0058636C   C3                     ret

*)
end;

procedure TfrmSelAgente._PROC_005864CD(Sender : TObject);
begin
(*
005864CD   8BEC                   mov     ebp, esp
005864CF   51                     push    ecx
005864D0   53                     push    ebx
005864D1   8955FC                 mov     [ebp-$04], edx
005864D4   8BD8                   mov     ebx, eax
005864D6   8B45FC                 mov     eax, [ebp-$04]

|
005864D9   E87AF8E7FF             call    00405D58
005864DE   33C0                   xor     eax, eax
005864E0   55                     push    ebp
005864E1   683F655800             push    $0058653F

***** TRY
|
005864E6   64FF30                 push    dword ptr fs:[eax]
005864E9   648920                 mov     fs:[eax], esp
005864EC   837DFC00               cmp     dword ptr [ebp-$04], +$00
005864F0   7437                   jz      00586529

* Reference to field TfrmSelAgente.OFFS_0064
|
005864F2   8B4364                 mov     eax, [ebx+$64]

|
005864F5   E81680F1FF             call    0049E510

* Reference to field TfrmSelAgente.OFFS_0064
|
005864FA   8B4364                 mov     eax, [ebx+$64]
005864FD   8B8048020000           mov     eax, [eax+$0248]
00586503   8B10                   mov     edx, [eax]
00586505   FF5244                 call    dword ptr [edx+$44]

* Reference to field TfrmSelAgente.OFFS_0064
|
00586508   8B4364                 mov     eax, [ebx+$64]
0058650B   8B8048020000           mov     eax, [eax+$0248]
00586511   8B55FC                 mov     edx, [ebp-$04]
00586514   8B08                   mov     ecx, [eax]
00586516   FF512C                 call    dword ptr [ecx+$2C]

* Reference to field TfrmSelAgente.OFFS_0064
|
00586519   8B4364                 mov     eax, [ebx+$64]

|
0058651C   E87745F3FF             call    004BAA98

* Reference to field TfrmSelAgente.OFFS_0064
|
00586521   8B4364                 mov     eax, [ebx+$64]

|
00586524   E8E77FF1FF             call    0049E510
00586529   33C0                   xor     eax, eax
0058652B   5A                     pop     edx
0058652C   59                     pop     ecx
0058652D   59                     pop     ecx
0058652E   648910                 mov     fs:[eax], edx

****** FINALLY
|
00586531   6846655800             push    $00586546
00586536   8D45FC                 lea     eax, [ebp-$04]

|
00586539   E866F3E7FF             call    004058A4
0058653E   C3                     ret


|
0058653F   E950EBE7FF             jmp     00405094
00586544   EBF0                   jmp     00586536

****** END
|
00586546   5B                     pop     ebx
00586547   59                     pop     ecx
00586548   5D                     pop     ebp
00586549   C3                     ret

*)
end;

end.