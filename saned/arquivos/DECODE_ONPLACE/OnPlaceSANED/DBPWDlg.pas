unit DBPWDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls
type
  TPasswordDialog=class(TForm)
    GroupBox1: TGroupBox;
    Edit: TEdit;
    AddButton: TButton;
    RemoveButton: TButton;
    RemoveAllButton: TButton;
    OKButton: TButton;
    CancelButton: TButton;
    OFFS_037C: N.A.;
    procedure EditChange(Sender : TObject);
    procedure AddButtonClick(Sender : TObject);
    procedure RemoveButtonClick(Sender : TObject);
    procedure RemoveAllButtonClick(Sender : TObject);
    procedure OKButtonClick(Sender : TObject);
    procedure _PROC_005ACD08(Sender : TObject);
    procedure _PROC_005ACD44(Sender : TObject);
    procedure _PROC_005ACD7A(Sender : TObject);
    procedure _PROC_005ACF32(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  PasswordDialog: TPasswordDialog;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TPasswordDialog.EditChange(Sender : TObject);
begin
(*
005ACB24   55                     push    ebp
005ACB25   8BEC                   mov     ebp, esp
005ACB27   6A00                   push    $00
005ACB29   53                     push    ebx
005ACB2A   56                     push    esi
005ACB2B   8BF0                   mov     esi, eax
005ACB2D   33C0                   xor     eax, eax
005ACB2F   55                     push    ebp

* Possible String Reference to: '������^[Y]Ë�U��j'
|
005ACB30   689ECB5A00             push    $005ACB9E

***** TRY
|
005ACB35   64FF30                 push    dword ptr fs:[eax]
005ACB38   648920                 mov     fs:[eax], esp
005ACB3B   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACB3E   8B8664030000           mov     eax, [esi+$0364]

|
005ACB44   E8B72FEBFF             call    0045FB00
005ACB49   837DFC00               cmp     dword ptr [ebp-$04], +$00
005ACB4D   0F95C3                 setnz   bl
005ACB50   8BD3                   mov     edx, ebx

* Reference to control TPasswordDialog.AddButton : TButton
|
005ACB52   8B8668030000           mov     eax, [esi+$0368]
005ACB58   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TButton.OFFS_68
|
005ACB5A   FF5168                 call    dword ptr [ecx+$68]
005ACB5D   8BD3                   mov     edx, ebx

* Reference to control TPasswordDialog.RemoveButton : TButton
|
005ACB5F   8B866C030000           mov     eax, [esi+$036C]
005ACB65   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TButton.OFFS_68
|
005ACB67   FF5168                 call    dword ptr [ecx+$68]
005ACB6A   84DB                   test    bl, bl
005ACB6C   750D                   jnz     005ACB7B

* Reference to field TPasswordDialog.OFFS_037C : Byte
|
005ACB6E   80BE7C03000000         cmp     byte ptr [esi+$037C], $00
005ACB75   7504                   jnz     005ACB7B
005ACB77   33D2                   xor     edx, edx
005ACB79   EB02                   jmp     005ACB7D
005ACB7B   B201                   mov     dl, $01

* Reference to control TPasswordDialog.OKButton : TButton
|
005ACB7D   8B8674030000           mov     eax, [esi+$0374]
005ACB83   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TButton.OFFS_68
|
005ACB85   FF5168                 call    dword ptr [ecx+$68]
005ACB88   33C0                   xor     eax, eax
005ACB8A   5A                     pop     edx
005ACB8B   59                     pop     ecx
005ACB8C   59                     pop     ecx
005ACB8D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[Y]Ë�U��j'
|
005ACB90   68A5CB5A00             push    $005ACBA5
005ACB95   8D45FC                 lea     eax, [ebp-$04]

|
005ACB98   E8078DE5FF             call    004058A4
005ACB9D   C3                     ret


|
005ACB9E   E9F184E5FF             jmp     00405094
005ACBA3   EBF0                   jmp     005ACB95

****** END
|
005ACBA5   5E                     pop     esi
005ACBA6   5B                     pop     ebx
005ACBA7   59                     pop     ecx
005ACBA8   5D                     pop     ebp
005ACBA9   C3                     ret

*)
end;

procedure TPasswordDialog.AddButtonClick(Sender : TObject);
begin
(*
005ACBAC   55                     push    ebp
005ACBAD   8BEC                   mov     ebp, esp
005ACBAF   6A00                   push    $00
005ACBB1   53                     push    ebx
005ACBB2   8BD8                   mov     ebx, eax
005ACBB4   33C0                   xor     eax, eax
005ACBB6   55                     push    ebp

* Possible String Reference to: '�x�����[Y]Ë�U��j'
|
005ACBB7   6817CC5A00             push    $005ACC17

***** TRY
|
005ACBBC   64FF30                 push    dword ptr fs:[eax]
005ACBBF   648920                 mov     fs:[eax], esp
005ACBC2   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACBC5   8B8364030000           mov     eax, [ebx+$0364]

|
005ACBCB   E8302FEBFF             call    0045FB00
005ACBD0   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TPasswordDialog.OFFS_0380
|
005ACBD3   8B8380030000           mov     eax, [ebx+$0380]
005ACBD9   8B08                   mov     ecx, [eax]
005ACBDB   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TPasswordDialog.OFFS_037C : Byte
|
005ACBDE   C6837C03000001         mov     byte ptr [ebx+$037C], $01

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACBE5   8B8364030000           mov     eax, [ebx+$0364]
005ACBEB   8B10                   mov     edx, [eax]

* Possible reference to virtual method TEdit.OFFS_00F0
|
005ACBED   FF92F0000000           call    dword ptr [edx+$00F0]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACBF3   8B8364030000           mov     eax, [ebx+$0364]
005ACBF9   8B10                   mov     edx, [eax]

* Possible reference to virtual method TEdit.OFFS_00D4
|
005ACBFB   FF92D4000000           call    dword ptr [edx+$00D4]
005ACC01   33C0                   xor     eax, eax
005ACC03   5A                     pop     edx
005ACC04   59                     pop     ecx
005ACC05   59                     pop     ecx
005ACC06   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]Ë�U��j'
|
005ACC09   681ECC5A00             push    $005ACC1E
005ACC0E   8D45FC                 lea     eax, [ebp-$04]

|
005ACC11   E88E8CE5FF             call    004058A4
005ACC16   C3                     ret


|
005ACC17   E97884E5FF             jmp     00405094
005ACC1C   EBF0                   jmp     005ACC0E

****** END
|
005ACC1E   5B                     pop     ebx
005ACC1F   59                     pop     ecx
005ACC20   5D                     pop     ebp
005ACC21   C3                     ret

*)
end;

