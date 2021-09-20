param
(
    [datetime] $EventDate = '09/20/2021',
    [string]   $Presenter = 'Gael',
    [string]   $Subject   = 'how to work with PowerShell modules'
)

. $PSScriptRoot/Get-MyDemoMessage.ps1
. $PSScriptRoot/Show-MyDemoEventMessage.ps1


$MyParams = @{
    EventDate = $EventDate 
    Presenter = $Presenter
    Subject   = $Subject
}

Get-MyDemoMessage @MyParams  | Show-MyDemoEventMessage