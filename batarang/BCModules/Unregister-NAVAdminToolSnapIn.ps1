<# 
 .Synopsis
  Un-Register NAVAdminTool commands that are used for Business Central.
 .Description
  Use the current PowerShell prompt to un-register NAVAdminTool commands that are used for Business Central.
 .Example
  UnRegister-NAVAdminToolSnapIn
#>
function Unregister-NAVAdminToolSnapIn {
    function UnregisterSnapIn {
        [CmdletBinding()]
        param(
            [string] $snapIn
        )

        if (Get-Module $snapIn) {
            Remove-Module $snapIn
            Write-Output -fore Yellow "$snapIn has been removed"
        }
    }

    # Register Microsoft Dynamics NAV Management Snap-in
    UnregisterSnapIn -snapIn "Microsoft.Dynamics.Nav.Management"

    # Register Microsoft Dynamics NAV Apps Management Snap-in
    UnregisterSnapIn -snapIn "Microsoft.Dynamics.Nav.Apps.Management"
}