#$creds = Get-Credential
$DC = "lwvads2.ems.inc"
$user = "cwilliams"


#Get-ADUser -Identity $user -Server $DC -Properties MemberOf | Select -ExpandProperty MemberOf | Select-Object

Get-ADUser -Identity $user -Server $DC -Properties MemberOf |
Select -ExpandProperty MemberOf |
ForEach-Object {
    Get-ADGroup $_ -Server $DC | Select Name
}
