unit uFrmColetores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls
type
  TfrmColetores=class(TForm)
    Label1: TLabel [0];
    Label3: TLabel [1];
    DBEdMaleta: TDBEdit [9];
    Label4: TLabel [2];
    DBEdGrupo: TDBEdit [10];
    Label5: TLabel [3];
    DBEdRota: TDBEdit [11];
    Label6: TLabel [4];
    DBEdData: TDBEdit [12];
    Label7: TLabel [5];
    DBEdTexto: TDBEdit [13];
    DBLCmbAgente: TDBLookupComboBox [14];
    qryAgente: TQuery;
    DSAgente: TDataSource;
    tbPrincipalpe_nome_agente: TStringField;
    tbPrincipalpe_agente: TIntegerField;
    tbPrincipalpe_maleta: TIntegerField;
    tbPrincipalpe_grupo: TIntegerField;
    tbPrincipalpe_rota: TIntegerField;
    tbPrincipalpe_data: TDateTimeField;
    tbPrincipalpe_descricao: TStringField;
    qryAgenteag_codigo: TIntegerField;
    qryAgenteag_nome: TStringField;
    qryAgenteagente: TStringField;
    OFFS_03BC: N.A.;
    procedure sbtnConfirmaClick(Sender : TObject);
    procedure sbtnIncluirClick(Sender : TObject);
    procedure sbtnExcluirClick(Sender : TObject);
    procedure _PROC_00609A5C(Sender : TObject);
    procedure _PROC_0060A089(Sender : TObject);
    procedure _PROC_0060A14C(Sender : TObject);
    procedure _PROC_0060A196(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  frmColetores: TfrmColetores;

{This file is generated by DeDe Ver 3.50.04 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmColetores.sbtnConfirmaClick(Sender : TObject);
begin
(*
00609E74   56                     push    esi
00609E75   8BF0                   mov     esi, eax
00609E77   8BC6                   mov     eax, esi

* Reference to : TfrmBaseClientTabela.sbtnConfirmaClick()
|
00609E79   E86EF6FBFF             call    005C94EC

* Reference to field TfrmColetores.OFFS_03A0
|
00609E7E   8B86A0030000           mov     eax, [esi+$03A0]

|
00609E84   E88746E9FF             call    0049E510
00609E89   8BC6                   mov     eax, esi
00609E8B   8B10                   mov     edx, [eax]

* Possible reference to virtual method TfrmColetores.OFFS_0104
|
00609E8D   FF9204010000           call    dword ptr [edx+$0104]
00609E93   5E                     pop     esi
00609E94   C3                     ret

*)
end;

procedure TfrmColetores.sbtnIncluirClick(Sender : TObject);
begin
(*
0060A088   55                     push    ebp
0060A089   8BEC                   mov     ebp, esp
0060A08B   83C4D8                 add     esp, -$28
0060A08E   56                     push    esi
0060A08F   33C9                   xor     ecx, ecx
0060A091   894DD8                 mov     [ebp-$28], ecx
0060A094   894DDC                 mov     [ebp-$24], ecx
0060A097   894DE0                 mov     [ebp-$20], ecx
0060A09A   894DE4                 mov     [ebp-$1C], ecx
0060A09D   8BF0                   mov     esi, eax
0060A09F   33C0                   xor     eax, eax
0060A0A1   55                     push    ebp
0060A0A2   6840A16000             push    $0060A140

***** TRY
|
0060A0A7   64FF30                 push    dword ptr fs:[eax]
0060A0AA   648920                 mov     fs:[eax], esp
0060A0AD   8BC6                   mov     eax, esi

* Reference to : TfrmBaseClientTabela.sbtnIncluirClick()
|
0060A0AF   E810F3FBFF             call    005C93C4

* Reference to field TfrmColetores.OFFS_03A0
|
0060A0B4   8B86A0030000           mov     eax, [esi+$03A0]
0060A0BA   80B89D00000003         cmp     byte ptr [eax+$009D], $03
0060A0C1   7567                   jnz     0060A12A

|
0060A0C3   E8BC41E0FF             call    0040E284
0060A0C8   83C4F8                 add     esp, -$08
0060A0CB   DD1C24                 fstp    qword ptr [esp]
0060A0CE   9B                     wait
0060A0CF   8D45F0                 lea     eax, [ebp-$10]
0060A0D2   50                     push    eax
0060A0D3   8D4DF2                 lea     ecx, [ebp-$0E]
0060A0D6   8D55F4                 lea     edx, [ebp-$0C]
0060A0D9   8D45F6                 lea     eax, [ebp-$0A]

|
0060A0DC   E81B3EE0FF             call    0040DEFC
0060A0E1   6A00                   push    $00
0060A0E3   33C9                   xor     ecx, ecx
0060A0E5   0FB755F4               movzx   edx, word ptr [ebp-$0C]
0060A0E9   0FB745F6               movzx   eax, word ptr [ebp-$0A]

|
0060A0ED   E8CA3DE0FF             call    0040DEBC
0060A0F2   DD5DE8                 fstp    qword ptr [ebp-$18]
0060A0F5   9B                     wait

|
0060A0F6   E82941E0FF             call    0040E224
0060A0FB   DC45E8                 fadd    qword ptr [ebp-$18]
0060A0FE   DD5DF8                 fstp    qword ptr [ebp-$08]
0060A101   9B                     wait
0060A102   BA50A16000             mov     edx, $0060A150

* Reference to field TfrmColetores.OFFS_03A0
|
0060A107   8B86A0030000           mov     eax, [esi+$03A0]

|
0060A10D   E82657E9FF             call    0049F838
0060A112   50                     push    eax
0060A113   DD45F8                 fld     qword ptr [ebp-$08]
0060A116   8D45D8                 lea     eax, [ebp-$28]

|
0060A119   E822F9E0FF             call    00419A40
0060A11E   8D55D8                 lea     edx, [ebp-$28]
0060A121   58                     pop     eax
0060A122   8B08                   mov     ecx, [eax]
0060A124   FF91C0000000           call    dword ptr [ecx+$00C0]
0060A12A   33C0                   xor     eax, eax
0060A12C   5A                     pop     edx
0060A12D   59                     pop     ecx
0060A12E   59                     pop     ecx
0060A12F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0060A132   6847A16000             push    $0060A147
0060A137   8D45D8                 lea     eax, [ebp-$28]

|
0060A13A   E8DDB1E0FF             call    0041531C
0060A13F   C3                     ret


|
0060A140   E94FAFDFFF             jmp     00405094
0060A145   EBF0                   jmp     0060A137

****** END
|
0060A147   5E                     pop     esi
0060A148   8BE5                   mov     esp, ebp
0060A14A   5D                     pop     ebp
0060A14B   C3                     ret

*)
end;

procedure TfrmColetores.sbtnExcluirClick(Sender : TObject);
begin
(*
00609E98   55                     push    ebp
00609E99   8BEC                   mov     ebp, esp
00609E9B   33C9                   xor     ecx, ecx
00609E9D   51                     push    ecx
00609E9E   51                     push    ecx
00609E9F   51                     push    ecx
00609EA0   51                     push    ecx
00609EA1   51                     push    ecx
00609EA2   51                     push    ecx
00609EA3   51                     push    ecx
00609EA4   53                     push    ebx
00609EA5   56                     push    esi
00609EA6   8BD8                   mov     ebx, eax
00609EA8   8B35C8FC6300           mov     esi, [$0063FCC8]
00609EAE   33C0                   xor     eax, eax
00609EB0   55                     push    ebp

* Possible String Reference to: '�ΰ����^[��]�'
|
00609EB1   68C19F6000             push    $00609FC1

***** TRY
|
00609EB6   64FF30                 push    dword ptr fs:[eax]
00609EB9   648920                 mov     fs:[eax], esp
00609EBC   8B06                   mov     eax, [esi]
00609EBE   8B4064                 mov     eax, [eax+$64]

|
00609EC1   E84A46E9FF             call    0049E510
00609EC6   8B06                   mov     eax, [esi]
00609EC8   8B4064                 mov     eax, [eax+$64]
00609ECB   8B8048020000           mov     eax, [eax+$0248]
00609ED1   8B10                   mov     edx, [eax]
00609ED3   FF5244                 call    dword ptr [edx+$44]
00609ED6   8B06                   mov     eax, [esi]
00609ED8   8B4064                 mov     eax, [eax+$64]
00609EDB   8B8048020000           mov     eax, [eax+$0248]

* Possible String Reference to: 'delete from problema_equipamento'
|
00609EE1   BAD89F6000             mov     edx, $00609FD8
00609EE6   8B08                   mov     ecx, [eax]
00609EE8   FF5138                 call    dword ptr [ecx+$38]
00609EEB   BA00A06000             mov     edx, $0060A000

* Reference to field TfrmColetores.OFFS_03A0
|
00609EF0   8B83A0030000           mov     eax, [ebx+$03A0]

|
00609EF6   E83D59E9FF             call    0049F838
00609EFB   8B10                   mov     edx, [eax]
00609EFD   FF5250                 call    dword ptr [edx+$50]
00609F00   DD5DF0                 fstp    qword ptr [ebp-$10]
00609F03   9B                     wait
00609F04   FF75F4                 push    dword ptr [ebp-$0C]
00609F07   FF75F0                 push    dword ptr [ebp-$10]
00609F0A   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'yyyymmdd hh:nn'
|
00609F0D   BA18A06000             mov     edx, $0060A018

|
00609F12   E86D4FE0FF             call    0040EE84

* Possible String Reference to: 'where  pe_data   = ''
|
00609F17   6830A06000             push    $0060A030
00609F1C   FF75FC                 push    dword ptr [ebp-$04]
00609F1F   6850A06000             push    $0060A050
00609F24   8D45EC                 lea     eax, [ebp-$14]
00609F27   BA03000000             mov     edx, $00000003

|
00609F2C   E8F7BCDFFF             call    00405C28
00609F31   8B55EC                 mov     edx, [ebp-$14]
00609F34   8B06                   mov     eax, [esi]
00609F36   8B4064                 mov     eax, [eax+$64]
00609F39   8B8048020000           mov     eax, [eax+$0248]
00609F3F   8B08                   mov     ecx, [eax]
00609F41   FF5138                 call    dword ptr [ecx+$38]
00609F44   BA58A06000             mov     edx, $0060A058

* Reference to field TfrmColetores.OFFS_03A0
|
00609F49   8B83A0030000           mov     eax, [ebx+$03A0]

|
00609F4F   E8E458E9FF             call    0049F838
00609F54   8D55E4                 lea     edx, [ebp-$1C]
00609F57   8B08                   mov     ecx, [eax]
00609F59   FF5160                 call    dword ptr [ecx+$60]
00609F5C   8B4DE4                 mov     ecx, [ebp-$1C]
00609F5F   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'and    pe_maleta = '
|
00609F62   BA74A06000             mov     edx, $0060A074

|
00609F67   E848BCDFFF             call    00405BB4
00609F6C   8B55E8                 mov     edx, [ebp-$18]
00609F6F   8B06                   mov     eax, [esi]
00609F71   8B4064                 mov     eax, [eax+$64]
00609F74   8B8048020000           mov     eax, [eax+$0248]
00609F7A   8B08                   mov     ecx, [eax]
00609F7C   FF5138                 call    dword ptr [ecx+$38]
00609F7F   8B06                   mov     eax, [esi]
00609F81   8B4064                 mov     eax, [eax+$64]

|
00609F84   E80F0BEBFF             call    004BAA98

* Reference to field TfrmColetores.OFFS_03A0
|
00609F89   8B83A0030000           mov     eax, [ebx+$03A0]

|
00609F8F   E87C45E9FF             call    0049E510
00609F94   8BC3                   mov     eax, ebx
00609F96   8B10                   mov     edx, [eax]

* Possible reference to virtual method TfrmColetores.OFFS_0104
|
00609F98   FF9204010000           call    dword ptr [edx+$0104]
00609F9E   33C0                   xor     eax, eax
00609FA0   5A                     pop     edx
00609FA1   59                     pop     ecx
00609FA2   59                     pop     ecx
00609FA3   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[��]�'
|
00609FA6   68C89F6000             push    $00609FC8
00609FAB   8D45E4                 lea     eax, [ebp-$1C]
00609FAE   BA03000000             mov     edx, $00000003

|
00609FB3   E810B9DFFF             call    004058C8
00609FB8   8D45FC                 lea     eax, [ebp-$04]

|
00609FBB   E8E4B8DFFF             call    004058A4
00609FC0   C3                     ret


|
00609FC1   E9CEB0DFFF             jmp     00405094
00609FC6   EBE3                   jmp     00609FAB

****** END
|
00609FC8   5E                     pop     esi
00609FC9   5B                     pop     ebx
00609FCA   8BE5                   mov     esp, ebp
00609FCC   5D                     pop     ebp
00609FCD   C3                     ret

*)
end;

procedure TfrmColetores._PROC_00609A5C(Sender : TObject);
begin
(*
00609A5C   55                     push    ebp
00609A5D   8BEC                   mov     ebp, esp
00609A5F   33C9                   xor     ecx, ecx
00609A61   51                     push    ecx
00609A62   51                     push    ecx
00609A63   51                     push    ecx
00609A64   51                     push    ecx
00609A65   51                     push    ecx
00609A66   51                     push    ecx
00609A67   51                     push    ecx
00609A68   53                     push    ebx
00609A69   56                     push    esi
00609A6A   57                     push    edi
00609A6B   8BD8                   mov     ebx, eax
00609A6D   33C0                   xor     eax, eax
00609A6F   55                     push    ebp

* Possible String Reference to: '�g������_^[��]�����'
|
00609A70   68289D6000             push    $00609D28

***** TRY
|
00609A75   64FF30                 push    dword ptr fs:[eax]
00609A78   648920                 mov     fs:[eax], esp

* Reference to control TfrmColetores.qryAgente : TQuery
|
00609A7B   8B83F0030000           mov     eax, [ebx+$03F0]

|
00609A81   E88A4AE9FF             call    0049E510

* Reference to control TfrmColetores.qryAgente : TQuery
|
00609A86   8B83F0030000           mov     eax, [ebx+$03F0]

|
00609A8C   E86B4AE9FF             call    0049E4FC

* Reference to field TfrmColetores.OFFS_0378
|
00609A91   8D8378030000           lea     eax, [ebx+$0378]

* Possible String Reference to: 'Vers�o 8.0'
|
00609A97   BA409D6000             mov     edx, $00609D40

|
00609A9C   E857BEDFFF             call    004058F8

* Reference to field TfrmColetores.OFFS_03B4
|
00609AA1   8D83B4030000           lea     eax, [ebx+$03B4]

* Possible String Reference to: 'vw_problema_equipamento'
|
00609AA7   BA549D6000             mov     edx, $00609D54

|
00609AAC   E847BEDFFF             call    004058F8

* Reference to field TfrmColetores.OFFS_03B8
|
00609AB1   8D83B8030000           lea     eax, [ebx+$03B8]

* Possible String Reference to: 'Equipamentos'
|
00609AB7   BA749D6000             mov     edx, $00609D74

|
00609ABC   E837BEDFFF             call    004058F8

* Reference to field TfrmColetores.OFFS_03BC : Byte
|
00609AC1   C683BC03000001         mov     byte ptr [ebx+$03BC], $01
00609AC8   8BC3                   mov     eax, ebx

* Reference to : TfrmBaseClientTabela._PROC_005C9154()
|
00609ACA   E885F6FBFF             call    005C9154

* Reference to field TfrmColetores.OFFS_03A8
|
00609ACF   8B83A8030000           mov     eax, [ebx+$03A8]
00609AD5   8B802C030000           mov     eax, [eax+$032C]

|
00609ADB   E8789DE1FF             call    00423858
00609AE0   8BF8                   mov     edi, eax
00609AE2   4F                     dec     edi
00609AE3   85FF                   test    edi, edi
00609AE5   0F8C20020000           jl      00609D0B
00609AEB   47                     inc     edi
00609AEC   33F6                   xor     esi, esi

* Reference to field TfrmColetores.OFFS_03A8
|
00609AEE   8B83A8030000           mov     eax, [ebx+$03A8]
00609AF4   8B802C030000           mov     eax, [eax+$032C]
00609AFA   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609AFC   E81792FBFF             call    005C2D18
00609B01   8B401C                 mov     eax, [eax+$1C]
00609B04   8D55FC                 lea     edx, [ebp-$04]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609B07   E82C7DFBFF             call    005C1838
00609B0C   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'pe_nome_agente'
|
00609B0F   BA8C9D6000             mov     edx, $00609D8C

|
00609B14   E89BC1DFFF             call    00405CB4
00609B19   7520                   jnz     00609B3B

* Reference to field TfrmColetores.OFFS_03A8
|
00609B1B   8B83A8030000           mov     eax, [ebx+$03A8]
00609B21   8B802C030000           mov     eax, [eax+$032C]
00609B27   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609B29   E8EA91FBFF             call    005C2D18
00609B2E   8B401C                 mov     eax, [eax+$1C]

* Possible String Reference to: 'Nome Agente'
|
00609B31   BAA49D6000             mov     edx, $00609DA4
00609B36   8B08                   mov     ecx, [eax]
00609B38   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TfrmColetores.OFFS_03A8
|
00609B3B   8B83A8030000           mov     eax, [ebx+$03A8]
00609B41   8B802C030000           mov     eax, [eax+$032C]
00609B47   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609B49   E8CA91FBFF             call    005C2D18
00609B4E   8B401C                 mov     eax, [eax+$1C]
00609B51   8D55F8                 lea     edx, [ebp-$08]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609B54   E8DF7CFBFF             call    005C1838
00609B59   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'pe_agente'
|
00609B5C   BAB89D6000             mov     edx, $00609DB8

|
00609B61   E84EC1DFFF             call    00405CB4
00609B66   7520                   jnz     00609B88

* Reference to field TfrmColetores.OFFS_03A8
|
00609B68   8B83A8030000           mov     eax, [ebx+$03A8]
00609B6E   8B802C030000           mov     eax, [eax+$032C]
00609B74   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609B76   E89D91FBFF             call    005C2D18
00609B7B   8B401C                 mov     eax, [eax+$1C]

* Possible String Reference to: 'C�digo'
|
00609B7E   BACC9D6000             mov     edx, $00609DCC
00609B83   8B08                   mov     ecx, [eax]
00609B85   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TfrmColetores.OFFS_03A8
|
00609B88   8B83A8030000           mov     eax, [ebx+$03A8]
00609B8E   8B802C030000           mov     eax, [eax+$032C]
00609B94   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609B96   E87D91FBFF             call    005C2D18
00609B9B   8B401C                 mov     eax, [eax+$1C]
00609B9E   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609BA1   E8927CFBFF             call    005C1838
00609BA6   8B45F4                 mov     eax, [ebp-$0C]

* Possible String Reference to: 'pe_maleta'
|
00609BA9   BADC9D6000             mov     edx, $00609DDC

|
00609BAE   E801C1DFFF             call    00405CB4
00609BB3   7520                   jnz     00609BD5

* Reference to field TfrmColetores.OFFS_03A8
|
00609BB5   8B83A8030000           mov     eax, [ebx+$03A8]
00609BBB   8B802C030000           mov     eax, [eax+$032C]
00609BC1   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609BC3   E85091FBFF             call    005C2D18
00609BC8   8B401C                 mov     eax, [eax+$1C]

* Possible String Reference to: 'Maleta'
|
00609BCB   BAF09D6000             mov     edx, $00609DF0
00609BD0   8B08                   mov     ecx, [eax]
00609BD2   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TfrmColetores.OFFS_03A8
|
00609BD5   8B83A8030000           mov     eax, [ebx+$03A8]
00609BDB   8B802C030000           mov     eax, [eax+$032C]
00609BE1   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609BE3   E83091FBFF             call    005C2D18
00609BE8   8B401C                 mov     eax, [eax+$1C]
00609BEB   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609BEE   E8457CFBFF             call    005C1838
00609BF3   8B45F0                 mov     eax, [ebp-$10]

* Possible String Reference to: 'pe_grupo'
|
00609BF6   BA009E6000             mov     edx, $00609E00

|
00609BFB   E8B4C0DFFF             call    00405CB4
00609C00   7520                   jnz     00609C22

* Reference to field TfrmColetores.OFFS_03A8
|
00609C02   8B83A8030000           mov     eax, [ebx+$03A8]
00609C08   8B802C030000           mov     eax, [eax+$032C]
00609C0E   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609C10   E80391FBFF             call    005C2D18
00609C15   8B401C                 mov     eax, [eax+$1C]

* Possible String Reference to: 'Grupo'
|
00609C18   BA149E6000             mov     edx, $00609E14
00609C1D   8B08                   mov     ecx, [eax]
00609C1F   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TfrmColetores.OFFS_03A8
|
00609C22   8B83A8030000           mov     eax, [ebx+$03A8]
00609C28   8B802C030000           mov     eax, [eax+$032C]
00609C2E   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609C30   E8E390FBFF             call    005C2D18
00609C35   8B401C                 mov     eax, [eax+$1C]
00609C38   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609C3B   E8F87BFBFF             call    005C1838
00609C40   8B45EC                 mov     eax, [ebp-$14]

* Possible String Reference to: 'pe_rota'
|
00609C43   BA249E6000             mov     edx, $00609E24

|
00609C48   E867C0DFFF             call    00405CB4
00609C4D   7520                   jnz     00609C6F

* Reference to field TfrmColetores.OFFS_03A8
|
00609C4F   8B83A8030000           mov     eax, [ebx+$03A8]
00609C55   8B802C030000           mov     eax, [eax+$032C]
00609C5B   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609C5D   E8B690FBFF             call    005C2D18
00609C62   8B401C                 mov     eax, [eax+$1C]

* Possible String Reference to: 'Rota'
|
00609C65   BA349E6000             mov     edx, $00609E34
00609C6A   8B08                   mov     ecx, [eax]
00609C6C   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TfrmColetores.OFFS_03A8
|
00609C6F   8B83A8030000           mov     eax, [ebx+$03A8]
00609C75   8B802C030000           mov     eax, [eax+$032C]
00609C7B   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609C7D   E89690FBFF             call    005C2D18
00609C82   8B401C                 mov     eax, [eax+$1C]
00609C85   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609C88   E8AB7BFBFF             call    005C1838
00609C8D   8B45E8                 mov     eax, [ebp-$18]

* Possible String Reference to: 'pe_data'
|
00609C90   BA449E6000             mov     edx, $00609E44

|
00609C95   E81AC0DFFF             call    00405CB4
00609C9A   7520                   jnz     00609CBC

* Reference to field TfrmColetores.OFFS_03A8
|
00609C9C   8B83A8030000           mov     eax, [ebx+$03A8]
00609CA2   8B802C030000           mov     eax, [eax+$032C]
00609CA8   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609CAA   E86990FBFF             call    005C2D18
00609CAF   8B401C                 mov     eax, [eax+$1C]

* Possible String Reference to: 'Data'
|
00609CB2   BA549E6000             mov     edx, $00609E54
00609CB7   8B08                   mov     ecx, [eax]
00609CB9   FF510C                 call    dword ptr [ecx+$0C]

* Reference to field TfrmColetores.OFFS_03A8
|
00609CBC   8B83A8030000           mov     eax, [ebx+$03A8]
00609CC2   8B802C030000           mov     eax, [eax+$032C]
00609CC8   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609CCA   E84990FBFF             call    005C2D18
00609CCF   8B401C                 mov     eax, [eax+$1C]
00609CD2   8D55E4                 lea     edx, [ebp-$1C]

* Reference to : TDBGridInplaceEdit._PROC_005C1838()
|
00609CD5   E85E7BFBFF             call    005C1838
00609CDA   8B45E4                 mov     eax, [ebp-$1C]

* Possible String Reference to: 'pe_descricao'
|
00609CDD   BA649E6000             mov     edx, $00609E64

|
00609CE2   E8CDBFDFFF             call    00405CB4
00609CE7   751A                   jnz     00609D03

* Reference to field TfrmColetores.OFFS_03A8
|
00609CE9   8B83A8030000           mov     eax, [ebx+$03A8]
00609CEF   8B802C030000           mov     eax, [eax+$032C]
00609CF5   8BD6                   mov     edx, esi

* Reference to : TDBGridInplaceEdit._PROC_005C2D18()
|
00609CF7   E81C90FBFF             call    005C2D18
00609CFC   33D2                   xor     edx, edx

* Reference to : TDBGridInplaceEdit._PROC_005C2BE8()
|
00609CFE   E8E58EFBFF             call    005C2BE8
00609D03   46                     inc     esi
00609D04   4F                     dec     edi
00609D05   0F85E3FDFFFF           jnz     00609AEE
00609D0B   B301                   mov     bl, $01
00609D0D   33C0                   xor     eax, eax
00609D0F   5A                     pop     edx
00609D10   59                     pop     ecx
00609D11   59                     pop     ecx
00609D12   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '��_^[��]�����'
|
00609D15   682F9D6000             push    $00609D2F
00609D1A   8D45E4                 lea     eax, [ebp-$1C]
00609D1D   BA07000000             mov     edx, $00000007

|
00609D22   E8A1BBDFFF             call    004058C8
00609D27   C3                     ret


|
00609D28   E967B3DFFF             jmp     00405094
00609D2D   EBEB                   jmp     00609D1A

****** END
|
00609D2F   8BC3                   mov     eax, ebx
00609D31   5F                     pop     edi
00609D32   5E                     pop     esi
00609D33   5B                     pop     ebx
00609D34   8BE5                   mov     esp, ebp
00609D36   5D                     pop     ebp
00609D37   C3                     ret

*)
end;

procedure TfrmColetores._PROC_0060A089(Sender : TObject);
begin
(*
0060A089   8BEC                   mov     ebp, esp
0060A08B   83C4D8                 add     esp, -$28
0060A08E   56                     push    esi
0060A08F   33C9                   xor     ecx, ecx
0060A091   894DD8                 mov     [ebp-$28], ecx
0060A094   894DDC                 mov     [ebp-$24], ecx
0060A097   894DE0                 mov     [ebp-$20], ecx
0060A09A   894DE4                 mov     [ebp-$1C], ecx
0060A09D   8BF0                   mov     esi, eax
0060A09F   33C0                   xor     eax, eax
0060A0A1   55                     push    ebp
0060A0A2   6840A16000             push    $0060A140

***** TRY
|
0060A0A7   64FF30                 push    dword ptr fs:[eax]
0060A0AA   648920                 mov     fs:[eax], esp
0060A0AD   8BC6                   mov     eax, esi

* Reference to : TfrmBaseClientTabela.sbtnIncluirClick()
|
0060A0AF   E810F3FBFF             call    005C93C4

* Reference to field TfrmColetores.OFFS_03A0
|
0060A0B4   8B86A0030000           mov     eax, [esi+$03A0]
0060A0BA   80B89D00000003         cmp     byte ptr [eax+$009D], $03
0060A0C1   7567                   jnz     0060A12A

|
0060A0C3   E8BC41E0FF             call    0040E284
0060A0C8   83C4F8                 add     esp, -$08
0060A0CB   DD1C24                 fstp    qword ptr [esp]
0060A0CE   9B                     wait
0060A0CF   8D45F0                 lea     eax, [ebp-$10]
0060A0D2   50                     push    eax
0060A0D3   8D4DF2                 lea     ecx, [ebp-$0E]
0060A0D6   8D55F4                 lea     edx, [ebp-$0C]
0060A0D9   8D45F6                 lea     eax, [ebp-$0A]

|
0060A0DC   E81B3EE0FF             call    0040DEFC
0060A0E1   6A00                   push    $00
0060A0E3   33C9                   xor     ecx, ecx
0060A0E5   0FB755F4               movzx   edx, word ptr [ebp-$0C]
0060A0E9   0FB745F6               movzx   eax, word ptr [ebp-$0A]

|
0060A0ED   E8CA3DE0FF             call    0040DEBC
0060A0F2   DD5DE8                 fstp    qword ptr [ebp-$18]
0060A0F5   9B                     wait

|
0060A0F6   E82941E0FF             call    0040E224
0060A0FB   DC45E8                 fadd    qword ptr [ebp-$18]
0060A0FE   DD5DF8                 fstp    qword ptr [ebp-$08]
0060A101   9B                     wait
0060A102   BA50A16000             mov     edx, $0060A150

* Reference to field TfrmColetores.OFFS_03A0
|
0060A107   8B86A0030000           mov     eax, [esi+$03A0]

|
0060A10D   E82657E9FF             call    0049F838
0060A112   50                     push    eax
0060A113   DD45F8                 fld     qword ptr [ebp-$08]
0060A116   8D45D8                 lea     eax, [ebp-$28]

|
0060A119   E822F9E0FF             call    00419A40
0060A11E   8D55D8                 lea     edx, [ebp-$28]
0060A121   58                     pop     eax
0060A122   8B08                   mov     ecx, [eax]
0060A124   FF91C0000000           call    dword ptr [ecx+$00C0]
0060A12A   33C0                   xor     eax, eax
0060A12C   5A                     pop     edx
0060A12D   59                     pop     ecx
0060A12E   59                     pop     ecx
0060A12F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0060A132   6847A16000             push    $0060A147
0060A137   8D45D8                 lea     eax, [ebp-$28]

|
0060A13A   E8DDB1E0FF             call    0041531C
0060A13F   C3                     ret


|
0060A140   E94FAFDFFF             jmp     00405094
0060A145   EBF0                   jmp     0060A137

****** END
|
0060A147   5E                     pop     esi
0060A148   8BE5                   mov     esp, ebp
0060A14A   5D                     pop     ebp
0060A14B   C3                     ret

*)
end;

procedure TfrmColetores._PROC_0060A14C(Sender : TObject);
begin
(*
0060A14C   0E                     push    cs
0060A14D   0000                   add     [eax], al

*)
end;

procedure TfrmColetores._PROC_0060A196(Sender : TObject);
begin
(*
0060A196   47                     inc     edi
0060A197   001C4B                 add     [ebx+ecx*2], bl
0060A19A   40                     inc     eax
0060A19B   000C8547005848         add     [$48580047+eax*4], cl
0060A1A2   40                     inc     eax
0060A1A3   00744840               add     [eax+ecx*2+$40], dh
0060A1A7   00905547008C           add     [eax+$8C004755], dl
0060A1AD   844600                 test    [esi+$00], al
0060A1B0   845B47                 test    [ebx+$47], bl
0060A1B3   000C31                 add     [ecx+esi], cl
0060A1B6   42                     inc     edx
0060A1B7   006C5747               add     [edi+edx*2+$47], ch
0060A1BB   00B8574700F4           add     [eax+$F4004757], bh
0060A1C1   58                     pop     eax
0060A1C2   47                     inc     edi
0060A1C3   00E8                   add     al, ch
0060A1C5   F8                     clc
0060A1C6   45                     inc     ebp
0060A1C7   0094C542008462         add     [ebp+eax*8+$62840042], dl
0060A1CE   47                     inc     edi
0060A1CF   0070C2                 add     [eax-$3E], dh
0060A1D2   42                     inc     edx
0060A1D3   0070AB                 add     [eax-$55], dh
0060A1D6   47                     inc     edi
0060A1D7   00E0                   add     al, ah
0060A1D9   51                     push    ecx
0060A1DA   47                     inc     edi
0060A1DB   00B07E4600BC           add     [eax+$BC00467E], dh
0060A1E1   844600                 test    [esi+$00], al
0060A1E4   08844600B0EB45         or      [esi+eax*2+$45EBB000], al
0060A1EB   002C79                 add     [ecx+edi*2], ch
0060A1EE   46                     inc     esi
0060A1EF   00B85E4700B8           add     [eax+$B800475E], bh
0060A1F5   7546                   jnz     0060A23D
0060A1F7   00F0                   add     al, dh
0060A1F9   EA4500F4EA             jmp     $EAF40045
0060A1FE   45                     inc     ebp
0060A1FF   00AC5F47006C24         add     [edi+ebx*2+$246C0047], ch
0060A206   46                     inc     esi
0060A207   003CA8                 add     [eax+ebp*4], bh
0060A20A   47                     inc     edi
0060A20B   00CC                   add     ah, cl
0060A20D   F8                     clc
0060A20E   45                     inc     ebp
0060A20F   002CED450058FA         add     [$FA580045+ebp*8], ch
0060A216   45                     inc     ebp
0060A217   00C8                   add     al, cl
0060A219   61                     popa
0060A21A   47                     inc     edi
0060A21B   008460470094FB         add     [eax+$FB940047], al
0060A222   45                     inc     ebp
0060A223   00C4                   add     ah, al
0060A225   624700                 bound   eax, qword ptr [edi+$00]
0060A228   F0                     lock
0060A229   2446                   and     al, $46
0060A22B   000C76                 add     [esi+esi*2], cl
0060A22E   46                     inc     esi
0060A22F   00CC                   add     ah, cl
0060A231   7646                   jbe     0060A279
0060A233   00C0                   add     al, al
0060A235   7146                   jno     0060A27D
0060A237   00B0764600C8           add     [eax+$C8004676], dh
0060A23D   4F                     dec     edi
0060A23E   47                     inc     edi
0060A23F   0008                   add     [eax], cl
0060A241   6A47                   push    $47
0060A243   00A042460034           add     [eax+$34004642], ah
0060A249   7D47                   jnl     0060A292
0060A24B   004882                 add     [eax-$7E], cl
0060A24E   47                     inc     edi
0060A24F   00748047               add     [eax+eax*4+$47], dh
0060A253   0038                   add     [eax], bh
0060A255   43                     inc     ebx
0060A256   46                     inc     esi
0060A257   005C4346               add     [ebx+eax*2+$46], bl
0060A25B   00C4                   add     ah, al
0060A25D   834700C8               add     dword ptr [edi+$00], -$38
0060A261   844700                 test    [edi+$00], al
0060A264   94                     xchg    eax, esp
0060A265   41                     inc     ecx
0060A266   46                     inc     esi
0060A267   00A08C4600F8           add     [eax+$F800468C], ah
0060A26D   7746                   jnbe    0060A2B5
0060A26F   0000                   add     [eax], al

0060A271   8C4700                 mov     word ptr [edi+$00], es
0060A274   148C                   adc     al, $8C
0060A276   46                     inc     esi
0060A277   006874                 add     [eax+$74], ch
0060A27A   46                     inc     esi
0060A27B   00648D46               add     [ebp+ecx*4+$46], ah
0060A27F   0088A34700A8           add     [eax+$A80047A3], cl
0060A285   49                     dec     ecx
0060A286   47                     inc     edi
0060A287   00584C                 add     [eax+$4C], bl
0060A28A   47                     inc     edi
0060A28B   004093                 add     [eax-$6D], al
0060A28E   47                     inc     edi
0060A28F   00905647000C           add     [eax+$C004756], dl
0060A295   57                     push    edi
0060A296   47                     inc     edi
0060A297   00D4                   add     ah, dl
0060A299   A7                     cmpsd
0060A29A   47                     inc     edi
0060A29B   00A45347006CA2         add     [ebx+edx*2+$A26C0047], ah
0060A2A2   47                     inc     edi
0060A2A3   009C86470060A4         add     [esi+eax*4+$A4600047], bl
0060A2AA   47                     inc     edi
0060A2AB   00C4                   add     ah, al
0060A2AD   61                     popa
0060A2AE   47                     inc     edi
0060A2AF   00F8                   add     al, bh
0060A2B1   C660000E               mov     byte ptr [eax+$00], $0E
0060A2B5   0000                   add     [eax], al

*)
end;

end.