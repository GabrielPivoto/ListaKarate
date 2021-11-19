Feature: Executar testes funcionais na API de Rick and Morty

Background: Executa antes de cada teste
    * def url_base = "https://rickandmortyapi.com/api/"

Scenario: Verificar o retorno com sucesso da API Ethan com dados válidos de requisição
    Given url 'https://rickandmortyapi.com/api/character/115'
    When method get
    Then status 200

Scenario: Verificar o retorno com sucesso da API Ethan com dados inválidos de requisição
    Given url 'https://rickandmortyapi.com/api/character/115897'
    When method get
    Then status 404


Scenario: Verificar o retorno com sucesso da API Rick Tóxico com dados válidos de requisição e garantir que o JSON está correto
    Given url 'https://rickandmortyapi.com/api/character/361'
    When method get
    Then status 200
    And match response.name == "Toxic Rick"
    And match response.species == "Humanoid"
    And match response.status == "Dead"

Scenario: Verificar o retorno com sucesso da API Citadel of Ricks com dados válidos de requisição e garantir que o JSON está correto
    Given url url_base
    And path 'location/3'
    When method get
    Then status 200
    And match response.name == "Citadel of Ricks"
    And match response.residents[0] == "https://rickandmortyapi.com/api/character/8"
    And match response.residents[1] == "https://rickandmortyapi.com/api/character/14"

Scenario: Verificar o retorno com sucesso da API The Ricklantis Mixup com dados válidos de requisição e garantir que o JSON está correto e utilizar este retorno para um novo teste.
    Given url url_base
    And path 'episode/28'
    When method get
    Then status 200
    And def characters = $.characters[0]
    And print characters