Function Add-ChocoSource {
    <#
    .SYNOPSIS
        Add a new chocolatey source.
    .DESCRIPTION
        Add a new chocolatey source.
    .PARAMETER Name
        The name of the source.
    .PARAMETER Uri
        The Uri of the source.
    .PARAMETER Credential
        The credential to use to access the source.
    .EXAMPLE
        Add-ChocoSource
        Name                Uri                                                 UserName
        ----                ---                                                 --------
        chocolatey          https://community.chocolatey.org/api/v2/

    .OUTPUTS
        PSCustomObject
    #>
    [CmdletBinding()]
    [OutputType([PSCustomObject])]
    param(
        [Parameter(Mandatory = $true)]
        [String] $Name,

        [Parameter(Mandatory = $true)]
        [String] $Uri,

        [PSCredential] $Credential
    )
    begin {
        if (-Not (Test-ChocoInstalled)) {
            Write-Error "Chocolatey is not installed. Please install it first."
            return
        }

        [String[]]$Arguments = "source", "add", "-s=""$Uri""", "-n=$Name"

        if ($Credential) {
            $Arguments += "-u=$($Credential.GetNetworkCredential().UserName)"
            $Arguments += "-p=$($Credential.GetNetworkCredential().Password)"
        }
    }
    process {
        try {

            $CommandOutput = Invoke-ChocoCommand $Arguments

            if ($CommandOutput.RawOutput -like "Added*") {
                $Status = "Added"
            }
            elseif ($CommandOutput.RawOutput -like "Updated*") {
                $Status = "Updated"
            }
            elseif ($CommandOutput.RawOutput -like "Nothing to change*") {
                $Status = "Nothing to change"
            }

            Return [PSCustomObject]@{
                Name   = $Name
                Uri    = $Uri
                Status = $Status
            }

        }
        catch {
            Write-Error "Cannot add source. Error: $_"
        }

    }
    end {

    }
}
