*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser  https://ratings.fide.com/  chrome
    maximize browser window
#    Go To  https://fide.com/?modal=login
    click link  xpath:/html/body/section[1]/div/div/div[3]/a
    input text  id:email  gobikaasai1598@gmail.com
    input text  id:password  Chess123
    click element  xpath://*[@id="cdk-overlay-1"]/nz-modal/div/div[2]/div/div/div/app-auth-login/div/form/button
    Go To  https://ratings.fide.com/
    click element  xpath://*[@id="advanced_search"]
    Select From List By Label  select_rating  Standard rating
    Select From List By Label  select_country  India
#    Select Radio Button  radio_gender  F
    click element  xpath://*[@id="search2"]
    sleep  10


    @{results_on_page}=  Get WebElements  xpath:/html/body/section[3]/div[2]/div/div[4]/div

    FOR  ${element}  IN  @{results_on_page}
        ${text}=  Get Text  ${element}
    END

    click link  xpath://*[@id="table_results"]/tbody/tr[1]/td[1]/a
    ${world_rank}=  Get Text  xpath:/html/body/section[3]/div[2]/div[1]/div/div[2]/div/div[4]/div[1]/div[1]/div[2]
    ${fide_id}=  Get Text  xpath:/html/body/section[3]/div[2]/div[1]/div/div[2]/div/div[4]/div[1]/div[3]/div[2]

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep  10
#    scroll element into view  xpath:/html/body/footer/div/div[1]/div[1]/div/ul/li[1]/a
#    Execute Javascript  window.scrollTo(0,2500)
    click element  xpath://*[@id="link2"]
    Select From List By Label  select_country  India
    sleep  10
    Select From List By value  archive  2021-08-01


*** Keywords ***