procedure TPasswordDialog.RemoveButtonClick(Sender : TObject);
begin
(*
005ACC24   55                     push    ebp
005ACC25   8BEC                   mov     ebp, esp
005ACC27   6A00                   push    $00
005ACC29   53                     push    ebx
005ACC2A   8BD8                   mov     ebx, eax
005ACC2C   33C0                   xor     eax, eax
005ACC2E   55                     push    ebp
005ACC2F   6888CC5A00             push    $005ACC88

***** TRY
|
005ACC34   64FF30                 push    dword ptr fs:[eax]
005ACC37   648920                 mov     fs:[eax], esp
005ACC3A   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACC3D   8B8364030000           mov     eax, [ebx+$0364]

|
005ACC43   E8B82EEBFF             call    0045FB00
005ACC48   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TPasswordDialog.OFFS_0380
|
005ACC4B   8B8380030000           mov     eax, [ebx+$0380]
005ACC51   8B08                   mov     ecx, [eax]
005ACC53   FF5110                 call    dword ptr [ecx+$10]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACC56   8B8364030000           mov     eax, [ebx+$0364]
005ACC5C   8B10                   mov     edx, [eax]

* Possible reference to virtual method TEdit.OFFS_00F0
|
005ACC5E   FF92F0000000           call    dword ptr [edx+$00F0]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACC64   8B8364030000           mov     eax, [ebx+$0364]
005ACC6A   8B10                   mov     edx, [eax]

* Possible reference to virtual method TEdit.OFFS_00D4
|
005ACC6C   FF92D4000000           call    dword ptr [edx+$00D4]
005ACC72   33C0                   xor     eax, eax
005ACC74   5A                     pop     edx
005ACC75   59                     pop     ecx
005ACC76   59                     pop     ecx
005ACC77   648910                 mov     fs:[eax], edx

****** FINALLY
|
005ACC7A   688FCC5A00             push    $005ACC8F
005ACC7F   8D45FC                 lea     eax, [ebp-$04]

|
005ACC82   E81D8CE5FF             call    004058A4
005ACC87   C3                     ret


|
005ACC88   E90784E5FF             jmp     00405094
005ACC8D   EBF0                   jmp     005ACC7F

****** END
|
005ACC8F   5B                     pop     ebx
005ACC90   59                     pop     ecx
005ACC91   5D                     pop     ebp
005ACC92   C3                     ret

*)
end;

