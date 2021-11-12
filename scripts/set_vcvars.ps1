param($Path)

echo "$Path"

[Environment]::SetEnvironmentVariable(
    "VCVARS",
    $Path,
    [EnvironmentVariableTarget]::Machine)