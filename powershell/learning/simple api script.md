# Simple API Script

In this doc, I'll be going over a simple scrip to help me learn about API's and how they work.

This API call the API endpoint for randomuser.me, which returns random user data.

## Call the API

Here is the initial script:

```
$uri = "http://randomuser.me/api/"

$randomUser = Invoke-RestMethod -URI $uri -Method Get
```

Invoke-RestMethod = this is the method of calling the API. 
This method turns the data into PowerShell readable data.

-URI $uri = specifies the address of where we are getting the data from.

-Method GET = this means we want to get data. This means read only, no data manipulation.

For reference:
```
METHODS:
GET → read data (what you’re doing)
POST → send/create data
PUT/PATCH → update data
DELETE → delete data
```

## Show Results

To return the result of $randomUser, we'll add '.result'

This returns all user info from the API:

```
gender     : female
name       : @{title=Mrs; first=Maelya; last=Roux}
location   : @{street=; city=Grenoble; state=Loire; country=France; postcode=87846; coordinates=; timezone=}
email      : maelya.roux@example.com
login      : @{uuid=afa69959-d33b-4395-bfbd-990b50aa4909; username=ticklishmeercat638; password=quan; salt=onTlJwo7; md5=7b484818f92ac55b0338262590af80b3; 
             sha1=3e40ae3fd9c40956e5b0f55b58670a3b1ac3559b; sha256=1d7126c288f98ff7f31884621fd1d05478b046418c873be9c7eb4b187dc3b35c}
dob        : @{date=8/11/1946 5:57:28 AM; age=79}
registered : @{date=11/4/2016 7:17:44 AM; age=9}
phone      : 01-66-36-06-26
cell       : 06-35-56-28-26
id         : @{name=INSEE; value=2460776721179 87}
picture    : @{large=https://randomuser.me/api/portraits/women/34.jpg; medium=https://randomuser.me/api/portraits/med/women/34.jpg; 
             thumbnail=https://randomuser.me/api/portraits/thumb/women/34.jpg}
nat        : FR

```

### Filter Results

If we want to only show or call the data for one field, we can do:
```
$randomUser.results.email
```

Which returns:
```maelya.roux@example.com```

### Filter Multiple Results

What if we want to get multiple objects?

We could technically run:
```
$randomUser.results.email && $randomUser.results.cell
```
Which will return:
```
maelya.roux@example.com
06-35-56-28-26
```

But, to do this more efficently, we can run:
```
#$randomUser.results | Select-Object Email, Cell
```
Which returns:
```
email                      cell
-----                      ----
matias.jarvela@example.com 042-346-51-20
```

## Nested Objects

If you noticed, that name returns nested objects ```name       : @{title=Mrs; first=Maelya; last=Roux}```

What if I only want the user's first name?

I could run ```#$randomUser.results.name.first```, which gives us just ```Maelya```

## Nested Objects & Other Objects

If we want to include more than nested object, or include more objects with a nested object, we can run:
```
 $randomUser.results | Select-Object @{Name="FirstName"; Expression={$_.name.first}}, @{Name="LastName"; Expression={$_.name.last}}, Email, Cell
```
Which give us:
```
FirstName LastName email                    cell
--------- -------- -----                    ----
Edith     Hansen   edith.hansen@example.com 0486-858-568
```

## See Fields/Objects

Although we can technically get the results from ```$randomUser.results```, we can also see what fields are available with ```Get-Member```

```$randomUser.results | Get-Member```
Which gives us:
```
Name        MemberType   Definition
----        ----------   ----------
Equals      Method       bool Equals(System.Object obj)
GetHashCode Method       int GetHashCode()
GetType     Method       type GetType()
ToString    Method       string ToString()
cell        NoteProperty string cell=99680605
dob         NoteProperty System.Management.Automation.PSCustomObject dob=@{date=2/9/1998 2:01:14 PM; age=28}
email       NoteProperty string email=vilhelm.gussias@example.com
gender      NoteProperty string gender=male
id          NoteProperty System.Management.Automation.PSCustomObject id=@{name=FN; value=09029846178}
location    NoteProperty System.Management.Automation.PSCustomObject location=@{street=; city=Askvoll; state=Nord-Trøndelag; country=Norway; postcode=3905; coordinates=; timezone…
login       NoteProperty System.Management.Automation.PSCustomObject login=@{uuid=f4907072-ac13-4eaa-a359-ef546a4a468c; username=greenmeercat942; password=chuang; salt=NWgo5QPk; …
name        NoteProperty System.Management.Automation.PSCustomObject name=@{title=Mr; first=Vilhelm; last=Gussiås}
nat         NoteProperty string nat=NO
phone       NoteProperty string phone=56262457
picture     NoteProperty System.Management.Automation.PSCustomObject picture=@{large=https://randomuser.me/api/portraits/men/25.jpg; medium=https://randomuser.me/api/portraits/me…
registered  NoteProperty System.Management.Automation.PSCustomObject registered=@{date=9/24/2008 10:05:59 PM; age=17}
```
We can also filter just the ```NoteProperty``` type by using ```$randomUser.results | Get-Member -MemberType NoteProperty```
Which give us:
```
Name       MemberType   Definition
----       ----------   ----------
cell       NoteProperty string cell=(099) P50-0096
dob        NoteProperty System.Management.Automation.PSCustomObject dob=@{date=7/28/1995 11:24:29 AM; age=30}
email      NoteProperty string email=radilo.dublyanskiy@example.com
gender     NoteProperty string gender=male
id         NoteProperty System.Management.Automation.PSCustomObject id=@{name=; value=}
location   NoteProperty System.Management.Automation.PSCustomObject location=@{street=; city=Berezan; state=Cherkaska; country=Ukraine; postcode=67061; coordinates=; timezone=}
login      NoteProperty System.Management.Automation.PSCustomObject login=@{uuid=b4e2b0fa-5099-4753-b7e5-5ed8aa90caaa; username=tinygoose422; password=hotmail1; salt=wdJKDvnR; md…
name       NoteProperty System.Management.Automation.PSCustomObject name=@{title=Mr; first=Radilo; last=Dublyanskiy}
nat        NoteProperty string nat=UA
phone      NoteProperty string phone=(097) R50-7666
picture    NoteProperty System.Management.Automation.PSCustomObject picture=@{large=https://randomuser.me/api/portraits/men/52.jpg; medium=https://randomuser.me/api/portraits/med…
registered NoteProperty System.Management.Automation.PSCustomObject registered=@{date=12/24/2018 2:49:42 AM; age=7}
```
Or filter further by just the name of the NoteProperty with:
```
 $randomUser.results | Get-Member -MemberType NoteProperty | Select Name

Name
----
cell
dob
email
gender
id
location
login
name
nat
phone
picture
registered
```

---

## Conclusion

API's are a great way to return data from websites or services not owned or controlled by you. 
These are some simple ways to return, sort and filter data.

