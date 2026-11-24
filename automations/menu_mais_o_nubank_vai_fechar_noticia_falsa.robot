# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Nubank falindo? Não! leva ao destino https://nubank.com.br/o-nubank-vai-fechar-noticia-falsa."],"automationId":"menu_mais_o_nubank_vai_fechar_noticia_falsa","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Nubank falindo? Não! e validar o destino /o-nubank-vai-fechar-noticia-falsa.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_o_nubank_vai_fechar_noticia_falsa","queueName":"rpa_queue_menu_mais_o_nubank_vai_fechar_noticia_falsa","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Nubank falindo? Não!.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Nubank falindo? Não! pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /o-nubank-vai-fechar-noticia-falsa    Nubank falindo? Não!
    Verificar destino    https://nubank.com.br/o-nubank-vai-fechar-noticia-falsa
