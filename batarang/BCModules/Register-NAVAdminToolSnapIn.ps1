<# 
 .Synopsis
  Register NAVAdminTool commands that are used for Business Central.
 .Description
  Use the current PowerShell prompt to register NAVAdminTool commands that are used for Business Central.
 .Parameter ServiceTierPath
  Path to the service tier folder for the version of Business Central to import NAVAdminTools
 .Parameter PrintCommands
  Print the list of commands that are registered with the NAVAdminTools
 .Example
  Register-NAVAdminToolSnapIn -ServiceTierPath "C:\ProgramData\NavContainerHelper\15.0.36560.36626-w1-Files\ServiceTier\Program Files\Microsoft Dynamics NAV\150\Service"

  Register-NAVAdminToolSnapIn -ServiceTierPath "C:\ProgramData\NavContainerHelper\15.0.36560.36626-w1-Files\ServiceTier\Program Files\Microsoft Dynamics NAV\150\Service" -PrintCommands

    CommandType     Name                                               Version    Source                                                                                                          
    -----------     ----                                               -------    ------                                                                                                          
    Function        Get-NAVWebServerInstance                           15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Function        Get-NAVWebServerInstanceConfiguration              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Function        New-NAVWebServerInstance                           15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Function        Remove-NAVWebServerInstance                        15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Function        Set-NAVWebServerInstanceConfiguration              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Convert-NAVCustomization                           15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Convert-NAVTenant                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Copy-NAVCompany                                    15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Copy-NAVTenantData                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Dismount-NAVTenant                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Dismount-NAVTenantDatabase                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Export-NAVApplication                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Export-NAVData                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Export-NAVEncryptionKey                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Export-NAVServerLicenseInformation                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVAddIn                                       15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVAppInfo                                     15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Get-NAVApplication                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NavAppRuntimePackage                           15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Get-NAVAppTableModification                        15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Get-NAVAppTenant                                   15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Get-NAVCompany                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVDataFile                                    15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVDataUpgrade                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerAppConfiguration                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerConfiguration                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerInstance                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerPermission                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerPermissionSet                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerSession                               15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerUser                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVServerUserPermissionSet                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVTableConnection                             15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVTenant                                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVTenantDatabase                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Get-NAVWebService                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Import-NAVConfigurationPackageFile                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Import-NAVData                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Import-NAVEncryptionKey                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Import-NAVMembershipEntitlement                    15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Import-NAVServerLicense                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Install-NAVApp                                     15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Invoke-NAVApplicationDatabaseConversion            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Invoke-NAVCodeunit                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Mount-NAVApplication                               15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Mount-NAVTenant                                    15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Mount-NAVTenantDatabase                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Move-NAVTenant                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVAddIn                                       15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVApplicationDatabase                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVCompany                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVDatabase                                    15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVEncryptionKey                               15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerAppConfiguration                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerConfiguration                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerInstance                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerPermission                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerPermissionSet                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerUser                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVServerUserPermissionSet                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVTableConnection                             15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVTenant                                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          New-NAVWebService                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Publish-NAVApp                                     15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Register-NAVTenant                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVAddIn                                    15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVApplication                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVCompany                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVConfigurationPackageFile                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVServerInstance                           15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVServerPermission                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVServerPermissionSet                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVServerSession                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVServerUser                               15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVServerUserPermissionSet                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVTableConnection                          15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVTenant                                   15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Remove-NAVWebService                               15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Rename-NAVCompany                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Repair-NAVApp                                      15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Restart-NAVServerInstance                          15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Resume-NAVDataUpgrade                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVAddIn                                       15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVApplication                                 15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVCompany                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVServerAppConfiguration                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVServerConfiguration                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVServerInstance                              15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVServerPermission                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVServerPermissionSet                         15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVServerUser                                  15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Set-NAVTenant                                      15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Start-NAVAppDataUpgrade                            15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Start-NAVDataUpgrade                               15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Start-NAVServerInstance                            15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Stop-NAVDataUpgrade                                15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Stop-NAVServerInstance                             15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Sync-NAVApp                                        15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Sync-NAVTenant                                     15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Sync-NAVTenantDatabase                             15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Test-NAVTenantDatabaseSchema                       15.0.36... Microsoft.Dynamics.Nav.Management                                                                               
    Cmdlet          Uninstall-NAVApp                                   15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Unpublish-NAVApp                                   15.0.36... Microsoft.Dynamics.Nav.Apps.Management                                                                          
    Cmdlet          Update-NAVScheduledTaskList                        15.0.36... Microsoft.Dynamics.Nav.Management  
#>
function Register-NAVAdminToolSnapIn {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $ServiceTierPath,
        [switch] $PrintCommands
    )

    $errorVariable = $null
    # Check if there is any error in the ErrorVariable
    function Test-ErrorVariable {
        return ($null -ne $errorVariable -and $errorVariable.Count -gt 0)
    }

    function RegisterSnapIn {
        [CmdletBinding()]
        param(
            [Parameter(Mandatory = $true)]
            [string] $snapIn,
            [Parameter(Mandatory = $true)]
            [string] $ServiceTier
        )
        if (Get-Module $snapIn) {
            return
        }

        $snapInAssembly = Join-Path $ServiceTier "\$snapIn.psd1"
        if (!(Test-Path $snapInAssembly)) { $snapInAssembly = Join-Path $ServiceTier "\$snapIn.dll" }

        # First try to import the module
        Import-Module $snapInAssembly -ErrorVariable errorVariable -ErrorAction SilentlyContinue -Global

        if (Test-ErrorVariable -eq $true) {
            # fallback to add the snap-in
            if ($null -eq (Get-PSSnapin -Name $snapIn -ErrorAction SilentlyContinue)) {
                if ($null -eq (Get-PSSnapin -Registered $snapIn -ErrorAction SilentlyContinue)) {
                    Write-Error "Some cmdlets may not be available`n"
                }
                else {
                    Add-PSSnapin $snapIn
                }
            }
        }
    }

    # Register Microsoft Dynamics NAV Management Snap-in
    RegisterSnapIn -snapIn "Microsoft.Dynamics.Nav.Management" -ServiceTier $ServiceTierPath

    # Register Microsoft Dynamics NAV Apps Management Snap-in
    RegisterSnapIn -snapIn "Microsoft.Dynamics.Nav.Apps.Management" -ServiceTier $ServiceTierPath

    if ($PrintCommands) {
        # Print available commands
        Get-Command -Module Microsoft.Dynamics.Nav.Management, Microsoft.Dynamics.Nav.Apps.Management
    }
}
Set-Alias -Name Register-BcAdminToolSnapIn -Value Register-NAVAdminToolSnapIn
Export-ModuleMember -Function Register-NAVAdminToolSnapIn -Alias Register-BcAdminToolSnapIn