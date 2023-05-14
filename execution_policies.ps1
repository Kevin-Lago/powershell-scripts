Get-ExecutionPolicy -List

######### Execution Policies #########
<#
Scripts can run.
Requires that all scripts and configuration files be signed by a trusted publisher, including scripts that you write on the local computer.
Prompts you before running scripts from publishers that you haven't yet classified as trusted or untrusted.
Risks running signed, but malicious, scripts.
#>
Set-ExecutionPolicy -ExecutionPolicy AllSigned

<#
Nothing is blocked and there are no warnings or prompts.
This execution policy is designed for configurations in which a PowerShell script is built in to a larger application or for configurations in which PowerShell is the foundation for a program that has its own security model.
#>
Set-ExecutionPolicy -ExecutionPolicy Bypass

<#
Sets the default execution policy.
Restricted for Windows clients.
RemoteSigned for Windows servers.
#>
Set-ExecutionPolicy -ExecutionPolicy Default

<#
The default execution policy for Windows server computers.
Scripts can run.
Requires a digital signature from a trusted publisher on scripts and configuration files that are downloaded from the internet which includes email and instant messaging programs.
Doesn't require digital signatures on scripts that are written on the local computer and not downloaded from the internet.
Runs scripts that are downloaded from the internet and not signed, if the scripts are unblocked, such as by using the Unblock-File cmdlet.
Risks running unsigned scripts from sources other than the internet and signed scripts that could be malicious.
#>
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

<#
The default execution policy for Windows client computers.
Permits individual commands, but does not allow scripts.
Prevents running of all script files, including formatting and configuration files (.ps1xml), module script files (.psm1), and PowerShell profiles (.ps1).
#>
Set-ExecutionPolicy -ExecutionPolicy Restricted

<#
There is no execution policy set in the current scope.
If the execution policy in all scopes is Undefined, the effective execution policy is Restricted for Windows clients and RemoteSigned for Windows Server.
#>
Set-ExecutionPolicy -ExecutionPolicy Undefined

<#
The default execution policy for non-Windows computers and cannot be changed.
Unsigned scripts can run. There is a risk of running malicious scripts.
Warns the user before running scripts and configuration files that are not from the local intranet zone.
#>
Set-ExecutionPolicy -ExecutionPolicy Unrestricted

######### Execution Policy Scopes #########

<#
Set by a Group Policy for all users of the computer.
#>
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope MachinePolicy

<#
Set by a Group Policy for the current user of the computer.
#>
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope UserPolicy

<#
The Process scope only affects the current PowerShell session. The execution policy is saved in the environment variable $env:PSExecutionPolicyPreference, rather than the registry. When the PowerShell session is closed, the variable and value are deleted.
#>
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope Process

<#
The execution policy affects only the current user. It's stored in the HKEY_CURRENT_USER registry subkey.
#>
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser

<#
The execution policy affects all users on the current computer. It's stored in the HKEY_LOCAL_MACHINE registry subkey.
#>
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine