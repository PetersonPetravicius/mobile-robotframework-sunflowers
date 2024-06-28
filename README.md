
# Mobile Automation SunFlower
Automação de um aplicativo [Android](https://github.com/android/sunflower#unsplash-api-key) utilizando o RobotFramework

## 🚀 Começando 🚀 

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

Consulte **[Implantação](https://github.com/PetersonPetravicius/StoneCase03/blob/main/README.md)** para saber como implantar o projeto.

### 📋 Pré-requisitos 📋

+ [GitBash 2.44.0 ++](https://git-scm.com/downloads)

+ [VScode IDE](https://code.visualstudio.com/download)

+ [Python v3.12.4 ++](https://www.python.org/downloads/) 

+ [Java JDK v20.0.0 ++](https://www.oracle.com/br/java/technologies/downloads/)

+ [Android Studio Jellyfish & SDK](https://developer.android.com/studio?gad_source=1&gclid=Cj0KCQjwpZWzBhC0ARIsACvjWRPevBFPkETzjUI_tyZM_Y7fdTfoGqEVjGw6PzAyzBDNYrklCvtKiX0aAszHEALw_wcB&gclsrc=aw.ds&hl=pt-br)

+ [Appium Inspector 2024.6.1 ++](https://github.com/appium/appium-inspector/releases)



Realizar a instalação dos programas antes de dar inicio ao clone do projeto.
```
OBS: Quando Instalar o python, selecionar a opção "Add python.exe TO PATH" para não precisar configurar manualmente as variaveis de ambiente.
OBS: Quando Instalar o Android Studio, selecionar a opção "Android Virtual Device" para inclusão desta funcionalidade no pacote.
OBS: Quando instalar o Appium Inspector, caso o Windows Defender ou antivirus estiverem ativados, a instalação pode ser interrompida, então mantenham eles inativos durante esse processo.
```

### 🔧 Instalação 🔧

Ao atender os pré-requisitos, é necesario configurar o [gitBash](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Configura%C3%A7%C3%A3o-Inicial-do-Git).

```
Seguir o artigo de configuração GITBASH.

```

Feito isto, você está apto a realizar o [Clone](https://www.dio.me/articles/comando-git-conheca-o-git-clone-como-nunca) do projeto.

```

Seguir o artigo detalhado para realizar o Clone deste projeto em sua maquina local.

```

Configurar Variaveis de ambiente

```
	JAVA_HOME: incluir em variaveis de sistema o caminho de instalação do JDK.
		EX: JAVA_HOME = C:\Program Files\Java\jdk-22
	
	ANDROID_HOME: Incluir em variavies de sistema o caminho de instalação do Android SDK.
		EX: ANDROID_HOME = C:\Users\Userlocal\AppData\Local\Android\Sdk
	
	PATH: Incluir na variavel de sistema o java e o android
		EX: PATH = %JAVA_HOME%\bin
			PATH = %ANDROID_HOME%\platform-tools
```

Realizar a sequencia de comandos no terminal (Raiz do projeto):

```
Conferencia após instalação do Node.js & Java:
	node --version
	npm  --version
    java --version
```
```
Alteração do gerenciador de pacote npm para yarn:
    corepack enable
    yarn --version
```
```
Instalar o Appium e Appium-doctor:
    npm init
    npm i appium
    npm i appium-doctor

        Conferir diagnostico das instalações do Android com Appium-doctor:
                npx appium-doctor --android
```

```
Instalar UIAutomator2:
    npx appium drivers list --installed
	Caso nao encontre o UIAutomator2 então rode:
		npx appium driver install uiautomator2
```

```
Conferir versão do Python e instalar Robotframework & Appium Library:
    python --version
    pip --version
    pip install robotframework
    robot --version
    pip install --upgrade robotframework-appiumlibrary
```

🏆Se chegou até aqui, então o projeto ja está disponivel para analise e execução dos testes no seu local.🏆 


## ⚙️ Executando os testes ⚙️ 

Para execução dos testes, abra o android Studio e Inice a virtualização do Device.
    OBS: Na guia Device Manager é possivel encontrar um dispositivo Default Pixel 3a API 34.

Mantenha uma guia do GitBash aberta na raiz do projeto e inicie o servidor Appium:

```
    npx appium
```
Abra o Projeto no VS CODE e em seu terminal rode o comando:
```
    python run_tests.py
        OBS: Esse comando realizará uma execução completa de todos testes contidos na pasta "tests" e criará um report na pasta "results".
```
### 🔩 Analise os testes de ponta a ponta 🔩

Ao fim da execução dos testes, um pequeno report com o resumo das execuções será exibido na guia "Terminal" quando executado o comando do PASSO 04.

```
PS C:\CasesStoneCO\StoneCase03> python run_tests.py
==============================================================================
Tests
==============================================================================
Tests.Home
==============================================================================
Deve abrir a tela principal                                           | PASS |
------------------------------------------------------------------------------
Tests.Home                                                            | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Tests                                                                 | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Output:  C:\CasesStoneCO\StoneCase03\result\result_20240609_231732\output.xml
Log:     C:\CasesStoneCO\StoneCase03\result\result_20240609_231732\log.html
Report:  C:\CasesStoneCO\StoneCase03\result\result_20240609_231732\report.html
PS C:\CasesStoneCO\StoneCase03> 

```

Uma pasta "Results" será gerada na raiz do projeto contendo o arquivo "log.html" desta execução, possuindo maiores detalhes em forma de report.


## 📑 ANALISE DO CASE 📑



## 3. Automação Mobile

Sua missão é desenvolver alguns testes automatizados para o aplicativo Sunflower:


   - [DOCUMENTAÇÃO](https://github.com/android/sunflower#unsplash-api-key)

### Informações sobre a etapa

   - Utilize o formato Gherkin para a criação dos cenários;
   - Utilize o Appium como ferramenta de automatização;
   - Deve ser utilizado o Python como linguagem de programação, caso haja necessidade;
   - O framework de desenvolvimento que deve ser utilizado é o Robot Framework;
   - A execução deve retornar um status e um relatório contendo as informações pertinentes;
   - Tenha um README com todas as instruções pertinentes ao projeto. Organização é muito importante!

### Critérios de Avaliação

   - Organização e detalhamento do Projeto e Casos de Teste; 
   - Conhecimento da ferramenta de automação de análise de qualidade;
   - Escrita dos cenários de teste; 
   - Execução correta dos testes;
   - Uso do formato Gherkin;
   - Geração de relatórios/métricas de qualidade (qualquer saída minimamente organizada);
   - Conhecimento de GIT.
