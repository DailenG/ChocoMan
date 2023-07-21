---
external help file: ChocoMan-help.xml
Module Name: ChocoMan
online version:
schema: 2.0.0
---

# Get-ChocoSource

## SYNOPSIS
Get the list of chocolatey sources.

## SYNTAX

```
Get-ChocoSource [[-Name] <String>] [<CommonParameters>]
```

## DESCRIPTION
Get the list of chocolatey sources.

## EXAMPLES

### EXAMPLE 1
```
Get-ChocoSources
Name                Uri                                                 UserName     BypassProxy SelfService AdminOnly
----                ---                                                 --------     ----------- ----------- ---------        
chocolatey          https://community.chocolatey.org/api/v2/                         0           False       False
```

## PARAMETERS

### -Name
The name of the source to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### PSCustomObject
## NOTES

## RELATED LINKS