# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["A pagina oficial do Nubank abre e o campo CPF contem os 11 digitos fornecidos, sem envio do formulario."],"automationId":"preencher_cpf_nubank","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{"cpf":{"type":"string","pattern":"^[0-9]{11}$"}},"required":["cpf"],"type":"object"},"mode":"programmatic","objective":"Abrir a pagina oficial do Nubank e preencher o campo CPF, sem clicar em Continuar.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"preencher_cpf_nubank","queueName":"rpa_queue_preencher_cpf_nubank","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":["Preenchimento do CPF no formulario da pagina oficial"],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Abre o site oficial do Nubank e preenche o CPF, sem submeter o formulario.
Library    Browser
Library    OperatingSystem
Task Teardown    Close Browser

*** Tasks ***
Preencher CPF na pagina inicial do Nubank
    ${nivel_anterior}=    Set Log Level    NONE
    ${mensagem}=    Get Environment Variable    RPA_QUEUE_MESSAGE    ${EMPTY}
    Should Not Be Empty    ${mensagem}    msg=Informe automationInput.cpf na execucao BotOS.
    ${entrada}=    Evaluate    json.loads($mensagem)    modules=json
    ${cpf}=    Set Variable    ${entrada}[automationInput][cpf]
    Should Match Regexp    ${cpf}    ^[0-9]{11}$    msg=O CPF deve conter 11 digitos.
    Set Browser Timeout    45s
    New Browser    chromium    headless=${FALSE}
    New Context    viewport={'width': 1440, 'height': 900}
    New Page    https://nubank.com.br/home
    ${url}=    Get Url
    Should Start With    ${url}    https://nubank.com.br/    msg=O navegador saiu do dominio oficial.
    Wait For Elements State    css=input#cpf[aria-label="Digite seu CPF"]    visible    timeout=30s
    Fill Text    css=input#cpf[aria-label="Digite seu CPF"]    ${cpf}
    ${valor}=    Get Property    css=input#cpf    value
    ${digitos}=    Evaluate    ''.join(c for c in $valor if c.isdigit())
    Should Be True    $digitos == $cpf    msg=O campo CPF nao foi preenchido corretamente.
    Set Log Level    ${nivel_anterior}
