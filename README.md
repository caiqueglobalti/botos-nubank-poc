# botos-nubank-poc

Projeto BotOS com 66 automações de navegação do menu Nubank e um scaffold, diretamente na raiz deste repositório. Cada arquivo em `automations/menu_*.robot` é uma automação independente: abre a home em Chromium visível, usa o cabeçalho desktop e verifica o resultado do clique.

`automations/preencher_cpf_nubank.robot` é uma tarefa adicional: abre a página oficial, lê `automationInput.cpf`, preenche o campo CPF e verifica o valor sem enviar o formulário. O caso de teste local correspondente contém dado pessoal e está excluído do Git.

Cada automação tem seu caso de teste documentado em `tests/cases/<automação>/case.json` e `case.md`. O JSON contém `automationInput`; categorias opcionais usam slugs no campo `categories`.

## Cobertura

| Área | Casos |
| --- | ---: |
| Para você (Nubank, Croma e Ultravioleta) | 35 |
| Para seu negócio | 9 |
| Segurança | 5 |
| Saiba Mais | 11 |
| Cabeçalho (logo, dois links diretos, login, busca e CTA) | 6 |
| **Total** | **66** |

O inventário completo, com texto, URL, grupo, tipo de destino e nome da automação, está em `discovery/menu_routes.json`. Os seis casos adicionais estão em `discovery/header_cases.json`. A coleta foi feita em 2026-11-02 no menu desktop de <https://nubank.com.br/home>.

As rotas externas são abertas em nova aba. “Outros links e canais” aponta para uma âncora no rodapé. O botão “Quero ser Nubank” abre um diálogo que orienta o preenchimento do CPF; a automação verifica apenas a abertura desse diálogo. Busca verifica abertura e fechamento do campo. Nenhum caso preenche CPF, faz login ou realiza transação.

O site pode redirecionar `/home` para `/home2` durante a carga. O recurso compartilhado `resources/menu_navigation.resource` reabre o grupo quando isso acontece. O link “Conta para menores” tem `href` `/nu/conta/para-menor-de-18-anos`, mas termina em `/nu/conta-menores`; o teste valida o destino final observado.

“Trabalhe com a gente” sai de `international.nubank.com.br/pt-br/carreiras` e termina em `nu.com/pt/carreiras`. Esse redirecionamento também está registrado no inventário e validado na automação.

## Executar

Em uma sessão gráfica Windows com Python 3.11:

```powershell
python -m pip install -r requirements.txt
rfbrowser init
python -m robot --outputdir artifacts automations/menu_para_voce_conta.robot
```

Para executar uma automação pelo plugin, abra o projeto no Codex, use o painel local BotOS e selecione o arquivo. O painel e o MCP registram PASS ou FAIL com o hash do código. Cada automação deve ter uma execução PASS da versão atual antes de ser publicada. As execuções locais abrem Chromium com `headless=${FALSE}`.

Se outro projeto já ocupou a conexão MCP BotOS nesta sessão, inicie o painel deste projeto diretamente em uma sessão gráfica:

```powershell
python scripts/start_panel.py
```

Abra a URL local impressa pelo script. O painel permanece ativo enquanto esse processo estiver aberto. Depois da primeira execução no painel com a conta conectada, `python tests/run_all_local.py` executa os demais arquivos para o mesmo proprietário, com no máximo dois navegadores simultâneos.

O histórico local de execução foi preservado. Para verificar os 66 casos, hashes e pacotes de publicação sem acessar a plataforma:

```powershell
python tests/validate_catalog.py
```

## Publicar

Conecte a conta do BotOS Web uma vez no painel local. Após uma execução PASS de cada arquivo, publique cada entrada com `botos_publish`, apontando para `automations/<nome>.robot`. O recurso Robot compartilhado é incluído automaticamente no pacote de cada automação. A publicação gera uma release e uma URL própria por entrada; o inventário local não representa releases remotas.

## Manutenção

Quando o menu do Nubank mudar, atualize o inventário, crie ou altere a automação correspondente pelo BotOS, execute a versão nova e publique-a novamente. Evite substituir uma verificação de clique por navegação direta à URL, pois o objetivo é testar a rota percorrida pelo menu.


## BotOS Web centralizado

Instale o pacote `botos-central-agent` do repositório `botos-plugin-codex` no Python
que já executa o Robot Browser. No BotOS Web, abra **Automações → Catálogo →
Conectar plugin** e gere um código. Depois execute:

```powershell
botos-agent --platform https://botos.srv1904427.hstgr.cloud --project . --pair-code CODIGO
```

O agente envia inventário e resultados ao BotOS Web; o código Robot e o navegador
continuam neste computador. As próximas inicializações dispensam `--pair-code`.
Abra **Automações → Projetos locais** para ver o projeto online e executar um caso.
