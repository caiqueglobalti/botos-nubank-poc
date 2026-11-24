# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Canais de Atendimento leva ao destino https://nubank.com.br/contatos."],"automationId":"menu_mais_contatos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Canais de Atendimento e validar o destino /contatos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_contatos","queueName":"rpa_queue_menu_mais_contatos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Canais de Atendimento.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Canais de Atendimento pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /contatos    Canais de Atendimento
    Verificar destino    https://nubank.com.br/contatos
