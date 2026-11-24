# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O item Busca responde conforme o menu observado."],"automationId":"menu_cabecalho_busca","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, testar o item Busca do cabeçalho sem enviar dados pessoais.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_cabecalho_busca","queueName":"rpa_queue_menu_cabecalho_busca","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Teste do item Busca do cabeçalho.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Validar Busca no cabeçalho
    Iniciar navegação desktop
    Click    css=header button[aria-label="Abrir campo de busca"]
    Wait For Elements State    css=header input[aria-label="Busca"]    visible    timeout=10s
    Click    css=header button[aria-label="Fechar campo de busca"]
    Wait For Elements State    css=header input[aria-label="Busca"]    hidden    timeout=10s
