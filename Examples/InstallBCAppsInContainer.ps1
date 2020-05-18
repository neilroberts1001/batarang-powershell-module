$ContainerName = 'BC-15-1'

$ServiceTierPath = "C:\ProgramData\NavContainerHelper\15.1.37881.38071-W1-Files\ServiceTier\Program Files\Microsoft Dynamics NAV\150\Service"
$FinalResult = Get-NAVAppDependencies -AppPath "C:\Temp\Appsv15" -ServiceTierPath $ServiceTierPath
$InstallApps = Get-NavContainerAppInfo -containerName $ContainerName

foreach ($AppFile in $FinalResult | Sort-Object ProcessOrder -Descending) {
    if ($InstallApps | Where-Object {$_.AppId -eq $AppFile.AppId}) {
        $CurrName = $AppFile.Name
        UnPublish-NavContainerApp -appName $CurrName -containerName $ContainerName -publisher $AppFile.Publisher -version $AppFile.Version -unInstall
    }
}

foreach ($AppFile in $FinalResult | Sort-Object ProcessOrder) {
    $CurrName = $AppFile.Name
    Publish-NavContainerApp -appFile $AppFile.Path -containerName $ContainerName -scope Global -install -skipVerification -sync -syncMode ForceSync
}