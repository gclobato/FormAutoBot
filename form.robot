*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name}                         GuilhermeLobato
${email}                        teste@gmail.com
${phone}                        61 999999999
${adress}                       Quadra 100, ap 102
${input_name}                   id:name
${input_email}                  id:email
${input_phone}                  id:phone
${input_adress}                 id:textarea
${day_check_box_sunday}         id:sunday
${day_check_box_thursday}       id:thursday
${day_check_box_friday}         id:friday
${input_start_date}             id:start-date
${start_date}                   28/06/2025
${input_end_date}               id:end-date
${end_date}                     29/06/2025
${buton_submit}                 class:submit-btn

*** Keywords ***
Abrir navegador
    Open Browser    url=https://testautomationpractice.blogspot.com    browser=Chrome
    ...             options=add_experimental_option("detach", True)
    Sleep    2

Inputar nome
    Input Text    locator=${input_name}    text=${name}
    Sleep    2

Inputar email
    Input Text    locator=${input_email}    text=${email}
    Sleep    1

Inputar phone
    Input Text    locator=${input_phone}    text=${phone}
    Sleep    1

Inputar adress
    Input Text    locator=${input_adress}    text=${adress}
    Sleep    1

Selecionar gênero
    Select Radio Button    gender    male
    Sleep    1

Selecionar dia da semana
    Select Checkbox    locator=${day_check_box_sunday}
    Select Checkbox    locator=${day_check_box_thursday}
    Select Checkbox    locator=${day_check_box_friday}
    Sleep    1

Selecionar País
    Click Element    locator=//*[@id="country"]
    Sleep    1
    Click Element    locator=//*[@id="country"]/option[9]
    Sleep    1

Selecionar cor
    Click Element    locator=//*[@id="colors"]/option[1]
    Sleep    1

Selecionar animal
    Click Element    locator=//*[@id="animals"]/option[4]
    Sleep    1

Inserir Data Picker 1
    Click Element    locator=//*[@id="datepicker"]
    Wait Until Element Is Visible    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a    5s
    Sleep    1
    Click Element    locator=//*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[3]/a
    Sleep    1

Inserir Data Picker 2
    Click Element    locator=//*[@id="txtDate"]
    Wait Until Element Is Visible    //*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[4]/a    5s
    Sleep    1
    Click Element    locator=//*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[4]/a
    Sleep    1

Inserir Data Picker start-date
    Input Text    locator=${input_start_date}    text=${start_date}
    Sleep    1

Inserir Data Picker end-date
    Input Text    locator=${input_end_date}    text=${end_date}
    Sleep    1

Clicar Submit
    Click Button    locator=${buton_submit}
    Sleep    5

Fechar navegador
    Close Browser

*** Test Cases ***
Automatizando site
    Abrir navegador
    Inputar nome
    Inputar email
    Inputar phone
    Inputar adress
    Selecionar gênero
    Selecionar dia da semana
    Selecionar País
    Selecionar cor
    Selecionar animal
    Inserir Data Picker 1
    Inserir Data Picker 2
    Inserir Data Picker start-date
    Inserir Data Picker end-date
    Clicar Submit
    Fechar navegador
