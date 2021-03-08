function Get-NAVServicePath()
{
    [CmdletBinding()]
    param(
        [Parameter()]
        [string] $ServerInstance
    )

    $TargetService = Get-WmiObject win32_service | where-object { $_.Name -ilike "*`$$($ServerInstance)"}
    if ($null -eq $TargetService){
        Write-Error -Message "ServiceTier [$($ServerInstance)] not found."
    }

    $Path = $TargetService.PathName.ToLower()
    $Path = $Path.Replace("'", "")
    $Path = $Path.Replace('"', "")
    $Path = $Path.Substring(0, $Path.IndexOf('.exe') + 4)

    $ServiceExecutable = Get-Item -Path $Path -ErrorAction SilentlyContinue
    if ($null -eq $ServiceExecutable){
        Write-Error -Message "ServiceTier Executable [$($Path)] not found."
    }

    return $ServiceExecutable.Directory.FullName
}
Set-Alias -Name Get-BcServicePath -Value Get-NAVServicePath