*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${find_the_element}  xpath://a[@href="/news"]
${Browser}  https://github.com/

*** Test Cases ***
LoginTest
    Open Browser  https://ratings.fide.com/  chrome
    maximize browser window
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  ENTER
    press keys  None  gobikaasai1598@gmail.com
    press keys  None  TAB
    press keys  None  Chess123
    press keys  None  ENTER
    sleep       10s

SearchTest
    input text  xpath://input[@type='search']  london
    press keys  None  CTRL+a
    press keys  None  CTRL+c
    press keys  None  ENTER
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  CTRL+a
    press keys  None  DELETE
    press keys  None  CTRL+v
#    click element at coordinates  xpath://*[@class='icon-top']  0  0

CoordinateTest
    ${x}=        Get Horizontal Position  ${find_the_element}
    ${y}=        Get Vertical Position    ${find_the_element}
    sleep  3
    Execute Javascript  window.scrollTo(${x},${y})
#    click element at coordinates  ${find_the_element}  ${x}  ${y}
    click element      ${find_the_element}

MouseTest
    Open Browser                ${Browser}                          chrome
    maximize browser window
    Mouse Down                  xpath://*[@id="user_email"]
    press keys                  None                                gobika.a@terralogic.com
    Mouse Up                    xpath://*[@id="user_email"]
    Mouse Down on Link          xpath://a[@href="#home-code"]
    sleep                       5s
    Mouse Down On Image         xpath://img[@alt="Apple App Store"]
    sleep                       5s
    Execute Javascript          window.scrollTo(0,document.body.scrollHeight)
    Mouse Over                  xpath://img[@alt="Twitter icon"]
    sleep                       5s
    Mouse Out                   xpath://img[@alt="Twitter icon"]

DragTest
    Go To                       https://demoqa.com/droppable
    sleep                       10s
    Drag And Drop               xpath://*[@id="draggable"]          xpath://*[@id="droppable"]
    sleep                       5s
    Open Context Menu           xpath://*[@class="header-wrapper"]
    sleep                       5s


#    Drag And Drop By Offset
*** Keywords ***




