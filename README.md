 
# 🪷 Menu de Autologin PW

<p align="center">
 <img src="https://github-production-user-asset-6210df.s3.amazonaws.com/84398721/399581780-205292fd-b1b9-4798-9510-2e476d2bc56b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250101%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250101T194928Z&X-Amz-Expires=300&X-Amz-Signature=d6a895bfab481e9f16d77a8366687ca761eda1ef653fa99ac9b257c0c89fbf32&X-Amz-SignedHeaders=host" />
</p>

Este menu/interface foi feito com carinho para auxiliar os jogadores de Perfect World com várias funcionalidades e facilidades pro dia a dia.
> [!IMPORTANT]
> Não tenho ligação direta com a Level UP, apenas é algo para ajudar a comunidade ❗.

## 🪪 Funcionalidades
- Efetuar o login de várias contas simultâneamente;
- Deslogar todas as contas ao mesmo tempo;
- Configurar o atraso de logins entre as contas;
- Rápido acesso a leitura do "Spoiler Perfeito";
- Rápido acesso ao "Minha conta Level UP".

## 🤔 Como utilizar o menu

### ⚙️ Configuração

Abra o documento baixado com qualquer editor de texto.
> [!TIP]
> Recomendo Notepad++ ou Visual Studio Code.

### 1. Start
Você deve localizar a função **start**, localizou? Nesta etapa você deve informar qual é o caminho onde seu autologin está salvo em seu computador finalizando com o nome do Autologin. Para facilitar, veja exemplo abaixo:

```bat
start D:\Pasta\Contas\'Ly~.lnk   
```

### 2. Echo
Em **echo** você pode informar qual é a conta que está fazendo login para você manter o controle, veja exemplo abaixo:

```bat
echo Ly~ logado
```

Por fim, a parte de login para cada conta ficará da seguinte forma:
```bat
start D:\Pasta\Contas\'Ly~.lnk
echo 'Ly~ logado
timeout /t %TIMEOUT% /nobreak > nul 

start D:\Pasta\Contas\Ly[PSY].lnk
echo Ly[PSY] logado
timeout /t %TIMEOUT% /nobreak > nul 

start D:\Pasta\Contas\Ly[EP].lnk
echo Ly[EP] logado
timeout /t %TIMEOUT% /nobreak > nul 

start D:\Pasta\Contas\Ly[TM].lnk
echo Ly[TM] logado
timeout /t %TIMEOUT% /nobreak > nul 
...
```

> [!NOTE]
> Você consegue colocar quantas contas quiser, porém recomendo utilizar conforme o modelo, ou seja, **10 contas cada opção**.

### 3. Menu
Após incluir suas contas basta renomear no menu substituindo **Título 01, 02 e 03** pelo o que preferir, veja o exemplo:
```bat
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m01.%ESC%[0m%ESC%[32m PT FARM                        ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m02.%ESC%[0m%ESC%[32m PT DANÇA                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m03.%ESC%[0m%ESC%[32m PT CASINHAS                    ⢸
```

### ✔️ Pronto, agora basta salvar e executar o arquivo .bat

------

### 👤 Criador: **Heyash**
### 🤝 Colaboração
Obrigado pelas sugestões e suporte, novas ideias sempre serão acolhidas com muito carinho. 💙

- **UNRL**
- **Medaline**

> [!TIP]
> Se precisar de suporte, me procure no Discord pelo meu usuário **Heyash** ou pelo Discord da Level UP com o apelido de **Ly~**

