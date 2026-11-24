# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Novo Desenrola Brasil 2026 leva ao destino https://nubank.com.br/novo-desenrola-brasil-2026."],"automationId":"menu_mais_novo_desenrola_brasil_2026","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Novo Desenrola Brasil 2026 e validar o destino /novo-desenrola-brasil-2026.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_novo_desenrola_brasil_2026","queueName":"rpa_queue_menu_mais_novo_desenrola_brasil_2026","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Novo Desenrola Brasil 2026.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Novo Desenrola Brasil 2026 pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /novo-desenrola-brasil-2026    Novo Desenrola Brasil 2026
    Verificar destino    https://nubank.com.br/novo-desenrola-brasil-2026
