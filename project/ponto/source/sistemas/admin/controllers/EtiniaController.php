<?php
/**
 * Controle de Etinia
 *
 * @name _EtiniaController
 * @author Alexis Moura
 * @package _controllers
 * @version 1.0
 */
class EtiniaController extends Axs_Controller_Action
{

    /**
     * Objeto do modelo Etinia
     *
     * @name $etinia
     * @access protected
     * @var object
     */
     protected $etinia;


    /**
     * M�todo init da classe.
     *
     * @name init
     * @access public
     * @return void
     */
    function init()
	{
        $this->initView();
        
		$this->etinia = new Etinia;

        // Seta valores pr�-determinados para os campos da view
		$this->carregaValoresView();
    }

    /**
     * M�todo que realiza a verifica��o de login do usu�rio.
     *
     * @name preDispatch
     * @access public
     * @return void
     */
    function preDispatch()
	{
		Axs_ACL::isIdentity();
    }

    /**
     * M�todo respons�vel pelo carregamento de todos os campos combobox, radio, checkbox e outros.
     *
     * @name carregaValoresView
     * @access public
     * @return void
     */
    function carregaValoresView()
    {
        // Carrega a descri��o dos campos
        $this->view->descricaoCampos = $this->etinia->descriptionFields;

        // Carrega a ajuda
        $this->carregaAjuda();
    }

    /**
	 * Fun��o respons�vel por carregar o texto das tooltips do formul�rio.
	 *
	 * @name carregaAjuda
	 * @access public
	 * @return void
	 */
	function carregaAjuda()
	{
        $ajuda['idEtinia']['msg'] = '';
		$ajuda['idEtinia']['obrigatorio'] = 0;

        $ajuda['nameEtinia']['msg'] = '';
		$ajuda['nameEtinia']['obrigatorio'] = 0;

	    $this->view->assign('ajuda', $ajuda);
	}

	/**
     * M�todo principal da classe.
     *
     * @name indexAction
     * @access public
     * @return void
     */
    function indexAction()
	{
        $this->_forward("pesquisa");
    }

    /**
     * M�todo respons�vel pela opera��o de inser��o de dados no banco.
     *
     * @name addAction
     * @access public
     * @return void
     */
    function addAction()
    {
        // Seta o action da view e o T�tulo da p�gina
        $this->setAction(parent::CREATE);
        $this->view->title = 'Cadastro de Etinia';

        // Verifica se a chamada do controller foi feita via POST
        if($this->_request->isPost()){

            // Recupera os dados do formul�rio postado pelo usu�rio
            $dados = $this->etinia->loadFields($this->_request->getParams());

            // Se todas as valida��es n�o contiverem erros
            if($this->etinia->validaInsert()){

                    // Realiza a inser��o dos dados na tabela validando novamente
                    $result = $this->etinia->insertValid($dados);

                    if($result){
						$this->view->mensagens = array(Axs_View_Message::SUCCESSFULLY_CREATED);
						$this->setAction(parent::EDIT);
                    } else {
  						$this->view->mensagens = array(Axs_View_Message::ERROR_CREATING);
					}
            } else {
                // Captura os erros e envia para a tela
                $this->view->errors = $this->etinia->getErros();

                // Captura as mensagens e envia para a tela
				$this->view->mensagens = $this->etinia->getMensagens();
            }
			// Retorna os dados para a tela
            $this->view->assign($this->etinia->getData());
        }

        $this->render();
	}

