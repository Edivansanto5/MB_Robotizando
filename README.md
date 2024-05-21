# Projeto de Automação com Robot Framework e Selenium
Este projeto é um exemplo básico de automação de testes utilizando o Robot Framework e o Selenium WebDriver. Ele demonstra como configurar e executar testes automatizados em um navegador web

## Pré-requisitos
Antes de começar, você precisa ter o seguinte instalado:
<ul>
    <li>Python 3.x</li>
    <li>pip (gerenciador de pacotes do Python)</li>
    <li>Google Chrome ou Mozilla Firefox (dependendo do navegador que você deseja automatizar)</li>
    <li>Chromedriver ou Geckodriver (compatível com a versão do seu navegador)</li>
    <li>Selenium</li>
    <li>Robot Framework</li>
</ul>

## Instalação
pip install robotframework
pip install selenium
## Estrutura do Projeto

## Executando os Testes
<p>Para executar todos os testes na pasta tests e gerar relatórios na pasta reports:</p>
<p>robot -d reports tests/</p>

<p>Para executar um teste específico:</p>
<p>robot -d reports tests/example_test.robot</p>

<p>Para executar um conjunto de testes dentro de uma pasta específica:</p>
<p>robot -d reports tests/some_folder/</p>