procedure TPasswordDialog.RemoveAllButtonClick(Sender : TObject);
begin
(*
005ACC94   53                     push    ebx
005ACC95   8BD8                   mov     ebx, eax

* Reference to field TPasswordDialog.OFFS_0380
|
005ACC97   8B8380030000           mov     eax, [ebx+$0380]
005ACC9D   8B10                   mov     edx, [eax]
005ACC9F   FF5214                 call    dword ptr [edx+$14]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACCA2   8B8364030000           mov     eax, [ebx+$0364]
005ACCA8   8B10                   mov     edx, [eax]

* Possible reference to virtual method TEdit.OFFS_00D4
|
005ACCAA   FF92D4000000           call    dword ptr [edx+$00D4]
005ACCB0   5B                     pop     ebx
005ACCB1   C3                     ret

*)
end;

procedure TPasswordDialog.OKButtonClick(Sender : TObject);
begin
(*
005ACCB4   55                     push    ebp
005ACCB5   8BEC                   mov     ebp, esp
005ACCB7   6A00                   push    $00
005ACCB9   53                     push    ebx
005ACCBA   8BD8                   mov     ebx, eax
005ACCBC   33C0                   xor     eax, eax
005ACCBE   55                     push    ebp

* Possible String Reference to: '铃����[Y]ÐU��3�Uh8�Z'
|
005ACCBF   68FCCC5A00             push    $005ACCFC

***** TRY
|
005ACCC4   64FF30                 push    dword ptr fs:[eax]
005ACCC7   648920                 mov     fs:[eax], esp
005ACCCA   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TPasswordDialog.Edit : TEdit
|
005ACCCD   8B8364030000           mov     eax, [ebx+$0364]

|
005ACCD3   E8282EEBFF             call    0045FB00
005ACCD8   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TPasswordDialog.OFFS_0380
|
005ACCDB   8B8380030000           mov     eax, [ebx+$0380]
005ACCE1   8B08                   mov     ecx, [eax]
005ACCE3   FF510C                 call    dword ptr [ecx+$0C]
005ACCE6   33C0                   xor     eax, eax
005ACCE8   5A                     pop     edx
005ACCE9   59                     pop     ecx
005ACCEA   59                     pop     ecx
005ACCEB   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]ÐU��3�Uh8�Z'
|
005ACCEE   6803CD5A00             push    $005ACD03
005ACCF3   8D45FC                 lea     eax, [ebp-$04]

|
005ACCF6   E8A98BE5FF             call    004058A4
005ACCFB   C3                     ret


|
005ACCFC   E99383E5FF             jmp     00405094
005ACD01   EBF0                   jmp     005ACCF3

****** END
|
005ACD03   5B                     pop     ebx
005ACD04   59                     pop     ecx
005ACD05   5D                     pop     ebp
005ACD06   C3                     ret

