param
(
    [DateTime] $EventDate = '09/20/2021',
    [string]   $Presenter = 'Gael',
    [string]   $Subject   = 'how to work with PowerShell modules'
)

Import-Module $PSScriptRoot\MyModule -PassThru -Force

$MyParams = @{
    EventDate = $EventDate 
    Presenter = $Presenter
    Subject   = $Subject
}

Get-MyDemoMessage @MyParams  | Show-MyDemoEventMessage