require 'calabash-android/calabash_steps'
=begin
Com a page devidamente configurada os comandos ficaram mais objetivos,
só de ler cada linha você já sabe exatamente o que vai acontecer
durante a execução.
=end
Dado(/^que eu estou na Home$/) do
  page(Home).tela_principal
end

Quando(/^eu acesso a tela de pesquisa$/) do
  page(Home).touch_central_de_ajuda
  page(Home).touch_perguntas_frequentes
end

Então(/^apos fazer uma pesquisa algum valor é retornado "([^"]*)"$/) do |pesquisa_frase|
 page(Tela_pesquisa).campo_pesquisa
 page(Tela_pesquisa).preencher_pesquisa(pesquisa_frase)
 page(Tela_pesquisa).botao_pesquisar
 page(Tela_pesquisa).confirma_pesquisa
end