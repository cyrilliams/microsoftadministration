# Setting Up User's in Entra ID

In this doc, we'll be setting up users.

## Users

There are a couple ways to create a user. 

Let's create a single user via the Entra ID portal:

### Entra ID Portal

We'll go to **Entra ID > Users > New user > Create new user**

<img width="574" height="284" alt="image" src="https://github.com/user-attachments/assets/eec5bb25-6902-4077-9b11-68937942553a" />

Here, we'll give it a name, user principal name (or email), nickname, display name, and a password:

<img width="733" height="575" alt="image" src="https://github.com/user-attachments/assets/85287ffa-a763-4961-8725-e9240e4eda04" />

In the 'Properties' tab, well give the user an Identity as well as choose if the user is a member of our organization or a guest. Then we'll set other company info here as well:

<img width="914" height="687" alt="image" src="https://github.com/user-attachments/assets/0f7b38df-e0b9-4e6e-ba3b-11d8f0d0ef2c" />

We can also assign roles and groups here if we wanted:

<img width="648" height="203" alt="image" src="https://github.com/user-attachments/assets/76aca57d-1a7c-45b6-8af5-8abfe67adff8" />

We'll review and create, then check for our newly created user in the User portal:

*You may have to refresh the page a couple times for the new user to show*

<img width="1230" height="179" alt="image" src="https://github.com/user-attachments/assets/99336d12-cfa3-486c-be7f-35f48e8e799d" />

### Powershell

We can also create a user via Powershell for a CLI based method.

We'll load up Powershell and enter the following command:

```ps1
Connect-MgGraph -Scopes User.Read.All,User.ReadWrite.All
```

This command allows us to connect to our Entra ID and gives us the following Scopes to access/have Read/Write permissions for Users:

We can see our the log in page will appear:

<img width="1100" height="622" alt="image" src="https://github.com/user-attachments/assets/679b55cf-d87e-444d-927a-1a450229bff4" />

We know we're connected when we see this:

<img width="1110" height="246" alt="image" src="https://github.com/user-attachments/assets/8c8ee188-7711-4847-bacc-a94c9f5686fe" />

```ps1
Welcome to Microsoft Graph!

Connected via delegated access using 14d82eec-204b-4c2f-b7e8-296a70dab67e
Readme: https://aka.ms/graph/sdk/powershell
SDK Docs: https://aka.ms/graph/sdk/powershell/docs
API Docs: https://aka.ms/graph/docs

NOTE: You can use the -NoWelcome parameter to suppress this message.
NOTE: Sign in by Web Account Manager (WAM) is enabled by default on Windows systems and cannot be disabled when using the default ClientId.
To disable WAM run Set-MgGraphOption -DisableLoginByWAM $true and then use a custom ClientId.

PS C:\WINDOWS\system32>
```
Then we'll we're run this command to create the user:

```ps1
New-MgUser `
  -DisplayName "Powershell User" `
  -UserPrincipalName "powerhshell@cyriltest.site" `
  -MailNickname "powershelluser" `
  -AccountEnabled:$true `
  -PasswordProfile @{
    Password = "*******"
    ForceChangePasswordNextSignIn = $true
  }
```

Now we can see that our user has been created in Powershell:

<img width="879" height="342" alt="image" src="https://github.com/user-attachments/assets/a1b49327-40c7-4405-abf3-81fa8d548e6e" />

Let's check Entra portal:

<img width="1252" height="124" alt="image" src="https://github.com/user-attachments/assets/61f36e75-8198-485d-8f34-3618754d9196" />

## Bulk Create

Let's say we want to create multiple users at the same time, we can do that using Bulk create

In Entra ID portal, we'll go to **Users > Bulk operations > Bulk create**

<img width="1632" height="242" alt="image" src="https://github.com/user-attachments/assets/b248efd2-65df-47df-bd7e-2ba466394a23" />

It'll open up this Bulk create users windows:

<img width="314" height="437" alt="image" src="https://github.com/user-attachments/assets/95fb1233-3505-4f44-a955-233773bd6b19" />

It'll have us a download a csv template to put in our inputs for the users:

<img width="314" height="437" alt="image" src="https://github.com/user-attachments/assets/2962b2f2-3f60-4c31-ad1a-f38f002d7655" />

We'll open up the csv and add our users:

<img width="1349" height="221" alt="image" src="https://github.com/user-attachments/assets/09daacb4-e48e-4c7f-a671-7b958ff93ff8" />

Now we can upload that csv and click create:

After a couple minutes, our Users have populated:

<img width="1628" height="577" alt="image" src="https://github.com/user-attachments/assets/474e3426-9149-4680-9b56-1bc185de797c" />