*)
end;

procedure TPasswordDialog._PROC_005ACD08(Sender : TObject);
begin
(*
005ACD08   55                     push    ebp
005ACD09   8BEC                   mov     ebp, esp
005ACD0B   33C0                   xor     eax, eax
005ACD0D   55                     push    ebp

* Possible String Reference to: '�W�����]Í@'
|
005ACD0E   6838CD5A00             push    $005ACD38

***** TRY
|
005ACD13   64FF30                 push    dword ptr fs:[eax]
005ACD16   648920                 mov     fs:[eax], esp
005ACD19   FF05C44E6400           inc     dword ptr [$00644EC4]
005ACD1F   7509                   jnz     005ACD2A
005ACD21   A11CF36300             mov     eax, dword ptr [$0063F31C]
005ACD26   33D2                   xor     edx, edx
005ACD28   8910                   mov     [eax], edx
005ACD2A   33C0                   xor     eax, eax
005ACD2C   5A                     pop     edx
005ACD2D   59                     pop     ecx
005ACD2E   59                     pop     ecx
005ACD2F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Í@'
|
005ACD32   683FCD5A00             push    $005ACD3F
005ACD37   C3                     ret


|
005ACD38   E95783E5FF             jmp     00405094
005ACD3D   EBF8                   jmp     005ACD37

****** END
|
005ACD3F   5D                     pop     ebp
005ACD40   C3                     ret

*)
end;

procedure TPasswordDialog._PROC_005ACD44(Sender : TObject);
begin
(*
005ACD44   90                     nop
005ACD45   CD5A                   int     $5A
005ACD47   0000                   add     [eax], al

*)
end;

