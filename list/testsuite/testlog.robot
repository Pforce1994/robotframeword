*** Settings ***
Resource    ../keyword/klist.robot
Variables    ../variables/vlist.yml
*** Test Cases ***
Tc01
    Show datas from list   @{List A}
Tc02
    Show datas from list    @{List B}
Tc03
    Show datas in list   @{list}
# Tc04
#     Show datas in people   @{people}