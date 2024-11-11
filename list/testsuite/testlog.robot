*** Settings ***
Resource    ../keyword/kadd.robot
Variables    ../variables/vlist.yml
*** Test Cases ***
Tc01
    ${list}    Show datas from list
    Log To Console    ${list}   
# Tc02
#     Show datas from list    @{List B}
# Tc03
#     Show datas in list   @{list}
# Tc04
#     Show datas in people   @{people}