<# 
 .Synopsis
  Get Business Central app depency tree from select a app folder.
 .Description
  Use the current PowerShell prompt to get the Business Central app depency tree from select a app folder.
 .Parameter AppPath
  Path to where you have stored all of the Business Central App files.
 .Parameter ServiceTierPath
  Path to the service tier folder for the version of Business Central to import NAVAdminTools
 .Parameter Descending
  Get Business Central app dependcy in descending order.
 .Example
  Get-AppDependencies -Path "C:\Temp\Appsv15" -ServiceTierPath "C:\ProgramData\NavContainerHelper\15.0.36560.36626-w1-Files\ServiceTier\Program Files\Microsoft Dynamics NAV\150\Service"
#>
function Get-NAVAppDependencies {
    [CmdletBinding()]
    param(    
        [Parameter(Mandatory = $true)]        
        [string] $AppPath,
        [Parameter(Mandatory = $true)]  
        [string] $ServiceTierPath,
        [switch] $Descending
    )

    
    # Register Microsoft Dynamics NAV Snap-in
    Register-NAVAdminToolSnapIn -ServiceTierPath $ServiceTierPath

    function AddToDependencyTree() {
        param(
            [PSObject] $App,
            [PSObject[]] $DependencyArray,
            [PSObject[]] $AppCollection,
            [Int] $Order = 1
        )   

        foreach ($Dependency in $App.Dependencies) {
            $DependencyArray = AddToDependencyTree `
                -App ($AppCollection | Where-Object AppId -eq $Dependency.AppId) `
                -DependencyArray $DependencyArray `
                -AppCollection $AppCollection `
                -Order ($Order - 1)
        }

        if (-not($DependencyArray | Where-Object AppId -eq $App.AppId)) {
            $DependencyArray += $App
            try {
                ($DependencyArray | Where-Object AppId -eq $App.AppId).ProcessOrder = $Order
            }
            catch { }
        }
        else {
            if (($DependencyArray | Where-Object AppId -eq $App.AppId).ProcessOrder -gt $Order) {
                ($DependencyArray | Where-Object AppId -eq $App.AppId).ProcessOrder = $Order
            } 
        }

        $DependencyArray
    }

    $AllAppFiles = Get-ChildItem -Path $AppPath -Filter "*.app"

    $AllApps = @()
    foreach ($AppFile in $AllAppFiles) {
        $App = Get-NAVAppInfo -Path $AppFile.FullName
        $AllApps += [PSCustomObject]@{
            AppId        = $App.AppId
            Version      = $App.Version
            Name         = $App.Name
            Publisher    = $App.Publisher
            ProcessOrder = 0                            
            Dependencies = $App.Dependencies
            Path         = $AppFile.FullName
        }
    }
    
    $FinalResult = @()

    $AllApps | ForEach-Object {    
        $FinalResult = AddToDependencyTree -App $_ -DependencyArray $FinalResult -AppCollection $AllApps -Order $AllApps.Count
    }

    # Unregister Microsoft Dynamics NAV Snap-in
    Unregister-NAVAdminToolSnapIn

    if ($Descending) {
        $ProcessedResults = $FinalResult | Sort-Object ProcessOrder -Descending
    }
    else {
        $ProcessedResults = $FinalResult | Sort-Object ProcessOrder
    }

    return $ProcessedResults
}
Set-Alias -Name Get-BcAppDependencies -Value Get-NAVAppDependencies
Export-ModuleMember -Function Get-NAVAppDependencies -Alias Get-BcAppDependencies