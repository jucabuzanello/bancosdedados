/TELA
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ ______________________________     CADASTRO DE FORNECEDORES      __/__/____  บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                                              บ
บ Cod.Fornecedor..: ___.      Raz.Social.: ___________________________________ บ
บ                                                                              บ
บ Nome reduzido...: ____________________     Contato ...: _______________      บ
บ Endereco........: ________________________________________                   บ
บ Bairro..........: ____________________     CEP .......: __________           บ
บ Cidade..........: ___.      _________________________   __                   บ
บ Telefone........: ____________  Fax: ____________ e-mail.: _________________ บ
บ Representante...:               Fax: ____________ e-mail.: _________________ บ
บ                                                                              บ
บ C.G.C...........: __________________                                         บ
บ I. E. ..........: __________________                                         บ
บ Perc. Frete ....: ____.__ %                                                  บ
บ                                                                              บ
บ Conta Contabil .:  _____.                                                    บ
บ                                                                              บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ F9 - LIMPA TELA                                                              บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
/HELP
บ                                                                              บ
บ                                                                              บ
บ                          Ajuda  ao  Usuario                                  บ
บ                          -----  --  -------                                  บ
บ                                                                              บ
บ            Nesta tela voce podera  Cadastrar os Fornecedores de  sua         บ
บ       Empresa. Digite o codigo do Fornecedor que se ja estiver cadas         บ
บ       trado tera seus dados apresentados na tela. Caso o codigo  nao         บ
บ       seja encontrado voce podera cadastrar um novo Fornecedor.              บ
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
STRING XCGC 18 VPARTE1 10 VPARTE2 10 VPARTE3 10 VPARTE4 10 VPARTE5 10
INDICATOR TERMINOU
NAME TELA TEMPRE TDATA TCODFOR TRAZSOC TNOME TCONTATO TENDER TBAIRRO
NAME TCEP TCIDADE TNOMECID TESTADO TFONEF TFACF TTELEXF TFACR TTELEXR
NAME TCGC TINSCR TPERFRET TCONTA

OPEN AVCADCID
OPEN AVCADEST
OPEN CPCADFOR
OPEN LFPARAM
OPEN CPPARAM

FIND GT CPPARAM BY INDEX.1
DISPLAY CPPARAM.RA_SOCIAL TO TEMPRE
PAGE SET HELP AT 4 0
SYSDATE TDATA
INDICATE PRIMEIRA_VEZ TRUE

SET_RELATE LFPARAM.COD_CID TO |FN0,0
SET_RELATE LFPARAM.ESTADO  TO |FN0,0
INICIO:
ENTER CPCADFOR
  CLEARFORM TCODFOR THRU TCONTA
  AUTOPAGE TELA 3

  ENTRY CPCADFOR.COD_FOR                 {AUTOFIND}
//  INDICATE ALTERACAO AS [ FOUND]
//  [~ALTERACAO] ENTRY CPCADFOR.DESCR      {CAPSLOCK}
//  [~ALTERACAO] INDICATE ALTERACAO AS [ FOUND]
  ENTRY CPCADFOR.DESCR      {CAPSLOCK}

  ENTRY CPCADFOR.NOME                    {CAPSLOCK}
  ENTRY CPCADFOR.CONTATO                 {CAPSLOCK}
  ENTRY CPCADFOR.ENDERECO                {CAPSLOCK}
  ENTRY CPCADFOR.BAIRRO_FORNEC           {CAPSLOCK}
  ENTRY CPCADFOR.CEP_FORNEC

  INDICATE ENT$QUERY FALSE
  CIDADE:
  ENTRY AVCADCID.COD_CID                 {AUTOFIND}
  INDICATE CERTO AS [ FOUND]
  [~CERTO] ENTRY AVCADCID.DESCR          {CAPSLOCK,AUTOFIND}
  [~FOUND] GOTO CIDADE

  FINDKEY EQ AVCADEST BY INDEX.1 FOR AVCADEST.COD_EST EQ AVCADCID.COD_EST
  ENTRY AVCADEST.SIGLA          {DISPLAYONLY}

  ENTRY CPCADFOR.FONE_FORNEC    TFONEF
  ENTRY CPCADFOR.FAC_FORNEC     TFACF
  ENTRY CPCADFOR.EMAIL_FORNEC   TTELEXF
  ENTRY CPCADFOR.FAC_REPRES     TFACR
  ENTRY CPCADFOR.EMAIL_REPRES   TTELEXR

 CGC:
  ENTRY CPCADFOR.CGC            TCGC

  MOVE TCGC TO XCGC
  CGC_CHECK XCGC
  [ ERR] ERROR 999 "C.G.C INCORRETO"

  MOVE (TRIM(XCGC)) TO XCGC
  IF XCGC NE "" BEGIN
     INTEGER POSICAO TAMANHO ACHOU
     MOVE (LENGTH(XCGC)) TO TAMANHO
     FOR POSICAO FROM 1 TO TAMANHO
        POS (MID(XCGC,1,POSICAO)) IN "0123456789" TO ACHOU
        IF ACHOU EQ 0 BEGIN
           CLEARXY SCREENEND 00
           SHOW "Somente numeros podem ser informados no CNPJ"
           PAUSE ""
           CLEARXY SCREENEND 00
           GOTO CGC
        END
     LOOP
  END

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

//  MOVE XCGC TO TCGC
  ENTRY CPCADFOR.INSCR          TINSCR
  ENTRY CPCADFOR.PERFRET        TPERFRET
  ENTRY CPCADFOR.CONTA_CTB      TCONTA

  //[~ALTERACAO] BEGIN
  //  LOCK
  //  CLEAR CPCADFOR
  //  FIND LT CPCADFOR BY INDEX.1
  //  CALC (CPCADFOR.COD_FOR + 1) TO TCODFOR
  //  CLEAR CPCADFOR
  //END
//RETURN
  ENTER.SAVE:
     ENTUPDATE CPCADFOR
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
