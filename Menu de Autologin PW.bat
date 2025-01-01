:: LEIA COM ATENÇÃO!
:: Para aprender a configurar, acesse o repositório no GitHub pelo link 🔗 https://github.com/luanwolf/Menu_Autologin_PW/
:: Se necessitar de suporte me procure no Discord pelo meu usuário Heyash ou pelo Discord da Level UP com o apelido de Ly~

:: Para aceitar acentuação
chcp 65001 

:: Para funcionar as cores do batchfile
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

:: Início do batchfile
@echo off

:: Define o timeout padrão
set TIMEOUT=5

:: Título
title Menu de Autologin PW - by: Heyash
cls

:: Menu
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
echo.                                       
echo  ======================================
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m01.%ESC%[0m%ESC%[32m Titulo 01                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m02.%ESC%[0m%ESC%[32m Titulo 02                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m03.%ESC%[0m%ESC%[32m Titulo 03                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m04.%ESC%[0m%ESC%[32m Spoiler Perfeito                ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m05.%ESC%[0m%ESC%[32m Resgatar logue e ganhe          ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m06.%ESC%[0m%ESC%[32m Fechar contas                   ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m07.%ESC%[0m%ESC%[32m Configurar atraso de login      ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m08.%ESC%[0m%ESC%[32m Sair do Autologin               ⢸
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
if %opcao% GEQ 9 goto opcao9

:: Aqui começa a execução dos autologin ---------------------

:opcao1 
cls
echo  ======================================
echo ⢸             Titulo 01               ⢸ 
echo  ======================================

start Local onde está o atalho
echo Conta 01 logado
timeout /t %TIMEOUT% /nobreak > nul   

start Local onde está o atalho
echo Conta 02 logado
timeout /t %TIMEOUT% /nobreak > nul

start Local onde está o atalho
echo Conta 03 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 04 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 05 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 06 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 07 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 08 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 09 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 10 logado

echo  ==================================
echo ⢸         Contas logadas          ⢸ 
echo  ==================================

timeout /t 5 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao2
cls
echo  ======================================
echo ⢸             Titulo 02               ⢸ 
echo  ======================================

start Local onde está o atalho
echo Conta 01 logado
timeout /t %TIMEOUT% /nobreak > nul   

start Local onde está o atalho
echo Conta 02 logado
timeout /t %TIMEOUT% /nobreak > nul

start Local onde está o atalho
echo Conta 03 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 04 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 05 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 06 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 07 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 08 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 09 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 10 logado

echo  ==================================
echo ⢸         Contas logadas          ⢸ 
echo  ==================================

timeout /t 5 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao3
cls
echo  ======================================
echo ⢸             Titulo 03               ⢸ 
echo  ======================================

start Local onde está o atalho
echo Conta 01 logado
timeout /t %TIMEOUT% /nobreak > nul   

start Local onde está o atalho
echo Conta 02 logado
timeout /t %TIMEOUT% /nobreak > nul

start Local onde está o atalho
echo Conta 03 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 04 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 05 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 06 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 07 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 08 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 09 logado
timeout /t %TIMEOUT% /nobreak > nul  

start Local onde está o atalho
echo Conta 10 logado

echo  ==================================
echo ⢸         Contas logadas          ⢸ 
echo  ==================================

timeout /t 5 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao4
cls

goto ds

:ds
echo ৹ Selecione por onde você deseja efetuar a leitura do Spoiler Perfeito desta semana.
echo. 
echo  ======================================
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m01.%ESC%[0m%ESC%[32m Abrir via Discord                ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m02.%ESC%[0m%ESC%[32m Abrir via navegador              ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m03.%ESC%[0m%ESC%[32m Voltar para o menu               ⢸
echo  =====================================
echo.
set /p discord= %ESC%[7m%ESC%[1m%ESC%[5m৹ Digite a opção desejada:%ESC%[0m%ESC%[32m 

if %discord% equ 1 goto ds1
if %discord% equ 2 goto ds2
if %discord% equ 3 goto ds3

:: Opções de abertura para Spoiler Perfeito -----------------

:ds1
cls
start C:\Users\%username%\AppData\Local\Discord\Update.exe --processStart Discord.exe

echo  =======================================
echo ⢸           Iniciando Discord          ⢸ 
echo  =======================================

:: Abrindo a sala do Discord
start discord://discord.com/channels/428180833044791297/1014981089921605723
timeout /t 2 /nobreak
goto menu

:: --------------------------

:ds2
cls
echo  =========================================
echo ⢸          Iniciando Navegador           ⢸ 
echo  =========================================

start https://discord.com/channels/428180833044791297/1014981089921605723
timeout /t 2 /nobreak
goto menu

:: --------------------------

:ds3
goto menu

:: ----------------------------------------------------------

:opcao5
cls
echo  =========================================
echo ⢸          Iniciando Navegador           ⢸ 
echo  =========================================

start https://minhaconta.levelupgames.com.br/web/login
timeout /t 2 /nobreak
goto menu

:: ----------------------------------------------------------

:opcao6
cls
echo  ==============================================
echo ⢸          Iniciando logout das accs          ⢸ 
echo  ==============================================

taskkill /F /IM ELEMENTCLIENT_64.EXE /T
cls

echo  =====================================
echo ⢸         Contas deslogadas          ⢸ 
echo  =====================================
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
timeout /t 2 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao7
cls
echo  ==============================================
echo ⢸    Alterar tempo de atraso entre logins     ⢸
echo  ==============================================
echo.
set /p novo_timeout= %ESC%[7m%ESC%[1m%ESC%[5m৹ Digite o novo tempo de espera de login (em segundos):%ESC%[0m%ESC%[32m 
if not "%novo_timeout%"=="" set TIMEOUT=%novo_timeout%
echo.
echo Tempo de espera alterado para %ESC%[7m%ESC%[1m%ESC%[5m%TIMEOUT% segundos%ESC%[0m%ESC%[32m.
echo.
echo Retornando ao menu...
timeout /t 2 /nobreak > nul
goto menu

:: ----------------------------------------------------------

:opcao8
cls
echo  =====================
echo ⢸   Fechando menu    ⢸ 
echo  =====================
timeout /t 2 /nobreak > nul
exit

:: ----------------------------------------------------------

:opcao9
cls
echo  ==============================================
echo ⢸ Opcao Invalida! Escolha outra opcao do menu ⢸ 
echo  ==============================================
timeout /t 5 /nobreak > nul
goto menu

:: ----------------------------------------------------------
