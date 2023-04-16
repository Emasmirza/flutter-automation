*** Settings ***
Resource           ../setting-and-variables/variables.robot
Resource           ../setting-and-variables/setting.robot

*** Variable ***
${MENU_LIVE}       xpath=//android.widget.TextView[@text="LIVE"]
${MENU_QUIZ}       xpath=//android.widget.TextView[@text="QUIZ"]
${MENU_BERITA}     xpath=//android.widget.TextView[@text="BERITA"]
${LIST ARTICLE}    //androidx.recyclerview.widget.RecyclerView[@resource-id="com.idntimes.idntimes:id/rvNews"]/android.view.ViewGroup

*** Keywords ***
Verify Menu Bar
    Sleep                                         3
    Element Should Be Visible                     ${MENU_QUIZ}                                 1
    Click Element                                 ${MENU_QUIZ} 
    Sleep                                         2
    #Go Back
    Click Element                                 ${MENU_BERITA}

Verify List Article
    ${count} =                                    Get Matching Xpath Count                     ${LIST ARTICLE}
    Should Be True                                ${count} == 3


Pick Random Article on Homepage
    ${index}=                                     Evaluate                                     random.randint(2,4)    modules=random, sys
    keywords.Swipe Up Until Element Is Visible    xpath=${LIST ARTICLE}\[@index="${index}"]
    Click Element                                 xpath=${LIST ARTICLE}\[@index="${index}"] 