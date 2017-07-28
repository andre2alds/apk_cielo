class Home < Calabash::ABase
=begin
Abaixo a minha page corresponde a tela principal, acredito
que poderia dar uma melhorada ainda mais, mas por hora ficou
bem objetiva.
=end
	def pular_tutorial
    	touch("* id:'walkthrough_btnSkip'")
 	end

 	def abrir_menu
 		wait_for_elements_exist("* id:'menu'", :timeout => 20)
 		touch(query("* id:'menu'"))
 	end

 	def touch_central_de_ajuda
 		wait_for_elements_exist("* text:'CENTRAL DE AJUDA'", :timeout => 20)
 		touch(query("* text:'CENTRAL DE AJUDA'"))
 	end

 	def touch_perguntas_frequentes
 		wait_for_elements_exist("* id:'compHelpHeader_lblTitle'")
 		touch(query("* id:'compHelpHeader_lblTitle'"))		
 	end


=begin 
Eu criei um metodo abaixo chamado tela principal com o objetivo
de pular a parte que tem uma especie de tutorial se por acaso esse
tutorial não aparecer o teste não falhará devido ao IF criado,
tenho ciencia que em um teste real devo tratar isso com mais coerencia,
mas eu só quis testar novas possibilidades por isso gerei o codigo abaixo.
=end
 	def tela_principal
 		wait_for_elements_exist("* id:'walkthrough_btnSkip'", :timeout => 20)
		if element_exists("* id:'walkthrough_btnSkip'") == true
    		pular_tutorial
    		abrir_menu
    			else
    			abrir_menu
    	end
    end
end