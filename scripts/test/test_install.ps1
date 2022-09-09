
echo "Checking gfortran command"
if ((get-command "gfortran" -ErrorAction SilentlyContinue) -eq $null) {
    echo "gfortran command is not available"
    exit 1
}

