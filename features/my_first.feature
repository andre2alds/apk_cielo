#language: pt
#encode-8


Funcionalidade: Fazer uma pesquisa

  
  Esquema do Cenario: Validar se o campo pesquisa retorna algum valor
    Dado que eu estou na Home
    Quando eu acesso a tela de pesquisa
    Então apos fazer uma pesquisa algum valor é retornado "<Pesquisa>"

    Exemplos: 
    |Pesquisa|
    |Para me credenciar preciso ter uma conta|