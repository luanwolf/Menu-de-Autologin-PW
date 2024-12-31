 
# Menu de Autologin PW 💻

Este batch foi feito com carinho para auxiliar os jogadores de Perfect World para efetuar login com várias contas e diversas funcionalidades.

*Não tenho ligação direta com a Level UP, apenas é algo para ajudar a comunidade ❗*


## Funcionalidades 🎲

- Login de várias contas instantaneamente;
- Definir atrasos/delays de logins entre contas;
- Deslogar todas as contas ao mesmo tempo;
- Acesso direto ao Discord para verificação do Spoiler Perfeito;
- Acesso direto ao "Minha conta Level UP".


## Configuração do Menu ⚙️

#### Primeiros passos ✏️

Abra o .bat com qualquer editor de texto.

    Recomendo Notepad++ ou Visual Studio Code

Localize a função **start**, localizou? Você deve informar qual é o caminho onde seu autologin está definido. Conforme exemplo abaixo:

```batch
start E:\Perfect_World\Contas\'Ly~.lnk   
```

Em **echo** você pode informar qual é a conta que está fazendo login para você manter o controle. Veja exemplo abaixo:
```batch
start E:\Pasta\Contas\'Ly~.lnk
echo Ly~ logado
```

Ou, manter o padrão...

```batch
start D:\Pasta\Contas\'Ly~.lnk
echo Conta 01 logado
```

Você consegue colocar **quantas contas quiser**, porém recomendo fazer login sempre de 10 em 10 contas.

Após incluir suas PTs basta renomear no menu substituindo **Título 01, 02 e 03** pelo o que preferir, veja o exemplo:
```batch
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m01.%ESC%[0m%ESC%[32m PT principal                   ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m02.%ESC%[0m%ESC%[32m PT secundária                  ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m03.%ESC%[0m%ESC%[32m Dançinha                       ⢸
```
Ou, manter o padrão...

```batch
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m01.%ESC%[0m%ESC%[32m Titulo 01                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m02.%ESC%[0m%ESC%[32m Titulo 02                       ⢸
echo ⢸ %ESC%[7m%ESC%[1m%ESC%[5m03.%ESC%[0m%ESC%[32m Titulo 03                       ⢸
```

Após está configuração basta salvar e executar o .bat 😊
## Autor 👤

- **Heyash**
    - Criação e customização;
    - Opção para acessar o site da Minha conta Level UP;
    - Criação da funcionalidade de alteração de atraso de logins;

## Colaboração 🫸🏻🫷🏻

Obrigado pelas sugestões e suporte, novas ideias sempre serão acolhidas com muito carinho. 💙

- **UNRL**
    - Opção para alternar o atraso de logins entre as contas;
    - Música de fundo (Se desejar, solicitar via Discord);
- **Medaline**
    - Opção para acessar a sala de Spoiler Perfeito abrindo o Discord automáticamente.

## Suporte 🔗

Para suporte, me procure no Discord através do meu usuário **Heyash**.

Você também pode me encontrar no servidor de Discord da Level UP pelo nick de **Ly~**.

