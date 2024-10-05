# Python, AWS CLI Utility, boto3 install and auth checks

## Script functionality 

This script containers 3 scripts:
1) ```entry-point.sh``` 
    - This triggers both scripts serving as the entrypoint.
    - Conducts error handling and OS detection 
2) ```py-check.sh```
    - This script verifies python and pip are installed and functional 
    - Verifies AWS config file is present as well as configured 
    - Verifies AWS CLI Utility 
    - Installs boto3
3) ```boto3-auth-test.py```
    - Python script that imports boto3 to test module import functionality 
    - Creates IAM client and interacts with AWS APIs to verify authentication 


## Project Structure

- ./
    - .gitignore
    - README.md
    - repo/
        - push.sh
        - tree.py
    - sample/
        - boto3-nana-sample.py
        - data-sample.py
        - functions-sample.py
        - import-sample.py
        - logic-sample.py
    - test/
        - boto3-auth-test.py
        - entry-point.sh
        - py-check.sh# Python, AWS CLI Utility, boto3 install and auth checks
