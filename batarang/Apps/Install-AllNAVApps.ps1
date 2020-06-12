<# 
 .Synopsis
  Get Business Central app depency tree from select a app folder.
 .Description
  Use the current PowerShell prompt to get the Business Central app depency tree from select a app folder.
 .Parameter AppPath
  Path to where you have stored all of the Business Central App files.
 .Parameter ServiceTierPath
  Path to the service tier folder for the version of Business Central to import NAVAdminTools
 .Example
  Install-AllNAVApps -Path "C:\Temp\Appsv15" -ServiceTierPath "C:\ProgramData\NavContainerHelper\15.0.36560.36626-w1-Files\ServiceTier\Program Files\Microsoft Dynamics NAV\150\Service"
#>
function Install-AllNAVApps {
    [CmdletBinding()]
    param(    
        [Parameter(Mandatory = $true)]        
        [string] $AppPath,
        [Parameter(Mandatory = $true)]  
        [string] $ServiceTierPath,
        [Parameter(Mandatory = $true)]
        [string] $ServerInstance,
        [switch] $SkipVerification,
        [Parameter(Mandatory=$false)]
        [ValidateSet('Add','Clean','Development','ForceSync')]
        [string] $syncMode
    )

    # Register Microsoft Dynamics NAV Snap-in
    Register-NAVAdminToolSnapIn -ServiceTierPath $ServiceTierPath

    $FinalResult = Get-NAVAppDependencies -AppPath $AppPath -ServiceTierPath $ServiceTierPath

    foreach ($AppFile in $FinalResult | Sort-Object ProcessOrder -Descending) {
        if (Get-NAVAppInfo -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version) {
            $CurrName = $AppFile.Name
            Write-Host "Uninstalling app : $CurrName" -ForegroundColor Yellow
            Uninstall-NAVApp -Serverinstance $ServerInstance -Name $AppFile.Name -Publisher $AppFile.Publisher
            Write-Host "Uninstalled app : $CurrName" -ForegroundColor Yellow
    
            Write-Host "Unpublishing app : $CurrName" -ForegroundColor Yellow
            Unpublish-NAVApp -Serverinstance $ServerInstance -Name $AppFile.Name
            Write-Host "Unpublished app : $CurrName" -ForegroundColor Yellow
        }
    }
    
    foreach ($AppFile in $FinalResult | Sort-Object ProcessOrder) {
        $CurrName = $AppFile.Name
        Write-Host "Publishing app : $CurrName" -ForegroundColor Green
        if ($SkipVerification) {
            Publish-NAVApp -Serverinstance $ServerInstance -Path $AppFile.Path -SkipVerification
        }
        else {
            Publish-NAVApp -Serverinstance $ServerInstance -Path $AppFile.Path
        }
        Write-Host "Published app : $CurrName" -ForegroundColor Green
    
        Write-Host "Syncing app : $CurrName : with force" -ForegroundColor Green
        Sync-NAVApp -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version -Mode $syncMode -Force
        Write-Host "Synced app : $CurrName : with force" -ForegroundColor Green
    
        Write-Host "Installing App : $CurrName" -ForegroundColor Green
        Install-NavApp -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version
        Write-Host "Installed App : $CurrName" -ForegroundColor Green
    }
}