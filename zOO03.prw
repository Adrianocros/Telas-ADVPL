#INCLUDE 'Protheus.ch'
#INCLUDE 'Totvs.ch'


/*/{Protheus.doc} nomeFunction
Exemplo de Telas em ADVPL
@type user function
@author user
@since 14/03/2024
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
/*/
User Function zOO03()

Local aArea := FWGetArea()

    fDialogMS()
    fDialogT()
    fDialogFW()

    FWRestArea(aArea)


Return 

/*/{Protheus.doc} fDialogMS
    (long_description)
    @type  Static Function
    @author user
    @since 14/03/2024
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
/*/
Static Function fDialogMS()
        Local oDlgAux 
        Local nJanAltu := 200
        Local nJanLarg := 400
        Local cJanelaTitulo := "Janela fDialogMS "
        

        //Criando a janela
        DEFINE MSDIALOG oDlgAux TITLE cJanelaTitulo  FROM 000,000 TO nJanAltu, nJanLarg COLORS 0, 16777215 PIXEL

        //Ativando a Janela
        ACTIVATE MSDIALOG oDlgAux CENTERED

Return


/*/{Protheus.doc} fDialogT
    (long_description)
    @type  Static Function
    @author user
    @since 14/03/2024
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
/*/
Static Function fDialogT()
    Local oDlgAux 
    Local nJanAltu := 200
    Local nJanLarg := 400
    Local lDimPixels := .T.
    Local lCentraliz := .T.
    Local bBlocoIni := {||}
    Local cJanelaTitulo := "Janela fDialogT "

    //Criando a janela
    oDlgAux := TDialog():New(0,0,nJanAltu,nJanLarg,cJanelaTitulo,,,,,,/**/,,,lDimPixels)

    //Ativando a janela
    oDlgAux:Activate(,,,lCentraliz,,,bBlocoIni)

Return 

/*/{Protheus.doc} fDialogFW
    (long_description)
    @type  Static Function
    @author user
    @since 14/03/2024
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
/*/
Static Function fDialogFW()
    Local oDlgAux 
    Local nJanAltu := 200
    Local nJanLarg := 400
    Local bBlocoTst := {|| FWAlertInfo("Clicou no botõ TESTE ","Botão Teste")}
     Local cJanelaTitulo := "Janela fDialogFW  "


     //Instancia a classe, criando a janela
     oDlgAux := FWDialogModal():New()
     oDlgAux:SetTitle(cJanelaTitulo) 
     oDlgAux:SetSize(nJanAltu,nJanLarg)
     oDlgAux:EnableFormBar(.T.)
     oDlgAux:CreateDialog()
     oDlgAux:CreateFormBar()
     oDlgAux:AddButton("Teste",bBlocoTst,"Teste",,.T.,.F.,.T.,)

     oDlgAux:Activate()

Return 

