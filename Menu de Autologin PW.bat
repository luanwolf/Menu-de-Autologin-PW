:: LEIA COM ATENÇÃO!
:: Para aprender a configurar, acesse o repositório no GitHub através do link 🔗 https://github.com/luanwolf/Menu_Autologin_PW/
:: Se precisar de suporte, procure-me no Discord, usando o usuário Heyash ou pelo Discord da Level UP com o apelido Ly~

:: Para habilitar a acentuação
chcp 65001

:: Título do menu
title Menu de Autologin PW - by: Heyash

:: Para funcionar as cores do batchfile
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

:: Caminho do arquivo de configuração
set "configFile=C:\Users\%username%\AppData\Roaming\Heyash\config.txt"

:: Criar a pasta do arquivo de configuração, caso não exista
if not exist "C:\Users\%username%\AppData\Roaming\Heyash" (
    mkdir "C:\Users\%username%\AppData\Roaming\Heyash"
)

:: Define o timeout padrão
set TIMEOUT=5

:: Início do script
@echo off
setlocal enabledelayedexpansion

:: Menu principal
:menu
cls
echo %ESC%[32m%ESC%[7m%ESC%[1mComputador:%ESC%[0m%ESC%[32m %computername%  -  %ESC%[7m%ESC%[1mDia:%ESC%[0m%ESC%[32m %date%
echo %ESC%[7m%ESC%[1mUsuario:%ESC%[0m%ESC%[32m %username%
echo.
echo. ███╗   ███╗███████╗███╗   ██╗██╗   ██╗
echo. ████╗ ████║██╔════╝████╗  ██║██║   ██║
echo. ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
echo. ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
echo. ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
echo. ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝    
echo.
echo ৹ Tempo de espera de login entre as contas atual: %ESC%[7m%ESC%[1m%ESC%[5m%TIMEOUT% segundos%ESC%[0m%ESC%[32m.
if exist "%configFile%" (
    echo ৹ Caminho salvo dos autologins: %ESC%[7m%ESC%[1m%ESC%[5m!shortcutDir!%ESC%[0m%ESC%[32m.
) else (
    echo ৹ Caminho salvo dos autologins: %ESC%[7m%ESC%[1m%ESC%[5mNão configurado%ESC%[0m%ESC%[32m.
)
echo.                                       
echo  ======================================
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m1.%ESC%[0m%ESC%[32m Login individual                ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m2.%ESC%[0m%ESC%[32m Titulo 01                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m3.%ESC%[0m%ESC%[32m Titulo 02                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m4.%ESC%[0m%ESC%[32m Titulo 03                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m5.%ESC%[0m%ESC%[32m Spoiler Perfeito                ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m6.%ESC%[0m%ESC%[32m Resgatar logue e ganhe          ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m7.%ESC%[0m%ESC%[32m Fechar contas                   ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m8.%ESC%[0m%ESC%[32m Configuração do menu            ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5mX.%ESC%[0m%ESC%[32m Sair                            ⢸
echo  =====================================
echo.

set /p opcao= %ESC%[7m%ESC%[1m%ESC%[5m৹ Digite a opção desejada:%ESC%[0m%ESC%[32m 

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8

:: Opção para sair do Menu
if %opcao% equ x goto sair1
if %opcao% equ X goto sair2

:: Opção para dar erro quando informar opção acima do que há configurado
if %opcao% GEQ 9 goto opcao9

:: Aqui começa a execução dos autologin ---------------------

:opcao1
cls

:: Verificar se o arquivo de configuração já existe
if exist "%configFile%" (
    :: Ler o caminho salvo no arquivo de configuração
    for /f "usebackq delims=" %%i in ("%configFile%") do set "shortcutDir=%%i"
) else (
    :: Solicitar ao usuário o caminho da pasta e salvar no arquivo de configuração
    cls
    echo  =========================
    echo ⢸    Login individual    ⢸
    echo  =========================
    echo.
    echo Ei, ei, ei^^! Vi aqui que você ainda não configurou o caminho da pasta que contém seus autologins.
    echo Ex.: C:\Perfect_World\Contas
    echo.
    set /p shortcutDir=%ESC%[7m%ESC%[1m%ESC%[5mDigite o caminho completo da pasta de atalhos:%ESC%[0m%ESC%[32m 
    if not defined shortcutDir (
        echo Nenhum caminho foi informado. Você voltará para o menu.
        goto menu
    )
    cls
    echo !shortcutDir!>%configFile%
    echo  =========================
    echo ⢸    Login individual    ⢸
    echo  =========================
    echo.
    echo Caminho salvo no arquivo de configuração: !shortcutDir!
    echo.
    echo Configuração salva em "%configFile%" com o texto: 
    type "%configFile%"
    echo Você será encaminhado para seleção de personagem.
    timeout /t 3 /nobreak > nul 
    goto opcao1
)

:: Verificar se o diretório existe
if not exist "%shortcutDir%" (
    echo  =========================
    echo ⢸    Login individual    ⢸
    echo  =========================
    echo.
    echo Puts, não encontrei o caminho que você me informou: %shortcutDir%.
    del "%configFile%"
    echo Por favor, execute a opção novamente para reconfigurar.
    goto menu
)

:: Listar atalhos no diretório especificado
cls
echo  =========================
echo ⢸    Login individual    ⢸
echo  =========================
echo.
echo ৹ Selecione qual conta deseja efetuar o login.
echo. 
echo =======================
set "count=0"
for %%f in ("%shortcutDir%\*.lnk") do (
    set /a count+=1
    set "shortcut[!count!]=%%~nxf"
    echo %ESC%[7m%ESC%[1m%ESC%[5m!count!.%ESC%[0m%ESC%[32m %%~nxf
)

:: Verificar se há atalhos
if %count%==0 (
    cls
    echo  =========================
    echo ⢸    Login individual    ⢸
    echo  =========================
    echo.
    echo Nenhum atalho encontrado em %shortcutDir%.
    echo.
    echo Você será encaminhado para configuração da pasta...
    timeout /t 3 /nobreak > nul
    goto config2
)

:: Solicitar ao usuário para selecionar um atalho
:select
echo %ESC%[7m%ESC%[1m%ESC%[5mX.%ESC%[0m%ESC%[32m Voltar para o menu principal
echo =======================
echo.
set /p choice=%ESC%[7m%ESC%[1m%ESC%[5mDigite o número do atalho que deseja abrir:%ESC%[0m%ESC%[32m 

if %choice% equ X goto menu
if %choice% equ x goto menu

:: Validar entrada do usuário
if not defined shortcut[%choice%] (
    cls
    echo  =========================
    echo ⢸    Login individual    ⢸
    echo  =========================
    echo.
    echo Qual foi, tu errou a opção. Bora de novo^^!
    timeout /t 3 /nobreak > nul
    goto opcao1
)

:: Abrir o atalho selecionado
start "" "%shortcutDir%\!shortcut[%choice%]!"
cls
echo  =========================
echo ⢸    Login individual    ⢸
echo  =========================
echo.
echo ৹ Efetuando login da conta: %ESC%[7m%ESC%[1m%ESC%[5m!shortcut[%choice%]!%ESC%[0m%ESC%[32m.
echo.
echo Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao2 
cls
echo  ==================
echo ⢸    Titulo 01    ⢸ 
echo  ==================

start Local onde está o atalho
echo Conta 01 logada
timeout /t %TIMEOUT% /nobreak > nul   

start Local onde está o atalho
echo Conta 02 logada
timeout /t %TIMEOUT% /nobreak > nul

start Local onde está o atalho
echo Conta 03 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 04 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 05 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 06 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 07 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 08 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 09 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 10 logada

echo.
echo Contas logadas^^! Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao3
cls
echo  ==================
echo ⢸    Titulo 02    ⢸ 
echo  ==================

start Local onde está o atalho
echo Conta 01 logada
timeout /t %TIMEOUT% /nobreak > nul   

start Local onde está o atalho
echo Conta 02 logada
timeout /t %TIMEOUT% /nobreak > nul

start Local onde está o atalho
echo Conta 03 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 04 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 05 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 06 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 07 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 08 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 09 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 10 logada

echo.
echo Contas logadas^^! Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao4
cls
echo  ==================
echo ⢸    Titulo 03    ⢸ 
echo  ==================

start Local onde está o atalho
echo Conta 01 logada
timeout /t %TIMEOUT% /nobreak > nul   

start Local onde está o atalho
echo Conta 02 logada
timeout /t %TIMEOUT% /nobreak > nul

start Local onde está o atalho
echo Conta 03 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 04 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 05 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 06 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 07 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 08 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 09 logada
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 10 logada

echo.
echo Contas logadas^^! Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao5
cls

goto ds

:ds
echo  =========================
echo ⢸    Spoiler Perfeito    ⢸ 
echo  =========================
echo.
echo ৹ Selecione onde você deseja efetuar a leitura do Spoiler Perfeito desta semana.
echo. 
echo  ======================================
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m1.%ESC%[0m%ESC%[32m Abrir via Discord                ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m2.%ESC%[0m%ESC%[32m Abrir via navegador              ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5mX.%ESC%[0m%ESC%[32m Voltar para o menu               ⢸
echo  =====================================
echo.
set /p discord= %ESC%[7m%ESC%[1m%ESC%[5m৹ Digite a opção desejada:%ESC%[0m%ESC%[32m 

if %discord% equ 1 goto ds1
if %discord% equ 2 goto ds2
if %discord% equ X goto menu
if %discord% equ x goto menu

:: Opções de abertura para Spoiler Perfeito -----------------

:ds1
cls
start C:\Users\%username%\AppData\Local\Discord\Update.exe --processStart Discord.exe

echo  ==========================
echo ⢸    Iniciando Discord    ⢸ 
echo  ==========================

:: Abrindo a sala do Discord
start discord://discord.com/channels/428180833044791297/1014981089921605723
timeout /t 2 /nobreak > nul
echo.
echo Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: --------------------------

:ds2
cls
echo  ============================
echo ⢸    Iniciando Navegador    ⢸ 
echo  ============================

start https://discord.com/channels/428180833044791297/1014981089921605723
echo.
echo Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao6
cls
echo  ============================
echo ⢸    Iniciando Navegador    ⢸ 
echo  ============================

start https://minhaconta.levelupgames.com.br/web/login
echo.
echo Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao7
cls
echo  ==================================
echo ⢸    Iniciando logout das contas    ⢸ 
echo  ==================================

taskkill /F /IM ELEMENTCLIENT_64.EXE /T
cls

echo  ==========================
echo ⢸    Contas deslogadas    ⢸ 
echo  ==========================
echo.
echo. ⢸
echo. ⢸
echo. ⢸⡀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣶⣄ Foi a dev
echo. ⢿⣿⣄⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀ ⣀⣤⣄
echo.⠀⠹⣿⣧⣀⣠⣴⣾⣷⣿⣷⠾⢷⠋⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⡷
echo.⠀⠀⠈⢿⡿⠟⢻⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⡟  Ai tomei DC
echo.⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⡟⢿⣿⣄⠀⠀⠀⠀⢠⣶⣾⣿⡇ 
echo.⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠙⠿⡿⢆⣴⣿⣿⣿⣿⡇
echo.⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⠀⠀⣤⣶⣾⣿⣿⣿⣿⣷⠹⣷⣤⣤⣄⣀⡀
echo.⠀⠀⠀⠀⠀⢸⣿⣿⡏⣿⣿⣿⢀⣾⣿⣿⣿⣿⣏⠀⢀⣀⣈⣉⣉⣉⣙⣁⣀
echo.⠀⠀⠀⠀⠀⢸⣿⣿⡇⣿⣿⢏⣾⣿⣿⣿⣿⣿⣿⣆
echo.⠀⠀⠀⠀⠀⢸⣿⣿⡇⣿⣿⣷⠈⠉⠙⠛⢻⣭⣷
echo.⠀⠀⠀⠀⠀⢸⣿⣿⡇⣿⣿⣿⠀⠀⠀⠀⠀⢹⣿⣷
echo.⠀⠀⠀⠀⠀⢸⣿⣿⡇⣿⣿⣿⠀⠀⠀⠀⠀⣾⣿⡏
echo.⠀⠀⠀⠀⠀⢸⣿⣿⡇⣿⣿⣿⠀⠀⠀⠀⢰⣿⣿
echo.⠀⠀⠀⠀⠀⠘⢿⡿⠇⠻⣿⠟⠀⠀⠀⠀⢿⣿⠇
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao8
cls
echo  ======================
echo ⢸    Configurações    ⢸
echo  ======================
echo. 
echo ৹ Selecione a opção que você deseja configurar novamente.
echo. 
echo  ======================================
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m1.%ESC%[0m%ESC%[32m Atraso de login entre as contas  ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m2.%ESC%[0m%ESC%[32m Caminho salvo dos autologins     ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5mX.%ESC%[0m%ESC%[32m Voltar para o menu               ⢸
echo  =====================================
echo.
set /p discord= %ESC%[7m%ESC%[1m%ESC%[5m৹ Digite a opção desejada:%ESC%[0m%ESC%[32m 

if %discord% equ 1 goto config1
if %discord% equ 2 goto config2
if %discord% equ X goto menu
if %discord% equ x goto menu

:: Alterar tempo de atraso entre logins ---------------------

:config1
cls
echo  ============================================
echo ⢸    Alterar tempo de atraso entre logins    ⢸
echo  ============================================
echo.
set /p novo_timeout= %ESC%[7m%ESC%[1m%ESC%[5m৹ Digite o novo tempo de espera de login (em segundos):%ESC%[0m%ESC%[32m 
if not "%novo_timeout%"=="" set TIMEOUT=%novo_timeout%
echo.
echo Tempo de espera alterado para %ESC%[7m%ESC%[1m%ESC%[5m%TIMEOUT% segundos%ESC%[0m%ESC%[32m.
echo.
echo Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: Alterar o caminho da pasta -------------------------------

:config2
cls
echo  =============================================
echo ⢸    Alterar o caminho da pasta de atalhos    ⢸
echo  =============================================
echo.
set /p newDir=%ESC%[7m%ESC%[1m%ESC%[5mDigite o caminho completo da pasta de atalhos:%ESC%[0m%ESC%[32m 
if not defined newDir (
    echo Nenhum caminho foi informado. Você voltará para o menu.
    echo.
    echo Voltando para o menu...
    timeout /t 3 /nobreak > nul
    goto menu
)
echo.
echo %newDir%>%configFile%
echo Configuração salva em "%configFile%" com o texto: 
type "%configFile%"
echo.
echo Você será encaminhado para seleção de personagem.
timeout /t 3 /nobreak > nul
goto opcao1

:: ----------------------------------------------------------

:opcao9
cls
echo  =======================
echo ⢸    Opção inválida    ⢸ 
echo  =======================
echo.
echo Voltando para o menu...
timeout /t 3 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:sair1
cls
echo  ======================
echo ⢸    Fechando menu    ⢸ 
echo  ======================
timeout /t 3 /nobreak > nul
exit

:: -----------------------------

:sair2
cls
echo  ======================
echo ⢸    Fechando menu    ⢸ 
echo  ======================
timeout /t 3 /nobreak > nul
exit
