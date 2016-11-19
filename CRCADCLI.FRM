/TELA
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ ______________________________     CADASTRO DE CLIENTE           __/__/____  บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                                              บ
บ                                                                              บ
บ Cod.Cliente ....: _____.                                                     บ
บ                                                                              บ
บ Razao Social ...: ___________________________________                        บ
บ                                                                              บ
บ Conta Contabil .: _____.                Fisica / Juridica : _                บ
บ                                                                              บ
บ CGC / CPF ......: __________________    Formatado: __________________        บ
บ                                                                              บ
บ Inscricao Est. .: ______________                                             บ
บ                                                                              บ
บ                                                                              บ
บ                                                                              บ
บ                                                                              บ
บ                                                                              บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ F5 - LIMPA TELA                                           CONFIRMA [S/N] _   บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
/HELP
บ                                                                              บ
บ                                                                              บ
บ                          Ajuda  ao  Usuario                                  บ
บ                          -----  --  -------                                  บ
บ                                                                              บ
บ            Nesta tela voce podera  Cadastrar os Clientes     de  sua         บ
บ       Empresa. Digite o codigo do Cliente    que se ja estiver cadas         บ
บ       trado tera seus dados apresentados na tela. Caso o codigo  nao         บ
บ       seja encontrado voce podera cadastrar um novo Cliente.                 บ
บ       Tecle <ENTER> para confirmar os dados digitados.                       บ
บ                                                                              บ
บ                                                                              บ
บ                                                                              บ
บ                                                                              บ
บ       <ESC> cancela dados digitados e retorna ao Menu anterior.              บ
บ                                                                              บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  Pressione qualquer tecla para continuar . . .                               บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
/*
#INCLUDE ROTINAS.LIB
NAME TELA TEMPRE TDATA TCODCLI TRAZSOC TCONTA TFIS TCGC TFORMATADO TINSCR TCONF

STRING XCGC 18 VPARTE1 10 VPARTE2 10 VPARTE3 10 VPARTE4 10 VPARTE5 10 SAUX
INDICATOR TERMINOU
INTEGER TAM CONTADOR

OPEN CRCADCLI
OPEN CPPARAM

FIND GT CPPARAM BY INDEX.1
DISPLAY CPPARAM.RA_SOCIAL TO TEMPRE
PAGE SET HELP AT 4 0
SYSDATE TDATA
INDICATE PRIMEIRA_VEZ TRUE

//SET_RELATE LFPARAM.COD_CID TO |FN0,0
//SET_RELATE LFPARAM.ESTADO  TO |FN0,0

ENTER  CRCADCLI
 INICIO:
  CLEARFORM TCODCLI THRU TCONF
  AUTOPAGE TELA 3

  ENTRY CRCADCLI.CODCLI TCODCLI         {AUTOFIND}
  ENTRY CRCADCLI.DESCR  TRAZSOC         {CAPSLOCK,AUTOFIND}

  ENTRY CRCADCLI.CONTA_CTB TCONTA
  ENTRY CRCADCLI.FIS_JUR TFIS {CAPSLOCK,CHECK="FJ"}
 CGC:
  ENTRY CRCADCLI.CGC TCGC

  MOVE TCGC TO XCGC
  MOVE (TRIM(XCGC)) TO XCGC

  MOVE (LENGTH(XCGC)) TO TAM

  FOR CONTADOR FROM 1 TO TAM
      MOVE (MID(XCGC,1,CONTADOR)) TO SAUX
      IF (POS(SAUX,"1234567890")) EQ 0 BEGIN
         GOTO SAI_LOOP
      END
  LOOP
  SAI_LOOP:
  IF CONTADOR LE TAM BEGIN
     SHOW (MENSAGEM("Somente podem ser digitados numeros para o CNPJ/CPF!"))
     GOTO CGC
  END

  IF TFIS EQ "F" BEGIN
//     MOVE TCGC TO XCGC
     CIC_CHECK XCGC
     [ ERR] ERROR 999 "C.P.F Incorreto ..!"
     //[ ERR] GOTO CGC

     REPEAT
       REPLACE "." IN XCGC WITH ""
     UNTIL [NOT FOUND]
     REPEAT
       REPLACE "/" IN XCGC WITH ""
     UNTIL [NOT FOUND]
     REPEAT
       REPLACE "-" IN XCGC WITH ""
     UNTIL [NOT FOUND]
     IF (LENGTH(XCGC)) EQ 0 BEGIN
        MOVE "              " TO XCGC
     END

     LEFT XCGC TO VPARTE1 3
     MID  XCGC TO VPARTE2 3 4
     MID  XCGC TO VPARTE3 3 7
     MID  XCGC TO VPARTE4 2 10

     MOVE "" TO XCGC
     APPEND XCGC VPARTE1 "." VPARTE2 "." VPARTE3 "-" VPARTE4

  END
  ELSE BEGIN
//     MOVE TCGC TO XCGC
     CGC_CHECK XCGC
     [ ERR] ERROR 999 "C.G.C INCORRETO"
     //[ ERR] GOTO CGC
     [ERR] DISPLAY '' TO TFORMATADO

     REPEAT
       REPLACE "." IN XCGC WITH ""
     UNTIL [NOT FOUND]
     REPEAT
       REPLACE "/" IN XCGC WITH ""
     UNTIL [NOT FOUND]
     REPEAT
       REPLACE "-" IN XCGC WITH ""
     UNTIL [NOT FOUND]

     IF (LENGTH(XCGC)) EQ 0 BEGIN
        MOVE "              " TO XCGC
     END

     LEFT XCGC TO VPARTE1 2
     MID  XCGC TO VPARTE2 3 3
     MID  XCGC TO VPARTE3 3 6
     MID  XCGC TO VPARTE4 4 9
     MID  XCGC TO VPARTE5 2 13

     MOVE "" TO XCGC
     APPEND XCGC VPARTE1 "." VPARTE2 "." VPARTE3 "/" VPARTE4 "-" VPARTE5

  END
  MOVE XCGC TO TFORMATADO

  ENTRY CRCADCLI.INSCR_EST TINSCR { AUTOCLEAR }

  MOVE "S" TO TCONF
  ACCEPT TCONF {CAPSLOCK}
  IF TCONF NE "S" GOTO INICIO
  RETURN
  ENTER.SAVE:
    ENTUPDATE CRCADCLI
    RETURN
ENTEREND
ABORT


KEYPROC KEY.DELETE
ERROR 999 "NAO E PERMITIDO DELETAR !!!"
ENTAGAIN
RETURN

KEYPROC KEY.HELP
    PAGE HELP
    PAUSE ""
    ENTAGAIN
    CLEARSCREEN
RETURN
