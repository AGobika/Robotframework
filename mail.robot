*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${message}  Hello Team

*** Test Cases ***
LoginTest
    open browser    https://mail.google.com/mail/u/0/#inbox  chrome
    Maximize Browser Window
    input text      id:identifierId        gobikaterralogic@gmail.com
    click element   class:VfPpkd-vQzf8d
    Sleep           10s
    input text      name:password        Password!!!
    click element   class:VfPpkd-vQzf8d
    sleep           10s
    Capture Page Screenshot  mail.png
ComposeTest
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           10s
    input text      xpath:(//textarea[@class='vO'])[1]           gobika.a@terralogic.com
    sleep           10s
    input text      name:subjectbox                     Robot framework
    sleep           10s
    input text      xpath://div[@class="Am Al editable LW-avf tS-tW"]      ${message}
#    click element   xpath://*[@id=":ac"]
    choose file     xpath = //input[@name='Filedata']  C:/Users/gobika/PycharmProjects/Chess/mail.png
    sleep           10s
    click element   xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    sleep           10s


*** Keywords ***
