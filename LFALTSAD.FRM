/TELA
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� _________________________________ ALTER. DO LANCAMENTO DE SAIDA  __/__/____ �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� Empresa ........: _. ____________________________________                   �
� Numero do Doc...: _____.         Serie .: ___                               �
� Cod. Aliquota ..: _. ___.__  ___.__  ___.__                                 �
� Data Saida .....: __/__/____ CFO: ___.  ___________________________________ �
� Especie ........: ___                   Modelo ..: __                       �
� Un. Federacao...: _. ____________________________________                   �
� Tip. Lanc. CTB .: ___.   _________________________                          �
� Cod. Cliente ...: _____. _________________________________________          �
� Data Entrada ...: __/__/____               Classificacao ..: _________.     �
�                                            Unidade ........: __             �
� Base de Calculo.: _________.__             Quantidade .....: _________.__   �
� Vlr. Isentas ...: _________.__             Base Calc IPI ..: _________.__   �
� Vlr. Outras ....: _________.__             Vlr. Isentas ...: _________.__   �
� Imposto ........: _________.__             Vlr. Outras ....: _________.__   �
� Vlr. Contabel ..: _________.__             Aliquota .......: __.__          �
� Vlr. Faturamento: _________.__                                              �
� Tipo ...........: _                        Imposto ........: _________.__   �
� Observacao .....: ___. ___________________ Vlr. Art. 82 ...: _________.__   �
麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
�  < F1 > AJUDA   < F5 > LIMPA TELA                         CONFIRMA [S/N] _  �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様�     Consystec     様�
/HELP
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
�                                                                             �
�                        AJUDA AO USUARIO                                     �
�                        ================                                     �
�                                                                             �
�     Aqui voce devera Alterar os Lancamentos de Saida, caso  algum  erro     �
�  de digitacao foi feito na ora de lancar ou algum acerto nos valores. A     �
�  coluna da esquerda voce devera digitar os valores do Icms e da direita     �
�  os valores de IPI, mas so entrara na digitacao do IPI se no cadastro de    �
�  empresa estiver no campo Usa IPI de Saida  (Sim), caso  contrario  nao     �
�  Entrara. Para Sair da Digitacao do IPI digite (0) no campo da  Classi-     �
�  ficacao. Voce querer deletar algum lancto de IPI tecle "F6" na coluna      �
�  da Digitacao do IPI.                                                       �
�    Caso voce nao saiba algum codigo cadastrado digite um codigo invali-     �
�  do e informe a descricao em seguida use as teclas Page UP e  Page Down     �
�  para procurar a descricao correta.                                         �
�                                                                             �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
�   PRESSIONE ALGO PARA CONTINUAR                                             �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
/TDESC_AUX
浜様様様様様様様様様様様様様様様様様様融
� DESCRICACAO                          �
把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳超
� ____________________________________ �
藩様様様様様様様様様様様様様様様様様様夕
/HELP1
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� Tabela de modelos de documentos fiscais                           �
� ---------------------------------------                           �
� 24 - Autoriza��o de Carregamento e Transporte, modelo 24.         �
� 14 - Bilhete de Passagem Aquavi�rio, modelo 14.                   �
� 15 - Bilhete de Passagem e Nota de bagagem, modelo 15.            �
� 16 - Bilhete de Passagem Ferrovi�rio, modelo 16.                  �
� 13 - Bilhete de Passagem Rodovi�rio, modelo 13.                   �
� 10 - Conhecimento A�reo, modelo 10.                               �
� 11 - Conhecimento de Transporte Ferrovi�rio de Cargas, modelo 11. �
� 09 - Conhecimento de Transporte Aquavi�rio de Cargas, modelo 09.  �
� 08 - Conhecimento de Transporte Rodovi�rio de Cargas, modelo 08.  �
� 17 - Despacho de Transporte, modelo 17.                           �
� 25 - Manifesto de Carga, modelo 25.                               �
� 01 - Nota Fiscal, modelo 01.                                      �
� 06 - Nota Fiscal/Conta de Energia El�trica, modelo 6.             �
� 03 - Nota Fiscal de Entrada, modelo 3.                            �
� 21 - Nota Fiscal de Servi�o de Comunica��o, modelo 21.            �
� 04 - Nota Fiscal de Produtor, modelo 4.                           �
� 22 - Nota Fiscal de Servi�o de Telecomuni��es, modelo 22.         �
� 07 - Nota Fiscal de Servi�o de Transporte, modelo 7.              �
� 02 - Nota Fiscal de Venda a Consumidor, modelo 2.                 �
� 20 - Ordem de Coleta de Carga, modelo 20.                         �
� 18 - Resumo Movimento Di�rio, modelo 18.                          �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
/*
#INCLUDE ROTINAS.LIB
NAME TEMPRE TDATA TLOJ TDLOJ TNF TSER TALIQ TALQ1 TALQ2 TALQ3 TDT_SAI TCFO
NAME TDCFO TESP TMODELO TEST TDEST TTIPCTB TDTIPCTB TCLI TDCLI TDT_ENT TCLASS TUN TBASE_ICM TQTD
NAME TISEN_ICM TBASE_IPI TOUT_ICM TISEN_IPI TIMP_ICM TOUT_IPI TVLR_CONT TALIQ_IPI TVLRFATUR TTIPO TIMP_IPI
NAME TOBS TDOBS TVLR_ART TCONF

OPEN LFCADCFO
//OPEN LFCADCTB
OPEN LFTIPCTB
OPEN AVCADEST
OPEN LFLANSAD
OPEN LFPARAM
OPEN LFLANSAI
OPEN LFLANCA2
OPEN LFLANCA1
OPEN LFCADDIE
OPEN CRCADCLI
OPEN LFCLAFIS
OPEN LFOBSLAN
OPEN LFPARAM
OPEN CPPARAM
PAGE SET HELP1 AT 00 5 COLORS 79 79
SET_RELATE LFPARAM.ESTADO TO |FN0,0

NUMBER VLANC1 VNUMLANC VBICMS VDIA1 VDIA VMES VANO VTCALIPI VTISENTA
NUMBER VTOUTRA VTIMP AC_VL_ISENTAS AC_BC_IPI AC_VL_OUTRAS AC_VL_ART82
NUMBER AC_VL_IMPOSTO VTBCICMS VTCONTABI VTISENTAS VTOUTRAS VTIMPOSTO VBASE

INTEGER VDOC X VLOJA

PAGE SET HELP AT 3 0
PAGE SET TDESC_AUX AT 8 20

CLEAR CPPARAM
FIND GT CPPARAM BY INDEX.1
PRINT CPPARAM.RA_SOCIAL TO TEMPRE
SYSDATE TDATA

ENTERGROUP
  INICIO:
   CLEARFORM TNF THRU TCONF
   AUTOPAGE TELA 3

   ENTRY LFPARAM.CODIGO TLOJ   {AUTOFIND,RETAIN}
   INDICATE CERTO AS [ FOUND]
   [~CERTO] ENTRY LFPARAM.RAZAO TDLOJ {CAPSLOCK,AUTOFIND}
   [~FOUND] GOTO INICIO

   ENTRY LFLANSAD.NUM_DOC TNF {REQUIRED,AUTOCLEAR}
   MOVE 1 TO TSER
   ENTRY LFLANSAD.SERIE TSER {CAPSLOCK}

  ALIQUOTA:
//  ENTRY LFLANSAD.ALIICM {REQUIRED}
  ENTRY LFLANCA2.CODIGO TALIQ {AUTOFIND}
   [~FOUND] BEGIN
     ERROR 999 "Aliquota nao cadastrada, tecle algo"
     PAUSE ""
     CLEARWARNING
     GOTO ALIQUOTA
   END

   MOVE LFLANCA2.ALQ TO TALQ1
//   MOVE TALQ1 TO LFLANSAD.ALIICM

   ENTRY LFLANSAD.ALIICM TALQ1 {NOENTER}
   ENTRY LFLANCA2.ALQ1   TALQ2 {DISPLAYONLY}
   ENTRY LFLANCA2.PERC   TALQ3 {DISPLAYONLY}

   ENTRY LFLANSAD.DT_SAIDA TDT_SAI {AUTOFIND}
   FINDKEY EQ LFLANSAD BY INDEX.1 FOR LFLANSAD.LOJA EQ TLOJ;
                                      LFLANSAD.NUM_DOC EQ TNF;
                                      LFLANSAD.SERIE EQ TSER;
                                      LFLANSAD.ALIICM EQ LFLANCA2.ALQ;
                                      LFLANSAD.DT_SAIDA EQ TDT_SAI
   [~FOUND] BEGIN
     SHOW (MENSAGEM("Lancamento Nao Esta Cadastrado, tecle algo"))
     GOTO ALIQUOTA
   END
   ENTDISPLAY LFLANSAD

   FINDKEY EQ CRCADCLI BY INDEX.1 FOR CRCADCLI.CODCLI EQ LFLANSAD.CODCLI
   ENTDISPLAY CRCADCLI

   MOVE LFLANSAD.UF   TO TEST

   FINDKEY EQ LFLANCA2 BY INDEX.2 FOR LFLANCA2.ALQ EQ LFLANSAD.ALIICM
   [ FOUND] ENTDISPLAY LFLANCA2
  CFO:
   ENTRY LFCADCFO.CODIGO   TCFO {AUTOFIND}
   INDICATE CERTO AS [ FOUND]
   [~CERTO] ENTRY LFCADCFO.DESCR TDCFO {CAPSLOCK,AUTOFIND}
   [~FOUND] GOTO CFO

   ENTRY LFLANSAD.ESPECIE  TESP {CAPSLOCK}
   ENTRY LFLANSAD.MODELO TMODELO { REQUIRED } 

  UF:
   ENTRY AVCADEST.COD_EST TEST {AUTOFIND}
   INDICATE CERTO AS [ FOUND]
   [~CERTO] ENTRY AVCADEST.DESCR TDEST {CAPSLOCK,AUTOFIND}
   [~FOUND] GOTO UF

   MOVE TLOJ TO VLOJA

  CLIENTE:
   ENTRY CRCADCLI.CODCLI TCLI   {AUTOFIND,AUTOCLEAR}
   INDICATE CERTO AS [ FOUND]
   [~CERTO] ENTRY CRCADCLI.DESCR TDCLI { CAPSLOCK,AUTOFIND}
   [~FOUND] GOTO CLIENTE
   IF LFPARAM.CODIGO NE VLOJA BEGIN
      ERROR 999 "Este Cliente Nao Pertence a Empresa ...!"
      PAUSE ""
      FINDKEY EQ LFPARAM BY INDEX.1 FOR LFPARAM.CODIGO EQ VLOJA
      ENTDISPLAY LFPARAM
      GOTO CLIENTE
   END

   ENTRY LFLANSAD.DT_NOTA   TDT_ENT {REQUIRED}

   MOVE 0 TO VTBCICMS
   MOVE 0 TO VTISENTAS
   MOVE 0 TO VTOUTRAS
   MOVE 0 TO VTIMPOSTO
   MOVE 0 TO VTCONTABI
   MOVE 0 TO VTCALIPI
   MOVE 0 TO VTISENTA
   MOVE 0 TO VTOUTRA
   MOVE 0 TO VTIMP

   ENTRY LFLANSAD.B_C_ICM  TBASE_ICM
   IF TALQ3 NE 0 BEGIN
      MOVE TBASE_ICM TO VBASE
      CALC ((TBASE_ICM * TALQ3) / 100) TO TBASE_ICM
      CALC (VBASE - TBASE_ICM) TO TISEN_ICM
   END

   ENTRY LFLANSAD.ISENICM  TISEN_ICM
   ENTRY LFLANSAD.OUTICM   TOUT_ICM
   CALC ((TBASE_ICM * TALQ1) / 100) TO TIMP_ICM
   ENTRY LFLANSAD.IMPICM   TIMP_ICM
   CALC (TBASE_ICM + TISEN_ICM + TOUT_ICM) TO TVLR_CONT
   ENTRY LFLANSAD.VL_CONTAB TVLR_CONT
			ENTRY LFLANSAD.VL_FATURAMENTO TVLRFATUR

   ENTRY LFLANSAD.TIPO TTIPO { CHECK="123" }

  OBS:
   ENTRY LFOBSLAN.CODIGO TOBS {AUTOFIND}
   INDICATE CERTO AS [ FOUND]
   [~CERTO] BEGIN
     CLEARFORM TDESC_AUX
     PAGE TDESC_AUX
     ENTRY LFOBSLAN.DESCR TDESC_AUX.1 {CAPSLOCK,AUTOFIND}
     [~FOUND] GOTO OBS
   END
   MOVE LFOBSLAN.DESCR TO TDOBS

   MOVE "S" TO TCONF
   ACCEPT TCONF {CAPSLOCK}
   IF TCONF NE "S" GOTO INICIO

   IF LFPARAM.IPISAIDA EQ "N" GOTO TOT
   INDICATE FICA TRUE

   SEARCHKEY GE LFLANSAI BY INDEX.1 COMPARING LFLANSAI.LOJA     EQ TLOJ;
                                              LFLANSAI.NUM_DOCI EQ TNF;
                                              LFLANSAI.SERIE    EQ TSER
   WHILE [ FICA]
      INDICATE PASSOU FALSE
      INDICATE ENTRA AS [ FOUND]
     CLASS:
      CLEARFORM TCLASS
      CLEARFORM TUN
      CLEARFORM TQTD
      CLEARFORM TBASE_IPI
      CLEARFORM TISEN_IPI
      CLEARFORM TOUT_IPI
      CLEARFORM TALIQ_IPI
      CLEARFORM TIMP_IPI
      CLEARFORM TVLR_ART

      [ ENTRA] BEGIN
        IF LFLANSAI.ALIQ_ICMS NE LFLANSAD.ALIICM GOTO PROXIMO
        ENTDISPLAY LFLANSAI
        ENTRY LFLANSAI.CLAS_FISCA TCLASS {DISPLAYONLY}
      END
      [~ENTRA] BEGIN
        ENTRY LFLANSAI.CLAS_FISCA TCLASS {REQUIRED}
        IF TCLASS EQ 0 GOTO TOT

        FINDKEY EQ LFLANSAI BY INDEX.1 FOR LFLANSAI.LOJA       EQ TLOJ;
                                           LFLANSAI.NUM_DOCI   EQ TNF;
                                           LFLANSAI.SERIE      EQ TSER;
                                           LFLANSAI.ALIQ_ICMS  EQ LFLANSAD.ALIICM;
                                           LFLANSAI.CLAS_FISCA EQ TCLASS
        INDICATE ENTRA AS [ FOUND]
        INDICATE PASSOU TRUE
        [ ENTRA] ENTDISPLAY LFLANSAI
      END
      ENTRY LFLANSAI.UNIDADE TUN  {CAPSLOCK}
      ENTRY LFLANSAI.QUANTD  TQTD
      ENTRY LFLANSAI.B_C_IPI TBASE_IPI
      ENTRY LFLANSAI.ISENIPI TISEN_IPI
      ENTRY LFLANSAI.OUTIPI  TOUT_IPI
      ENTRY LFLANSAI.ALIQIPI TALIQ_IPI
      ENTRY LFLANSAI.IMPIPI  TIMP_IPI
      ENTRY LFLANSAI.ART82   TVLR_ART

      MOVE "S" TO TCONF
      ACCEPT TCONF {CAPSLOCK}
      IF TCONF NE "S" GOTO CLASS

     REREAD
      [~ENTRA] BEGIN
        CLEAR LFLANSAI
        MOVE TLOJ   TO LFLANSAI.LOJA
        MOVE TNF    TO LFLANSAI.NUM_DOCI
        MOVE TSER   TO LFLANSAI.SERIE
        MOVE TCLASS TO LFLANSAI.CLAS_FISCA
        MOVE LFLANSAD.ALIICM TO LFLANSAI.ALIQ_ICMS
      END

      MOVE TUN       TO LFLANSAI.UNIDADE
      MOVE TALIQ_IPI TO LFLANSAI.ALIQIPI
      MOVE TALQ1     TO LFLANSAI.ALIQ_ICMS
      MOVE TVLR_ART  TO LFLANSAI.ART82
      MOVE TQTD      TO LFLANSAI.QUANTD
      MOVE TBASE_IPI TO LFLANSAI.B_C_IPI
      MOVE TISEN_IPI TO LFLANSAI.ISENIPI
      MOVE TOUT_IPI  TO LFLANSAI.OUTIPI
      MOVE TIMP_IPI  TO LFLANSAI.IMPIPI
      SAVERECORD LFLANSAI
     UNLOCK

    PROXIMO:
     [ PASSOU] BEGIN
       INDICATE ENTRA FALSE
       GOTO CLASS
     END

     FIND GT LFLANSAI BY INDEX.1
     [ FOUND] INDICATE FOUND AS LFLANSAI.LOJA     EQ TLOJ
     [ FOUND] INDICATE FOUND AS LFLANSAI.NUM_DOCI EQ TNF
     [ FOUND] INDICATE FOUND AS LFLANSAI.SERIE    EQ TSER
    END
   TOT:
    CLEAR LFLANSAI

    REREAD
    ENTUPDATE LFLANSAD
    MOVE TCFO    TO LFLANSAD.CFO
    MOVE TEST    TO LFLANSAD.UF
    //MOVE TCTB    TO LFLANSAD.CONTABIL
    MOVE TTIPCTB TO LFLANSAD.COD_TIPCTB
    MOVE TCLI    TO LFLANSAD.CODCLI
    MOVE TOBS    TO LFLANSAD.CODOBS
    MOVE TALIQ   TO LFLANSAD.CODALI
    MOVE TMODELO TO LFLANSAD.MODELO
    SAVERECORD LFLANSAD
    UNLOCK

    GOTO INICIO
ENDGROUP
ABORT

KEYPROC KEY.ESCAPE
  IF CURRENT_WINDOW GE 22 BEGIN
     ENTAGAIN
     RETURN
  END
  CLEARSCREEN
  ABORT

KEYPROC KEY.UP
  INDICATE CERTO AS CURRENT_WINDOW EQ 25
  [ CERTO] ENTAGAIN
  [~CERTO] BACKFIELD
RETURN

KEYPROC KEY.CLEAR
  CLEARFORM TNF THRU TCONF
  INDICATE CERTO AS CURRENT_IMAGE NE 1
  [~CERTO] INDICATE CERTO AS CURRENT_WINDOW EQ 40
  [ CERTO] BEGIN
    ENTAGAIN
    RETURN
  END
  [~CERTO] INDICATE CERTO AS CURRENT_WINDOW EQ 25
  [~CERTO] INDICATE CERTO AS CURRENT_WINDOW EQ 39
  [~CERTO] BEGIN
    FOR X FROM 23 TO 35 STEP 2
        [~CERTO] INDICATE CERTO AS CURRENT_WINDOW EQ X
    LOOP
  END
  [ CERTO] RETURN CLASS
RETURN INICIO

KEYPROC KEY.DELETE
  INDICATE CERTO AS CURRENT_WINDOW EQ 25
  [~CERTO] INDICATE CERTO AS CURRENT_WINDOW EQ 39
  [~CERTO] BEGIN
    FOR X FROM 23 TO 35 STEP 2
        [~CERTO] INDICATE CERTO AS CURRENT_WINDOW EQ X
    LOOP
  END
  [ CERTO] BEGIN
    FINDKEY EQ LFLANSAI BY INDEX.1 FOR LFLANSAI.LOJA       EQ TLOJ;
                                       LFLANSAI.NUM_DOCI   EQ TNF;
                                       LFLANSAI.SERIE      EQ TSER;
                                       LFLANSAI.ALIQ_ICMS  EQ LFLANSAD.ALIICM;
                                       LFLANSAI.CLAS_FISCA EQ TCLASS
    [ FOUND] BEGIN
      LOCK
      DELETE LFLANSAI
      UNLOCK
      RETURN PROXIMO
    END
  END
  ENTAGAIN
RETURN

KEYPROC KEY.SAVE
KEYPROC KEY.USER
KEYPROC KEY.USER2
KEYPROC KEY.CALCULATE
KEYPROC KEY.FIELD
KEYPROC KEY.SFIND
KEYPROC KEY.FIND
  ENTAGAIN
RETURN

KEYPROC KEY.HELP
  IF CURRENT_WINDOW EQ 15 BEGIN
     PAGE HELP1
     PAUSE ""
     ENTAGAIN
     RETURN
  END
  PAGE HELP
  PAUSE ""
  ENTAGAIN
RETURN

