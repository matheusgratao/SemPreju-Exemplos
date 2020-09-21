#INCLUDE "RWMAKE.CH"


/*/{Protheus.doc} P.E. MsQuit
Fun��o chamada ap�s o login do usu�rio e no MDI a cada nova aba
@author TOTVS https://tdn.totvs.com/display/public/PROT/MsQuit+-+Controle+de+acesso+ao+sistema
@author Rafael Gon�alves
@since  Setembro/2020
@version 1.0
@project
@param
    Vetor PARAMIXB
    O vetor PARAMIXB possui a seguinte estrutura:
    [1] - Tipo de a��o
        .T. = Logoff
        .F. = Saiu do sistema
/*/

User Function MSQUIT()
Local lLogoff 	:= ParamIxb[1] //vari�vel l�gica que identifica se o P.E. est� sendo executado pelo Logoff ou pela saida definitiva.
Local cMsg 	:= ""
If lLogOff	
	cMsg := "O Usu�rio: "+Alltrim(cUserName)+" efetuou logoff do sistema"
Else	
	cMsg := "O Usu�rio: "+Alltrim(cUserName)+" saiu totalmente do sistema"
EndIf

ApMsgAlert(cMsg)

Return .T.



