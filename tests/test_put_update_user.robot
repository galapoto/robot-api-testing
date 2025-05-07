*** Settings ***
Library      RequestsLibrary
Variables    ../variables/vars.py

*** Test Cases ***
Update Existing User With PUT
    Create Session    jsonplaceholder    ${BASE_URL}
    
    ${payload}=    Create Dictionary
    ...    name=${UPDATED_USER_NAME}
    ...    email=${UPDATED_USER_EMAIL}
    ...    phone=${UPDATED_USER_PHONE}

    ${response}=    PUT On Session    jsonplaceholder    /users/${USER_ID}    json=${payload}    expected_status=200
    ${json}=        Set Variable    ${response.json()}

    Log    Response: ${json}
    
    Should Be Equal As Strings    ${json['name']}     ${UPDATED_USER_NAME}
    Should Be Equal As Strings    ${json['email']}    ${UPDATED_USER_EMAIL}
    Should Be Equal As Strings    ${json['phone']}    ${UPDATED_USER_PHONE}
