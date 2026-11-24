# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O item Segurança responde conforme o menu observado."],"automationId":"menu_cabecalho_seguranca","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, testar o item Segurança do cabeçalho sem enviar dados pessoais.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_cabecalho_seguranca","queueName":"rpa_queue_menu_cabecalho_seguranca","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Teste do item Segurança do cabeçalho.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Validar Segurança no cabeçalho
    Iniciar navegação desktop
    Click    css=header a[aria-label="Menu Segurança"]
    Verificar destino    https://nubank.com.br/ajuda-e-seguranca
