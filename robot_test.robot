*** Settings ***
Library             RequestsLibrary

Suite Setup         Start Application
Suite Teardown      Stop Application


*** Variables ***
${NUMBER_17}        17
${NUMBER_36}        36
${NUMBER_13219}     13219
${BASE_URL}         http://192.168.17.133:5000/


*** Test Cases ***
true_when_number_is_17
    ${response}=    GET    ${BASE_URL}/is_prime/${NUMBER_17}
    Should Be Equal As Strings    ${response.text}    True

false_when_number_is_36
    ${response}=    GET    ${BASE_URL}/is_prime/${NUMBER_36}
    Should Be Equal As Strings    ${response.text}    False

true_when_number_is_13219
    ${response}=    GET    ${BASE_URL}/is_prime/${NUMBER_13219}
    Should Be Equal As Strings    ${response.text}    True


*** Keywords ***
Start Application
    # This is a placeholder. You should start the Flask app before running the tests.
    Log    Starting the Flask application...

Stop Application
    # This is a placeholder. You might want to stop the Flask app after tests if needed.
    Log    Stopping the Flask application...
