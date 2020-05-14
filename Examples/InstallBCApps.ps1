Import-Module .\Batarang.psm1

$ServiceTierPath = "C:\ProgramData\NavContainerHelper\15.0.36560.36626-w1-Files\ServiceTier\Program Files\Microsoft Dynamics NAV\150\Service"

$FinalResult = Get-BCAppDependencies -Path "C:\Users\neilr\Desktop\VKB Apps\Appsv15" -ServiceTierPath $ServiceTierPath

foreach ($AppFile in $FinalResult | Sort-Object ProcessOrder -Descending) {
    if (Get-NAVAppInfo -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version) {
        $CurrName = $AppFile.Name
        Write-Host "Uninstalling app : $CurrName" -ForegroundColor Yellow
        Uninstall-NAVApp -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version -Publisher $AppFile.Publisher
        Write-Host "Uninstalled app : $CurrName" -ForegroundColor Yellow

        Write-Host "Unpublishing app : $CurrName" -ForegroundColor Yellow
        Unpublish-NAVApp -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version
        Write-Host "Unpublished app : $CurrName" -ForegroundColor Yellow
    }
}

foreach ($AppFile in $FinalResult | Sort-Object ProcessOrder) {
    $CurrName = $AppFile.Name
    Write-Host "Publishing app : $CurrName" -ForegroundColor Green
    Publish-NAVApp -Serverinstance $ServerInstance -Path $AppFile.Path -SkipVerification
    Write-Host "Published app : $CurrName" -ForegroundColor Green

    Write-Host "Syncing app : $CurrName : with force" -ForegroundColor Green
    Sync-NAVApp -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version -Mode ForceSync -Force
    Write-Host "Synced app : $CurrName : with force" -ForegroundColor Green

    Write-Host "Installing App : $CurrName" -ForegroundColor Green
    Install-NavApp -Serverinstance $ServerInstance -Name $AppFile.Name -Version $AppFile.Version
    Write-Host "Installed App : $CurrName" -ForegroundColor Green
}