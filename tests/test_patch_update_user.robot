*** Settings ***
Library      RequestsLibrary
Variables    ../variables/vars.py

*** Test Cases ***
Update User Email With PATCH
    Create Session    jsonplaceholder    ${BASE_URL}
    
    ${payload}=    Create Dictionary    email=patched@example.com

    ${response}=    PATCH On Session    jsonplaceholder    /users/${USER_ID}    json=${payload}    expected_status=200
    ${json}=        Set Variable    ${response.json()}

    Log    PATCH Response: ${json}
    Should Be Equal As Strings    ${json['email']}    patched@example.com
