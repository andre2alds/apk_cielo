class Tela_pesquisa < Calabash::ABase
#Essa page corresponde a tela de pesquisa com os respectivos elementos
#que serão usados, dessa vez coloquei nomes mais faceis e objetivos,
#ou seja da pra saber exatamente o que cada metodo vai fazer.	
 	def campo_pesquisa
		touch("webView css:'#neoFormAIInput'")
 	end
 	def preencher_pesquisa(pesquisa_frase)
 		keyboard_enter_text(pesquisa_frase)
 		hide_soft_keyboard
 	end
 	def botao_pesquisar
 		 touch("webView css:'.searchButtom'")
 	end
 	def confirma_pesquisa
 		mensagem = wait_for_elements_exist(["*webView css {Text CONTAINS 'Como fac'}"], :timeout => 20)
 		p "Esta é o retorno da pesquisa: #{mensagem}"
 	end
end