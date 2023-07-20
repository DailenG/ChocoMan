---
external help file: ChocoMan-help.xml
Module Name: ChocoMan
online version:
schema: 2.0.0
---

# Set-ChocoApiKey

## SYNOPSIS
Sets an api key for a particular source so it doesn't need to be specified every time.

## SYNTAX

```
Set-ChocoApiKey [-Source] <String> [-ApiKey] <String> [<CommonParameters>]
```

## DESCRIPTION
Sets an api key for a particular source so it doesn't need to be specified every time.

## EXAMPLES

### EXAMPLE 1
```
Set-ChocoApiKey -Source https://chocolatey.org -ApiKey 1234
Source             Status          ApiKey
------             ------          ------
https://google.com Updated API key *****************
```

## PARAMETERS

### -Source
The source to retrieve, save or delete the API key for

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApiKey
{{ Fill ApiKey Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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