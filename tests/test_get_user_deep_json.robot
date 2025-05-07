*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Get JSONPlaceholder User - Deep JSON Validation
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    GET On Session    jsonplaceholder    /users/1    expected_status=200
    ${json}=    Set Variable    ${response.json()}

    # Top-level checks
    Should Be Equal As Strings    ${json['id']}       1
    Should Be Equal As Strings    ${json['email']}    Sincere@april.biz

    # Nested address checks
    Should Be Equal As Strings    ${json['address']['street']}       Kulas Light
    Should Be Equal As Strings    ${json['address']['geo']['lat']}   -37.3159

    # Company checks
    Should Be Equal As Strings    ${json['company']['name']}          Romaguera-Crona
    Should Be Equal As Strings    ${json['company']['catchPhrase']}  Multi-layered client-server neural-net