    /**
     * M�todo respons�vel pela opera��o de atualiza��o de dados no banco.
     *
     * @name editAction
     * @access public
     * @return void
     */
    function editAction()
    {
        // Seta o action da view e o T�tulo da p�gina
        $this->view->title = 'Edi��o de Etinia';
		
        // Recupera os dados do formul�rio postado pelo usu�rio
        $this->etinia->loadFields($this->_request->getParams());
		
		// Seta o action da view
		$this->setAction(parent::EDIT);
		
        // Verifica se a chamada do controller foi feita via POST
        if ($this->_request->isPost()){

            // Se todas as valida��es n�o contiverem erros
            if($this->etinia->validaUpdate()){

					// Realiza a atualiza��o dos dados na tabela validando novamente
                    $result = $this->etinia->updateValid();

                    if($result)	
						$this->view->mensagens = array(Axs_View_Message::SUCCESSFULLY_EDITED);
					else 
						$this->view->mensagens = array(Axs_View_Message::ERROR_EDITING);
				
            } else {
                // Captura os erros e envia para a tela
                $this->view->errors = $this->etinia->getErros();

                // Captura as mensagens e envia para a tela
				$this->view->mensagens = $this->etinia->getMensagens();
            }

			// Retorna os dados para a tela
			$this->view->assign($this->etinia->getData());

        } else {
			// Retorna os dados para a tela
			$this->view->assign($this->etinia->loadData());
        }
        $this->render();
    }

    /**
     * M�todo respons�vel pela opera��o de exclus�o de dados no banco.
     *
     * @name deleteAction
     * @access public
     * @return void
     */
    function deleteAction()
    {
        // Seta o action da view e o T�tulo da p�gina
		$this->view->title = 'Exclus�o de Etinia';
		
        // Recupera os dados do formul�rio postado pelo usu�rio
        $this->etinia->loadFields($this->_request->getParams());
		
		// Seta o action da view
		$this->setAction(parent::DELETE);

	    // Se todas as valida��es n�o contiverem erros
	    if($this->etinia->validaDelete()){

		        // Realiza a exclus�o do registro na tabela
		        $result = $this->etinia->deleteValid($where);

		        if($result){
					// Redireciona para a tela de pesquisa
			    	$this->_redirect("etinia/pesquisa/mensagem/exclusao");
				} else {
					$this->view->mensagens = array(Axs_View_Message::ERROR_DELETING);
				}
		} else {
	        // Captura os erros e envia para a tela
	        $this->view->errors = $this->etinia->getErros();

	        // Captura as mensagens e envia para a tela
			$this->view->mensagens = $this->etinia->getMensagens();
	    }

		// Retorna os dados para a tela
	    $this->view->assign($this->etinia->getData());
    	$this->render();
	}

    /**
     * M�todo respons�vel pela opera��o de pesquisa de dados no banco.
     *
     * @name pesquisaAction
     * @access public
     * @return void
     */
    function pesquisaAction()
    {
        // Seta o t�tulo da pesquisa
        $this->view->title = 'Pesquisa de Etinia';

		// Seta o action da view
		$this->setAction(parent::SEARCH);
		
        // Verifica se o valor do parametro mensagem � igual a exclusao
		if($this->getRequest()->getParam('mensagem') == 'exclusao'){
			$this->view->mensagens = array('Registro exclu�do com sucesso.');
		}

        // Constru��o do filtro de pesquisa
        $filtros = array(
							'idEtinia' => array('tipo_campo'=> 'text',
                                                 	'tipo_dado' => 'string',
                                                	'descricao' => $this->etinia->descriptionFields['idEtinia'],
                                                	),
							'nameEtinia' => array('tipo_campo'=> 'text',
                                                 	'tipo_dado' => 'string',
                                                	'descricao' => $this->etinia->descriptionFields['nameEtinia'],
                                                	),
		                    );

        // Modelos relacionados na consulta
        $modelos = array('from' => array('etinia' => array('idEtinia','nameEtinia')));

        // Campos a serem exibidos na tela
        $camposTabulacao = array(
								 $this->etinia->descriptionFields['idEtinia'] => array('idEtinia','left'),
								 $this->etinia->descriptionFields['nameEtinia'] => array('nameEtinia','left'),
								);

        // Links dos registros da p�gina
        $linkRegistros = array(
                                'controle' => 'etinia',
                                'action'   => 'edit',
                                'params'   => array('chave' => 'Etinia')
                               );

        // Ordena��o padr�o
        $orderPadrao = array('idEtinia');

				
        // Helper de pesquisa
        $pesquisa = $this->_helper->getHelper('Pesquisa');
        $pesquisa->Pesquisa($modelos, $filtros, $camposTabulacao, $linkRegistros, null, false, $orderPadrao);
    }
}
?>