procedure TPasswordDialog._PROC_005ACD7A(Sender : TObject);
begin
(*
005ACD7A   47                     inc     edi
005ACD7B   001C4B                 add     [ebx+ecx*2], bl
005ACD7E   40                     inc     eax
005ACD7F   000C8547005848         add     [$48580047+eax*4], cl
005ACD86   40                     inc     eax
005ACD87   00744840               add     [eax+ecx*2+$40], dh
005ACD8B   00905547008C           add     [eax+$8C004755], dl
005ACD91   844600                 test    [esi+$00], al
005ACD94   845B47                 test    [ebx+$47], bl
005ACD97   000C31                 add     [ecx+esi], cl
005ACD9A   42                     inc     edx
005ACD9B   006C5747               add     [edi+edx*2+$47], ch
005ACD9F   00B8574700F4           add     [eax+$F4004757], bh
005ACDA5   58                     pop     eax
005ACDA6   47                     inc     edi
005ACDA7   00E8                   add     al, ch
005ACDA9   F8                     clc
005ACDAA   45                     inc     ebp
005ACDAB   0094C542008462         add     [ebp+eax*8+$62840042], dl
005ACDB2   47                     inc     edi
005ACDB3   0070C2                 add     [eax-$3E], dh
005ACDB6   42                     inc     edx
005ACDB7   0070AB                 add     [eax-$55], dh
005ACDBA   47                     inc     edi
005ACDBB   00E0                   add     al, ah
005ACDBD   51                     push    ecx
005ACDBE   47                     inc     edi
005ACDBF   00B07E4600BC           add     [eax+$BC00467E], dh
005ACDC5   844600                 test    [esi+$00], al
005ACDC8   08844600B0EB45         or      [esi+eax*2+$45EBB000], al
005ACDCF   002C79                 add     [ecx+edi*2], ch
005ACDD2   46                     inc     esi
005ACDD3   00B85E4700B8           add     [eax+$B800475E], bh
005ACDD9   7546                   jnz     005ACE21
005ACDDB   00F0                   add     al, dh
005ACDDD   EA4500F4EA             jmp     $EAF40045
005ACDE2   45                     inc     ebp
005ACDE3   00AC5F47006C24         add     [edi+ebx*2+$246C0047], ch
005ACDEA   46                     inc     esi
005ACDEB   003CA8                 add     [eax+ebp*4], bh
005ACDEE   47                     inc     edi
005ACDEF   00CC                   add     ah, cl
005ACDF1   F8                     clc
005ACDF2   45                     inc     ebp
005ACDF3   002CED450058FA         add     [$FA580045+ebp*8], ch
005ACDFA   45                     inc     ebp
005ACDFB   00C8                   add     al, cl
005ACDFD   61                     popa
005ACDFE   47                     inc     edi
005ACDFF   008460470094FB         add     [eax+$FB940047], al
005ACE06   45                     inc     ebp
005ACE07   00C4                   add     ah, al
005ACE09   624700                 bound   eax, qword ptr [edi+$00]
005ACE0C   F0                     lock
005ACE0D   2446                   and     al, $46
005ACE0F   000C76                 add     [esi+esi*2], cl
005ACE12   46                     inc     esi
005ACE13   00CC                   add     ah, cl
005ACE15   7646                   jbe     005ACE5D
005ACE17   00C0                   add     al, al
005ACE19   7146                   jno     005ACE61
005ACE1B   00B0764600C8           add     [eax+$C8004676], dh
005ACE21   4F                     dec     edi
005ACE22   47                     inc     edi
005ACE23   0008                   add     [eax], cl
005ACE25   6A47                   push    $47
005ACE27   00A042460034           add     [eax+$34004642], ah
005ACE2D   7D47                   jnl     005ACE76
005ACE2F   004882                 add     [eax-$7E], cl
005ACE32   47                     inc     edi
005ACE33   00748047               add     [eax+eax*4+$47], dh
005ACE37   0038                   add     [eax], bh
005ACE39   43                     inc     ebx
005ACE3A   46                     inc     esi
005ACE3B   005C4346               add     [ebx+eax*2+$46], bl
005ACE3F   00C4                   add     ah, al
005ACE41   834700C8               add     dword ptr [edi+$00], -$38
005ACE45   844700                 test    [edi+$00], al
005ACE48   94                     xchg    eax, esp
005ACE49   41                     inc     ecx
005ACE4A   46                     inc     esi
005ACE4B   00A08C4600F8           add     [eax+$F800468C], ah
005ACE51   7746                   jnbe    005ACE99
005ACE53   0000                   add     [eax], al

005ACE55   8C4700                 mov     word ptr [edi+$00], es
005ACE58   148C                   adc     al, $8C
005ACE5A   46                     inc     esi
005ACE5B   006874                 add     [eax+$74], ch
005ACE5E   46                     inc     esi
005ACE5F   00648D46               add     [ebp+ecx*4+$46], ah
005ACE63   0088A34700A8           add     [eax+$A80047A3], cl
005ACE69   49                     dec     ecx
005ACE6A   47                     inc     edi
005ACE6B   00584C                 add     [eax+$4C], bl
005ACE6E   47                     inc     edi
005ACE6F   004093                 add     [eax-$6D], al
005ACE72   47                     inc     edi
005ACE73   00905647000C           add     [eax+$C004756], dl
005ACE79   57                     push    edi
005ACE7A   47                     inc     edi
005ACE7B   00D4                   add     ah, dl
005ACE7D   A7                     cmpsd
005ACE7E   47                     inc     edi
005ACE7F   00A45347006CA2         add     [ebx+edx*2+$A26C0047], ah
005ACE86   47                     inc     edi
005ACE87   009C86470060A4         add     [esi+eax*4+$A4600047], bl
005ACE8E   47                     inc     edi
005ACE8F   00C4                   add     ah, al
005ACE91   61                     popa
005ACE92   47                     inc     edi
005ACE93   000B                   add     [ebx], cl
005ACE95   0057CF                 add     [edi-$31], dl
005ACE98   5A                     pop     edx
005ACE99   006003                 add     [eax+$03], ah
005ACE9C   0000                   add     [eax], al

*)
end;

