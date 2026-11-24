# BOTOS_SPEC {"allowedDomains":["international.nubank.com.br","nu.com","nubank.com.br"],"assertions":["O link Trabalhe com a gente redireciona para https://nu.com/pt/carreiras."],"automationId":"menu_mais_trabalhe_com_a_gente","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Trabalhe com a gente e validar o destino https://international.nubank.com.br/pt-br/carreiras.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_trabalhe_com_a_gente","queueName":"rpa_queue_menu_mais_trabalhe_com_a_gente","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Trabalhe com a gente.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Trabalhe com a gente pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    https://international.nubank.com.br/pt-br/carreiras    Trabalhe com a gente
    Verificar destino    https://nu.com/pt/carreiras    ${TRUE}
