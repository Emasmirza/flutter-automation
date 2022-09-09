*** Settings ***
Resource    ../setting-and-variables/variables.robot
Resource    ../setting-and-variables/setting.robot

*** Variable ***


*** Keywords ***
Open App
    Open Application    ${REMOTE_URL}
    ...                 platformName=${PLATFORM_NAME}
    ...                 automationName=flutter    #ini wajib ada
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 app=${APP}
    #...                               appActivity=id.co.yummy.mobile.MainActivity
    ...                 appPackage=com.example.counter_app_robot  #seusaikan dengan package app yg akan ditest
    ...                 appActivity=com.example.counter_app_robot.MainActivity
                  
Swipe Up Until Element Is Visible
    [Arguments]         ${element}
    FOR                 ${i}                                   IN RANGE                        100
    ${status}           ${value}=                              Run Keyword And Ignore Error    Element Should Be Visible    ${element}
    Run Keyword If      '${status}' == 'PASS'                  Exit For Loop
    Swipe By Percent    50                                     50                              10                           10
    END



