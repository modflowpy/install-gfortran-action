if ((get-command "gfortran" -ErrorAction SilentlyContinue) -eq $null) {
    write-output "Command gfortran not available"
    exit 1
} else {
    write-output "Command gfortran found"
}

gfortran test/hw.f90 -o hw
write-output "Compile succeeded"

$output=$(./hw)
if ($output -match "hello world") {
    write-output $output
} else {
    write-output "Unexpected output: $output"
    exit 1
}