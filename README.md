<img align="right" width="420" height="429.5" src="https://toppng.com/uploads/preview/image-1-source-rick-and-morty-11562982914hmlrrghjuu.png">

# Testes de API usando o Karate

Este projeto foi desenvolvido para testar a API do [Rick and Morty](https://rickandmortyapi.com). 

<h4 align="center"> 
	Autores :pencil2:
</h4>

<p align="center">
 <a href="https://github.com/DarlanAjlune">Darlan Borges Ajlune</a> •
 <a href="https://github.com/GabrielPivoto">Gabriel Pivoto Ambrósio</a> 
</p>

#

## Sumário
* [Testes realizados](#Testes-realizados)
* [Pré-Requisitos](#Pré-requisitos)
* [Criando o Ambiente de Desenvolvimento para seus Teste](#Ambiente-de-Dev)
* [Como executar](#Como-executar)
* [Relatório de testes](#Relatórios)

#
## Cenário de Teste :pencil: <a name="Testes-realizados"></a> 

#
## Pré-requitos :white_check_mark: <a name="Pré-requisitos"></a>
A abordagem que escolhemos necessita que o Maven esteja instalado em sua máquina. Para sistemas Windows seguir o passo a passo do [{Dicas de Java}](https://dicasdejava.com.br/como-instalar-o-maven-no-windows/).
#
## Criando o Ambiente de Desenvolvimento para seus Teste :white_check_mark: <a name="Ambiente-de-Dev"></a>
Execute o comando abaixo no seu terminal, ele será responsável por criar o pom.xml e alguns testes padrão.  
> mvn archetype:generate -DarchetypeGroupId=com.intuit.karate -DarchetypeArtifactId=karate-archetype -DarchetypeVersion=1.0.1 -DgroupId=teste.karate -DartifactId=teste_karate   

Será preciso especificar a versão do projeto, coloque 1.0 e depois digitei Y para confirmar.
Depois de executado ele irá criar uma pasta com nome teste_karate e daí você já pode abrir na sua IDE.
#
## Como executar :rocket: <a name="Como-executar"></a>
Para executar os testes, é necessário que o terminal esteja no mesmo diretório onde se encontra o arquivo pom.xml. Em seguida, execute o seguinte comando:
>mvn test –Dtest=<NOME DO ARQUIVO .JAVA>  

Caso tenha clonado nosso projeto, execute:
>mvn test -Dtest=RickAndMortyTestRunner
#
## Relatório de testes :clipboard: <a name="Relatórios"></a>
O Karate já gera um relatório de teste HTML. Assim que rodar os testes, procure por `HTML report: (paste into browser to view) | Karate version: 1.0.1` no seu terminal. Em seguida, copie a linha abaixo e cole no seu navegador.
#

