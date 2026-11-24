# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Outros links e canais leva ao destino #footer-theme-holder."],"automationId":"menu_mais_footer_theme_holder","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Outros links e canais e validar o destino #footer-theme-holder.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_footer_theme_holder","queueName":"rpa_queue_menu_mais_footer_theme_holder","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Outros links e canais.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Outros links e canais pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    \#footer-theme-holder    Outros links e canais
    Verificar destino    \#footer-theme-holder
