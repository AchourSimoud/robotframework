*** Settings ***
Documentation    importer la lib selenium
Resource    ../templates/test_temp.resource    
Test Template    affichage
Test Setup    Open Browser    ${url}    ${browser}    
Test Teardown    Close All Browsers
Library    DataDriver    ../data/loginData.csv    dialect=excel    delimiter=,    encoding=utf-8


*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome

*** Test Cases ***
affichage ${username}    ${password}    ${resultat}

*** Keywords ***
affichage
    [Arguments]    ${username}    ${password}    ${resultat}
    Login Avec Username Et Password    ${username}    ${password}    ${resultat}
