#!/bin/bash

# entry-point.sh
#------------------------------------------------------------------
# This script sets up the environment, makes necessary scripts executable,
# and runs the py-check script. If successful, it runs the boto3-auth-test.py script.

# Function to handle errors
handle_error() {
    echo "Error: $1"
    exit 1
}

# Function to check OS type and set Python and Pip commands
os_check() {
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        echo "python pip"
    else
        echo "python3 pip3"
    fi
}

# Make the scripts executable
make_scripts_executable() {
    chmod +x py-check.sh
    chmod +x boto3-auth-test.py  # Change this to your actual Python script name
    echo "Scripts made executable."
}

# Main function
main() {
    read python_cmd pip_cmd < <(os_check)

    echo "Using commands: Python = $python_cmd, Pip = $pip_cmd"
   

    # Make scripts executable
    make_scripts_executable
    echo 

    # Execute the py-check script with determined commands
    if ./py-check.sh "$python_cmd" "$pip_cmd"; then
        echo "py-check.sh completed successfully."
        
        # Execute the boto3-auth-test.py script
        echo "Running boto3-auth-test.py..."
        echo
        python ./"boto3-auth-test.py"  # Ensure it's in the same directory or provide a path
        
    else
        echo "py-check.sh encountered an error."
        exit 1
    fi

    echo
    echo "All processes completed successfully!"
}

# Execute the main function
main
