# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O item Logo Nubank responde conforme o menu observado."],"automationId":"menu_cabecalho_logo","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, testar o item Logo Nubank do cabeçalho sem enviar dados pessoais.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_cabecalho_logo","queueName":"rpa_queue_menu_cabecalho_logo","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Teste do item Logo Nubank do cabeçalho.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Validar Logo Nubank no cabeçalho
    Iniciar navegação desktop
    Click    css=header a[aria-label="Logo Nubank com link para Home"]
    Wait Until Keyword Succeeds    25s    1s    URL deve ser    https://nubank.com.br/
    Wait For Elements State    css=body    visible    timeout=20s