procedure TPasswordDialog._PROC_005ACF32(Sender : TObject);
begin
(*
005ACF32   7365                   jnb     005ACF99
005ACF34   724E                   jb      005ACF84
005ACF36   61                     popa
005ACF37   6D                     insd
005ACF38   650100                 add     gs:[eax], eax
005ACF3B   0F00A0D35A0008         verr    word ptr [eax+$8005AD3]
005ACF42   46                     inc     esi
005ACF43   6F                     outsd
005ACF44   726D                   jb      005ACFB3
005ACF46   53                     push    ebx
005ACF47   686F770C54             push    $540C776F
005ACF4C   4C                     dec     esp
005ACF4D   6F                     outsd
005ACF4E   67696E4469616C6F       imul    ebp, [bp+$44], $6F6C6169
005ACF56   67050024B444           add     eax, +$44B42400
005ACF5C   0064AF44               add     [edi+ebp*4+$44], ah
005ACF60   00E4                   add     ah, ah
005ACF62   B543                   mov     ch, $43
005ACF64   0094E74300ECBE         add     [edi+$BEEC0043], dl
005ACF6B   43                     inc     ebx
005ACF6C   008D400074CF           add     [ebp+$CF740040], cl
005ACF72   5A                     pop     edx
005ACF73   0007                   add     [edi], al
005ACF75   0C54                   or      al, $54
005ACF77   4C                     dec     esp
005ACF78   6F                     outsd
005ACF79   67696E4469616C6F       imul    ebp, [bp+$44], $6F6C6169
005ACF81   6790                   nop
005ACF83   CD5A                   int     $5A
005ACF85   007025                 add     [eax+$25], dh
005ACF88   47                     inc     edi
005ACF89   006800                 add     [eax+$00], ch
005ACF8C   0844424C               or      [edx+eax*2+$4C], al
005ACF90   6F                     outsd
005ACF91   6744                   inc     esp
005ACF93   6C                     insb
005ACF94   670000                 add     [bx+si], al
005ACF97   90                     nop
005ACF98   55                     push    ebp
005ACF99   8BEC                   mov     ebp, esp
005ACF9B   83C4F0                 add     esp, -$10
005ACF9E   53                     push    ebx
005ACF9F   56                     push    esi
005ACFA0   57                     push    edi
005ACFA1   33DB                   xor     ebx, ebx
005ACFA3   895DF0                 mov     [ebp-$10], ebx
005ACFA6   895DF4                 mov     [ebp-$0C], ebx
005ACFA9   8BF9                   mov     edi, ecx
005ACFAB   8BDA                   mov     ebx, edx
005ACFAD   8BF0                   mov     esi, eax
005ACFAF   33C0                   xor     eax, eax
005ACFB1   55                     push    ebp
005ACFB2   689CD05A00             push    $005AD09C

***** TRY
|
005ACFB7   64FF30                 push    dword ptr fs:[eax]
005ACFBA   648920                 mov     fs:[eax], esp
005ACFBD   8B0DA4FA6300           mov     ecx, [$0063FAA4]
005ACFC3   8B09                   mov     ecx, [ecx]
005ACFC5   B201                   mov     dl, $01

* Reference to class TLoginDialog
|
005ACFC7   A144CD5A00             mov     eax, dword ptr [$005ACD44]

* Reference to : TApplication._PROC_004751E0()
|
005ACFCC   E80F82ECFF             call    004751E0
005ACFD1   8945F8                 mov     [ebp-$08], eax
005ACFD4   33C0                   xor     eax, eax
005ACFD6   55                     push    ebp
005ACFD7   687AD05A00             push    $005AD07A

***** TRY
|
005ACFDC   64FF30                 push    dword ptr fs:[eax]
005ACFDF   648920                 mov     fs:[eax], esp
005ACFE2   8B45F8                 mov     eax, [ebp-$08]

* Reference to control TLoginDialog.DatabaseName : TLabel
|
005ACFE5   8B8068030000           mov     eax, [eax+$0368]
005ACFEB   8BD6                   mov     edx, esi

|
005ACFED   E83E2BEBFF             call    0045FB30
005ACFF2   8B13                   mov     edx, [ebx]
005ACFF4   8B45F8                 mov     eax, [ebp-$08]

* Reference to control TLoginDialog.UserName : TEdit
|
005ACFF7   8B8088030000           mov     eax, [eax+$0388]

|
005ACFFD   E82E2BEBFF             call    0045FB30
005AD002   C645FF00               mov     byte ptr [ebp-$01], $00
005AD006   833B00                 cmp     dword ptr [ebx], +$00
005AD009   7511                   jnz     005AD01C
005AD00B   8B45F8                 mov     eax, [ebp-$08]

* Reference to control TLoginDialog.UserName : TEdit
|
005AD00E   8B9088030000           mov     edx, [eax+$0388]
005AD014   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TApplication._PROC_00478570()
|
005AD017   E854B5ECFF             call    00478570
005AD01C   8B45F8                 mov     eax, [ebp-$08]
005AD01F   8B10                   mov     edx, [eax]

* Possible reference to virtual method TLoginDialog.OFFS_00FC
|
005AD021   FF92FC000000           call    dword ptr [edx+$00FC]
005AD027   48                     dec     eax
005AD028   753A                   jnz     005AD064
005AD02A   8D55F4                 lea     edx, [ebp-$0C]
005AD02D   8B45F8                 mov     eax, [ebp-$08]

* Reference to control TLoginDialog.UserName : TEdit
|
005AD030   8B8088030000           mov     eax, [eax+$0388]

|
005AD036   E8C52AEBFF             call    0045FB00
005AD03B   8B55F4                 mov     edx, [ebp-$0C]
005AD03E   8BC3                   mov     eax, ebx

|
005AD040   E8B388E5FF             call    004058F8
005AD045   8D55F0                 lea     edx, [ebp-$10]
005AD048   8B45F8                 mov     eax, [ebp-$08]

* Reference to control TLoginDialog.Password : TEdit
|
005AD04B   8B8084030000           mov     eax, [eax+$0384]

|
005AD051   E8AA2AEBFF             call    0045FB00
005AD056   8B55F0                 mov     edx, [ebp-$10]
005AD059   8BC7                   mov     eax, edi

|
005AD05B   E89888E5FF             call    004058F8
005AD060   C645FF01               mov     byte ptr [ebp-$01], $01
005AD064   33C0                   xor     eax, eax
005AD066   5A                     pop     edx
005AD067   59                     pop     ecx
005AD068   59                     pop     ecx
005AD069   648910                 mov     fs:[eax], edx

****** FINALLY
|
005AD06C   6881D05A00             push    $005AD081
005AD071   8B45F8                 mov     eax, [ebp-$08]

|
005AD074   E84778E5FF             call    004048C0
005AD079   C3                     ret


|
005AD07A   E91580E5FF             jmp     00405094
005AD07F   EBF0                   jmp     005AD071

****** END
|
005AD081   33C0                   xor     eax, eax
005AD083   5A                     pop     edx
005AD084   59                     pop     ecx
005AD085   59                     pop     ecx
005AD086   648910                 mov     fs:[eax], edx

****** FINALLY
|
005AD089   68A3D05A00             push    $005AD0A3
005AD08E   8D45F0                 lea     eax, [ebp-$10]
005AD091   BA02000000             mov     edx, $00000002

|
005AD096   E82D88E5FF             call    004058C8
005AD09B   C3                     ret


|
005AD09C   E9F37FE5FF             jmp     00405094
005AD0A1   EBEB                   jmp     005AD08E

****** END
|
005AD0A3   0FB645FF               movzx   eax, byte ptr [ebp-$01]
005AD0A7   5F                     pop     edi
005AD0A8   5E                     pop     esi
005AD0A9   5B                     pop     ebx
005AD0AA   8BE5                   mov     esp, ebp
005AD0AC   5D                     pop     ebp
005AD0AD   C3                     ret

*)
end;

end.