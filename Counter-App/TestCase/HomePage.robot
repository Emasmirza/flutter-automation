

*** Setting ***

Resource                   ../keywords-and-importer/keywords.robot
Resource                   ../keywords-and-importer/HomePage.robot

*** Variables ***
${Button_increment}        tooltip=Increment
${Button_increment_key}    tombol-plus




*** Test Case ***

Click Element
    Open App
    Click Element        ${Button_increment_key}
    Click Element        ${Button_increment}
    Sleep                10
    Close Application