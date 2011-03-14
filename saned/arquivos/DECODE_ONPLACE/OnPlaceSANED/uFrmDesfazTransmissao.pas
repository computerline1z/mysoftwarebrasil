unit uFrmDesfazTransmissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls
type
  TFrmDesfazTransmissao=class(TForm)
    ListBox: TListBox;
    sbtnConfirmar: TSpeedButton;
    ProgressBar: TProgressBar;
    procedure sbtnConfirmarClick(Sender : TObject);
    procedure _PROC_005A9440(Sender : TObject);
    procedure _PROC_005A9922(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmDesfazTransmissao: TFrmDesfazTransmissao;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TFrmDesfazTransmissao.sbtnConfirmarClick(Sender : TObject);
begin
(*
005A957C   55                     push    ebp
005A957D   8BEC                   mov     ebp, esp
005A957F   B906000000             mov     ecx, $00000006
005A9584   6A00                   push    $00
005A9586   6A00                   push    $00
005A9588   49                     dec     ecx
005A9589   75F9                   jnz     005A9584
005A958B   51                     push    ecx
005A958C   53                     push    ebx
005A958D   56                     push    esi
005A958E   57                     push    edi
005A958F   8BD8                   mov     ebx, eax
005A9591   33C0                   xor     eax, eax
005A9593   55                     push    ebp

* Possible String Reference to: '鬸����_^[��]�'
|
005A9594   68E3975A00             push    $005A97E3

***** TRY
|
005A9599   64FF30                 push    dword ptr fs:[eax]
005A959C   648920                 mov     fs:[eax], esp
005A959F   33D2                   xor     edx, edx
005A95A1   8BC3                   mov     eax, ebx

|
005A95A3   E8C015FCFF             call    0056AB68

* Reference to control TFrmDesfazTransmissao.ListBox : TListBox
|
005A95A8   8B8380030000           mov     eax, [ebx+$0380]
005A95AE   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
005A95B0   FF92DC000000           call    dword ptr [edx+$00DC]
005A95B6   40                     inc     eax
005A95B7   7504                   jnz     005A95BD
005A95B9   B001                   mov     al, $01
005A95BB   EB42                   jmp     005A95FF

* Reference to control TFrmDesfazTransmissao.ListBox : TListBox
|
005A95BD   8BB380030000           mov     esi, [ebx+$0380]
005A95C3   8BC6                   mov     eax, esi
005A95C5   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
005A95C7   FF92DC000000           call    dword ptr [edx+$00DC]
005A95CD   8BD0                   mov     edx, eax
005A95CF   8D4DF4                 lea     ecx, [ebp-$0C]

* Reference to field TListBox.OFFS_0260
|
005A95D2   8B8660020000           mov     eax, [esi+$0260]
005A95D8   8B30                   mov     esi, [eax]
005A95DA   FF560C                 call    dword ptr [esi+$0C]
005A95DD   8B45F4                 mov     eax, [ebp-$0C]
005A95E0   8D55F8                 lea     edx, [ebp-$08]

|
005A95E3   E86C13E6FF             call    0040A954
005A95E8   8B45F8                 mov     eax, [ebp-$08]
005A95EB   8945F0                 mov     [ebp-$10], eax
005A95EE   8B45F0                 mov     eax, [ebp-$10]
005A95F1   85C0                   test    eax, eax
005A95F3   7405                   jz      005A95FA
005A95F5   83E804                 sub     eax, +$04
005A95F8   8B00                   mov     eax, [eax]
005A95FA   85C0                   test    eax, eax
005A95FC   0F94C0                 setz    al
005A95FF   84C0                   test    al, al
005A9601   7431                   jz      005A9634
005A9603   6A00                   push    $00
005A9605   0FB70DF4975A00         movzx   ecx, word ptr [$005A97F4]
005A960C   B202                   mov     dl, $02

* Possible String Reference to: 'Selecione um Roteiro !'
|
005A960E   B800985A00             mov     eax, $005A9800

|
005A9613   E89075EAFF             call    00450BA8

* Reference to control TFrmDesfazTransmissao.ListBox : TListBox
|
005A9618   8B8380030000           mov     eax, [ebx+$0380]
005A961E   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00D4
|
005A9620   FF92D4000000           call    dword ptr [edx+$00D4]
005A9626   B201                   mov     dl, $01
005A9628   8BC3                   mov     eax, ebx

|
005A962A   E83915FCFF             call    0056AB68
005A962F   E987010000             jmp     005A97BB
005A9634   8D45EC                 lea     eax, [ebp-$14]
005A9637   50                     push    eax

* Reference to control TFrmDesfazTransmissao.ListBox : TListBox
|
005A9638   8BB380030000           mov     esi, [ebx+$0380]
005A963E   8BC6                   mov     eax, esi
005A9640   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
005A9642   FF92DC000000           call    dword ptr [edx+$00DC]
005A9648   8BD0                   mov     edx, eax
005A964A   8D4DE8                 lea     ecx, [ebp-$18]

* Reference to field TListBox.OFFS_0260
|
005A964D   8B8660020000           mov     eax, [esi+$0260]
005A9653   8B30                   mov     esi, [eax]
005A9655   FF560C                 call    dword ptr [esi+$0C]
005A9658   8B45E8                 mov     eax, [ebp-$18]
005A965B   B902000000             mov     ecx, $00000002
005A9660   BA07000000             mov     edx, $00000007

|
005A9665   E85EC7E5FF             call    00405DC8
005A966A   8B45EC                 mov     eax, [ebp-$14]

|
005A966D   E8D21BE6FF             call    0040B244
005A9672   8BF0                   mov     esi, eax
005A9674   8D45E4                 lea     eax, [ebp-$1C]
005A9677   50                     push    eax

* Reference to control TFrmDesfazTransmissao.ListBox : TListBox
|
005A9678   8B8380030000           mov     eax, [ebx+$0380]
005A967E   8B10                   mov     edx, [eax]

* Possible reference to virtual method TListBox.OFFS_00DC
|
005A9680   FF92DC000000           call    dword ptr [edx+$00DC]
005A9686   8BD0                   mov     edx, eax
005A9688   8D4DE0                 lea     ecx, [ebp-$20]

* Reference to control TFrmDesfazTransmissao.ListBox : TListBox
|
005A968B   8B8380030000           mov     eax, [ebx+$0380]

* Reference to field TListBox.OFFS_0260
|
005A9691   8B8060020000           mov     eax, [eax+$0260]
005A9697   8B38                   mov     edi, [eax]
005A9699   FF570C                 call    dword ptr [edi+$0C]
005A969C   8B45E0                 mov     eax, [ebp-$20]
005A969F   B903000000             mov     ecx, $00000003
005A96A4   BA15000000             mov     edx, $00000015

|
005A96A9   E81AC7E5FF             call    00405DC8
005A96AE   8B45E4                 mov     eax, [ebp-$1C]

|
005A96B1   E88E1BE6FF             call    0040B244
005A96B6   8BF8                   mov     edi, eax

* Reference to control TFrmDesfazTransmissao.ProgressBar : TProgressBar
|
005A96B8   8B8388030000           mov     eax, [ebx+$0388]
005A96BE   50                     push    eax
005A96BF   8D45FC                 lea     eax, [ebp-$04]
005A96C2   50                     push    eax
005A96C3   A1B0FD6300             mov     eax, dword ptr [$0063FDB0]
005A96C8   8B00                   mov     eax, [eax]
005A96CA   8BCF                   mov     ecx, edi
005A96CC   8BD6                   mov     edx, esi

|
005A96CE   E80982FDFF             call    005818DC
005A96D3   84C0                   test    al, al
005A96D5   7543                   jnz     005A971A
005A96D7   6A00                   push    $00
005A96D9   0FB70DF4975A00         movzx   ecx, word ptr [$005A97F4]
005A96E0   B201                   mov     dl, $01
005A96E2   8B45FC                 mov     eax, [ebp-$04]

|
005A96E5   E8BE74EAFF             call    00450BA8
005A96EA   6A00                   push    $00
005A96EC   0FB70DF4975A00         movzx   ecx, word ptr [$005A97F4]
005A96F3   B201                   mov     dl, $01

* Possible String Reference to: 'N�o Foi Poss�vel Desfazer Transmiss
|                                �o para este Roteiro.Tentar Novamen
|                                te.'
|
005A96F5   B820985A00             mov     eax, $005A9820

|
005A96FA   E8A974EAFF             call    00450BA8
005A96FF   33D2                   xor     edx, edx

* Reference to control TFrmDesfazTransmissao.ProgressBar : TProgressBar
|
005A9701   8B8388030000           mov     eax, [ebx+$0388]

* Reference to : TTabStrings._PROC_004C93E4()
|
005A9707   E8D8FCF1FF             call    004C93E4
005A970C   B201                   mov     dl, $01
005A970E   8BC3                   mov     eax, ebx

|
005A9710   E85314FCFF             call    0056AB68
005A9715   E9A1000000             jmp     005A97BB
005A971A   6A00                   push    $00

* Possible String Reference to: 'Desfeita Transmiss�o para Rota '
|
005A971C   6874985A00             push    $005A9874
005A9721   8D55D4                 lea     edx, [ebp-$2C]
005A9724   8BC7                   mov     eax, edi

|
005A9726   E8C918E6FF             call    0040AFF4
005A972B   8B45D4                 mov     eax, [ebp-$2C]
005A972E   8D4DD8                 lea     ecx, [ebp-$28]
005A9731   BA03000000             mov     edx, $00000003

* Reference to : TfrmBaseClient._PROC_00577BF4()
|
005A9736   E8B9E4FCFF             call    00577BF4
005A973B   FF75D8                 push    dword ptr [ebp-$28]

* Possible String Reference to: ' do Grupo '
|
005A973E   689C985A00             push    $005A989C
005A9743   8D55CC                 lea     edx, [ebp-$34]
005A9746   8BC6                   mov     eax, esi

|
005A9748   E8A718E6FF             call    0040AFF4
005A974D   8B45CC                 mov     eax, [ebp-$34]
005A9750   8D4DD0                 lea     ecx, [ebp-$30]
005A9753   BA02000000             mov     edx, $00000002

* Reference to : TfrmBaseClient._PROC_00577BF4()
|
005A9758   E897E4FCFF             call    00577BF4
005A975D   FF75D0                 push    dword ptr [ebp-$30]
005A9760   8D45DC                 lea     eax, [ebp-$24]
005A9763   BA04000000             mov     edx, $00000004

|
005A9768   E8BBC4E5FF             call    00405C28
005A976D   8B45DC                 mov     eax, [ebp-$24]
005A9770   0FB70DF4975A00         movzx   ecx, word ptr [$005A97F4]
005A9777   B202                   mov     dl, $02

|
005A9779   E82A74EAFF             call    00450BA8
005A977E   33D2                   xor     edx, edx

* Reference to control TFrmDesfazTransmissao.ProgressBar : TProgressBar
|
005A9780   8B8388030000           mov     eax, [ebx+$0388]

* Reference to : TTabStrings._PROC_004C93E4()
|
005A9786   E859FCF1FF             call    004C93E4
005A978B   8BC3                   mov     eax, ebx

|
005A978D   E826FBFFFF             call    005A92B8
005A9792   84C0                   test    al, al
005A9794   751C                   jnz     005A97B2
005A9796   6A00                   push    $00
005A9798   0FB70DF4975A00         movzx   ecx, word ptr [$005A97F4]
005A979F   B202                   mov     dl, $02

* Possible String Reference to: 'N�o Existe Mais Nenhum Roteiro Para
|                                 Desfazer Transmiss�o.'
|
005A97A1   B8B0985A00             mov     eax, $005A98B0

|
005A97A6   E8FD73EAFF             call    00450BA8
005A97AB   8BC3                   mov     eax, ebx

* Reference to : TApplication._PROC_0047A1C8()
|
005A97AD   E8160AEDFF             call    0047A1C8
005A97B2   B201                   mov     dl, $01
005A97B4   8BC3                   mov     eax, ebx

|
005A97B6   E8AD13FCFF             call    0056AB68
005A97BB   33C0                   xor     eax, eax
005A97BD   5A                     pop     edx
005A97BE   59                     pop     ecx
005A97BF   59                     pop     ecx
005A97C0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[��]�'
|
005A97C3   68EA975A00             push    $005A97EA
005A97C8   8D45CC                 lea     eax, [ebp-$34]
005A97CB   BA09000000             mov     edx, $00000009

|
005A97D0   E8F3C0E5FF             call    004058C8
005A97D5   8D45F4                 lea     eax, [ebp-$0C]
005A97D8   BA03000000             mov     edx, $00000003

|
005A97DD   E8E6C0E5FF             call    004058C8
005A97E2   C3                     ret


|
005A97E3   E9ACB8E5FF             jmp     00405094
005A97E8   EBDE                   jmp     005A97C8

****** END
|
005A97EA   5F                     pop     edi
005A97EB   5E                     pop     esi
005A97EC   5B                     pop     ebx
005A97ED   8BE5                   mov     esp, ebp
005A97EF   5D                     pop     ebp
005A97F0   C3                     ret

*)
end;

procedure TFrmDesfazTransmissao._PROC_005A9440(Sender : TObject);
begin
(*
005A9440   1400                   adc     al, $00
005A9442   0000                   add     [eax], al

*)
end;

procedure TFrmDesfazTransmissao._PROC_005A9922(Sender : TObject);
begin
(*
005A9922   47                     inc     edi
005A9923   001C4B                 add     [ebx+ecx*2], bl
005A9926   40                     inc     eax
005A9927   000C8547005848         add     [$48580047+eax*4], cl
005A992E   40                     inc     eax
005A992F   00744840               add     [eax+ecx*2+$40], dh
005A9933   00905547008C           add     [eax+$8C004755], dl
005A9939   844600                 test    [esi+$00], al
005A993C   845B47                 test    [ebx+$47], bl
005A993F   000C31                 add     [ecx+esi], cl
005A9942   42                     inc     edx
005A9943   006C5747               add     [edi+edx*2+$47], ch
005A9947   00B8574700F4           add     [eax+$F4004757], bh
005A994D   58                     pop     eax
005A994E   47                     inc     edi
005A994F   00E8                   add     al, ch
005A9951   F8                     clc
005A9952   45                     inc     ebp
005A9953   0094C542008462         add     [ebp+eax*8+$62840042], dl
005A995A   47                     inc     edi
005A995B   0070C2                 add     [eax-$3E], dh
005A995E   42                     inc     edx
005A995F   0070AB                 add     [eax-$55], dh
005A9962   47                     inc     edi
005A9963   00E0                   add     al, ah
005A9965   51                     push    ecx
005A9966   47                     inc     edi
005A9967   00B07E4600BC           add     [eax+$BC00467E], dh
005A996D   844600                 test    [esi+$00], al
005A9970   08844600B0EB45         or      [esi+eax*2+$45EBB000], al
005A9977   002C79                 add     [ecx+edi*2], ch
005A997A   46                     inc     esi
005A997B   00B85E4700B8           add     [eax+$B800475E], bh
005A9981   7546                   jnz     005A99C9
005A9983   00F0                   add     al, dh
005A9985   EA4500F4EA             jmp     $EAF40045
005A998A   45                     inc     ebp
005A998B   00AC5F47006C24         add     [edi+ebx*2+$246C0047], ch
005A9992   46                     inc     esi
005A9993   003CA8                 add     [eax+ebp*4], bh
005A9996   47                     inc     edi
005A9997   00CC                   add     ah, cl
005A9999   F8                     clc
005A999A   45                     inc     ebp
005A999B   002CED450058FA         add     [$FA580045+ebp*8], ch
005A99A2   45                     inc     ebp
005A99A3   00C8                   add     al, cl
005A99A5   61                     popa
005A99A6   47                     inc     edi
005A99A7   008460470094FB         add     [eax+$FB940047], al
005A99AE   45                     inc     ebp
005A99AF   00C4                   add     ah, al
005A99B1   624700                 bound   eax, qword ptr [edi+$00]
005A99B4   F0                     lock
005A99B5   2446                   and     al, $46
005A99B7   000C76                 add     [esi+esi*2], cl
005A99BA   46                     inc     esi
005A99BB   00CC                   add     ah, cl
005A99BD   7646                   jbe     005A9A05
005A99BF   00C0                   add     al, al
005A99C1   7146                   jno     005A9A09
005A99C3   00B0764600C8           add     [eax+$C8004676], dh
005A99C9   4F                     dec     edi
005A99CA   47                     inc     edi
005A99CB   0008                   add     [eax], cl
005A99CD   6A47                   push    $47
005A99CF   00A042460034           add     [eax+$34004642], ah
005A99D5   7D47                   jnl     005A9A1E
005A99D7   004882                 add     [eax-$7E], cl
005A99DA   47                     inc     edi
005A99DB   00748047               add     [eax+eax*4+$47], dh
005A99DF   0038                   add     [eax], bh
005A99E1   43                     inc     ebx
005A99E2   46                     inc     esi
005A99E3   005C4346               add     [ebx+eax*2+$46], bl
005A99E7   00C4                   add     ah, al
005A99E9   834700C8               add     dword ptr [edi+$00], -$38
005A99ED   844700                 test    [edi+$00], al
005A99F0   94                     xchg    eax, esp
005A99F1   41                     inc     ecx
005A99F2   46                     inc     esi
005A99F3   00A08C4600F8           add     [eax+$F800468C], ah
005A99F9   7746                   jnbe    005A9A41
005A99FB   0000                   add     [eax], al

005A99FD   8C4700                 mov     word ptr [edi+$00], es
005A9A00   148C                   adc     al, $8C
005A9A02   46                     inc     esi
005A9A03   006874                 add     [eax+$74], ch
005A9A06   46                     inc     esi
005A9A07   00648D46               add     [ebp+ecx*4+$46], ah
005A9A0B   0088A34700A8           add     [eax+$A80047A3], cl
005A9A11   49                     dec     ecx
005A9A12   47                     inc     edi
005A9A13   00584C                 add     [eax+$4C], bl
005A9A16   47                     inc     edi
005A9A17   004093                 add     [eax-$6D], al
005A9A1A   47                     inc     edi
005A9A1B   00905647000C           add     [eax+$C004756], dl
005A9A21   57                     push    edi
005A9A22   47                     inc     edi
005A9A23   00D4                   add     ah, dl
005A9A25   A7                     cmpsd
005A9A26   47                     inc     edi
005A9A27   00A45347006CA2         add     [ebx+edx*2+$A26C0047], ah
005A9A2E   47                     inc     edi
005A9A2F   009C86470060A4         add     [esi+eax*4+$A4600047], bl
005A9A36   47                     inc     edi
005A9A37   00C4                   add     ah, al
005A9A39   61                     popa
005A9A3A   47                     inc     edi
005A9A3B   001C9B                 add     [ebx+ebx*4], bl
005A9A3E   5A                     pop     edx
005A9A3F   000A                   add     [edx], cl
005A9A41   00E5                   add     ch, ah
005A9A43   9A5A008003             call    $380005A
005A9A48   0000                   add     [eax], al

*)
end;

end.