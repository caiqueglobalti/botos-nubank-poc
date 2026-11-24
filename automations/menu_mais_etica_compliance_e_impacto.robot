# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Ética, Compliance e Impacto leva ao destino https://nubank.com.br/etica-compliance-e-impacto."],"automationId":"menu_mais_etica_compliance_e_impacto","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Ética, Compliance e Impacto e validar o destino /etica-compliance-e-impacto.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_etica_compliance_e_impacto","queueName":"rpa_queue_menu_mais_etica_compliance_e_impacto","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Ética, Compliance e Impacto.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Ética, Compliance e Impacto pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /etica-compliance-e-impacto    Ética, Compliance e Impacto
    Verificar destino    https://nubank.com.br/etica-compliance-e-impacto
