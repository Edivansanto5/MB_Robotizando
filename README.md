# Projeto de Automação com Robot Framework e Selenium
Este projeto é um exemplo básico de automação de testes utilizando o Robot Framework e o Selenium WebDriver. Ele demonstra como configurar e executar testes automatizados em um navegador web

## Pré-requisitos
Antes de começar, você precisa ter o seguinte instalado:

Python 3.x
pip (gerenciador de pacotes do Python)
Google Chrome ou Mozilla Firefox (dependendo do navegador que você deseja automatizar)
Chromedriver ou Geckodriver (compatível com a versão do seu navegador)
Selenium
Robot Framework

## Instalação
pip install robotframework
pip install selenium
## Estrutura do Projeto

## Executando os Testes
Para executar todos os testes na pasta tests e gerar relatórios na pasta reports:
robot -d reports tests/

Para executar um teste específico:
robot -d reports tests/example_test.robot

Para executar um conjunto de testes dentro de uma pasta específica:
robot -d reports tests/some_folder/
