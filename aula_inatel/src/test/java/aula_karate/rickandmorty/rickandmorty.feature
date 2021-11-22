Feature: Executar testes funcionais na API de Rick and Morty

Background: Executa antes de cada teste
    * def url_base = 'https://rickandmortyapi.com/api/'
    
@TestOne    
Scenario: Verificar o retorno com sucesso da API com dados válidos de requisição
    Given url url_base
    And path 'character/115'
    When method get
    Then status 200

@TestTwo
Scenario: Verificar o retorno com sucesso da API com dados inválidos de requisição
    Given url url_base
    And path 'character/115897'
    When method get
    Then status 404


@TestThree
Scenario: Verificar o retorno com sucesso da API com dados válidos de requisição e garantir que o retorno tem o JSON esperado para o personagem 115(name e species)
    Given url url_base
    And path 'character/115'
    When method get
    Then status 200
    And match response.name == "Ethan"
    And match response.species == "Human" 

@TestFour
Scenario: Verificar o retorno com sucesso da API com dados válidos de requisição e garantir que o retorno tem o JSON esperado para o personagem 491 e 589(name e species)
    Given url url_base
    And path 'character/491,589'
    When method get
    Then status 200
    And match response[0].name == "Dr. Eleanor Arroway"
    And match response[0].species == "Human" 
    And match response[1].name == "Snake Reporter"
    And match response[1].species == "Animal"

@TestFive
Scenario: Verificar o retorno com sucesso da API com dados válidos de requisição e garantir que o retorno tem o JSON esperado quando filtrar os personagens pela espécie = Human e o primeiro personagem ser o Rick Sanchez(name e species)
    Given url url_base
    And path 'character/?species=Human'
    When method get
    Then status 200
    And match response.results[0].name == "Rick Sanchez"
    And match response.results[0].species == "Human"

@TestSix
Scenario: Verificar o retorno com sucesso da API com dados inválidos de requisição na hora de filtrar a localização
    Given url url_base
    And path 'location/?name=Brasil'
    When method get
    Then status 404
    And match response.error == "There is nothing here"

@TestSeven
Scenario: Verificar o retorno com sucesso da API com dados válidos e garantir que o retorno tem o JSON esperado para a localização do personagem Rick Sanchez(name e dimension)
    Given url url_base
    And path 'character/1'
    And method get
    And status 200
    And def location = $.['origin']['url']
    And print location
    And url location
    When method get
    Then status 200
    And match response.name == "Earth (C-137)"
    And match response.dimension == "Dimension C-137"



