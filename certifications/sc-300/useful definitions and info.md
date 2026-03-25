# Useful Definitions

**Password Hash Synchronization** - When a user changes their password in a hybrid environment, the password is not sent up to the cloud or down to the on prem environment. 
Instead, the password is hashed and when a user signs in, the hash value is checked and validated. 
It would be insecure to send a password over the internet. 
Password hashing takes care of this as well as the synchronization to the cloud and on prem.

**Passthrough Authentication** - When a user signs in through the cloud, the log in goes from the Cloud, 
over the Internet, into your organizations on prem network and servers, and verifies the login.

**Federation** - Allows multiple apps and organizations to work together to sign in. 
Authentication is done by a 3rd party organization or another company/organization

---


**SSO** - Using your organization login to sign in to a 3rd party application. 
Allows you to be automatically logged in to 3rd party apps because your credentials have already been setup and recognized as legit and verifiable.

---

**User risk** - Microsoft believes the identity (the user account) may be compromised.
It’s about the overall state of the user—not just one session.
- User is/could be compromised
- password is leaked/data breach

**Sign-in risk** - Microsoft believes a specific authentication attempt is risky.
It’s about the context of that one login—IP, device, location, behavior.
- The login looks weird
- Weird location, devices or IP addresses

Sign-in Risk → “This login is suspicious”
User Risk → “This user is compromised”

---

**Windows Hello for Business** - Allows users to authenticate with their device without transmitting their password. Users can use biometrics like their face, fingerprint or a PIN. 
Login is password-less and uses a key not passwords.

---

**Entra ID Protection vs Defender for Indentity** - Entra ID protects against attacks/malicious activity against users in Entra ID
while Defender for Identity protects against on premise accounts.

---

**Nested Groups** - Nested groups in Microsoft technologies, such as Azure AD and Microsoft 365, allow you to add an existing group as a member of another group. This is particularly useful for managing access to shared resources and simplifying the assignment of permissions.
- Access and Permissions - Only members of the parent group have access to shared resources and applications. Therefore, careful management of group memberships is essential to maintain security and proper access control.
- Nesting Limitations
  - You cannot add groups that are synced with on-premises Active Directory to other groups.
  - Security groups cannot be added to Microsoft 365 groups and vice versa.
  - Nested groups do not gain access to shared resources and applications assigned to the parent group.

---

**Set-MgUserLicense** - ```Set-MgUserLicense``` cmdlet in Microsoft Graph PowerShell is used to add or remove licenses for a user, enabling or disabling their access to Microsoft cloud offerings that the organization has licenses for. 

---

**Risk Detection**
- User risk represents the probability an identity is compromised.
- Sign-in risk represents the probability a sign-in is compromised (for example, the identity owner didn't authorize the sign-in).


---

**Important Entra Roles To Know**

**Global & Priviledged**
- Global Administrator - full control over tenant
- Priviledged Role Administrator - manages roles and PIM, cannot manage users, manages access reviews for roles, manage admin units, create role-assignable groups,
- Security Administrator - manages security related functinos (Conditional Access, Identity Protection, Defender, Intune, Defender for Cloud apps, password protection, smart lockout)
- Security Operator - can manage alers and get read access to all security related features, has all Security Reader features
- Security Reader - can only read security realted things, not manage
  
**User & Identity**
- User Administrator - creates and manages users and groups but cannot manage admins, can manage properties for users and groups, disable & delete users, assign licences for users, reset passwords
- Helpdesk Administrator - can reset passwords and manage service health and  service health, force sign out, manage support tickets,
- Password Administrator - can reset passwords but cannot manage service requests or monitor service health
- Authentication Administrator - manages MFA methods, can reset and revoke MFA and passwords for non-admins,

**Application & Enterprise App**
- Application Administrator - manages app and enterprise registration but cannot grant tenant wide consnet
- Cloud App Administrator - manages cloud apps, cannot grant consent

**Governance & Access**
- Identity Governancfe Administrator - access review, entitlement management
- Priveledged Authtentication Administrator - manages sensitive authentication changes like authentication for admins

**Conditional Access**
- Conditional Access Administrator - manages conditional access policies

---


Named Locations → Modern + flexible (used in Conditional Access policies)
- Can include an IP range or location (country/region)
- used in conditional access policies
- you can marked the Named Location as Trusted

Trusted IPs → Legacy + very specific use (MFA bypass / Identity Protection)
- List of IP's (not ranges)
- Legacy and only used for specific scenarios
- Used for MFA bypass

---

Conditional Access policies cannot apply to devices that are not Entra joined/registered.

---

**App Connectors in Defender for Cloud Apps** - App connectors are integrations that connect Microsoft Defender for Cloud Apps to third‑party or Microsoft SaaS applications using the apps’ official APIs to provide deep visibility, monitoring, and governance capabilities.

They allow Defender for Cloud Apps to pull data directly from the cloud service, including:
-Users and groups
-Files
-Activities / audit logs
-App configurations


---

You have an Azure Active Directory Premium P2 tenant.

You create a Log Analytics workspace.

You need to ensure that you can view Azure Active Directory (Azure AD) audit log information by using Azure Monitor.

What should you do first?

Answer:

To view Azure AD audit log information in Azure Monitor (via a Log Analytics workspace), you must first enable diagnostic settings in Azure AD to send audit logs to that workspace.

Steps:

Go to Azure Active Directory > Diagnostic settings.

Create a new diagnostic setting.

Select AuditLogs (and optionally SignInLogs, RiskyUsers, etc.).

Choose the Log Analytics workspace you created.

Save the configuration.

---



<img width="735" height="524" alt="image" src="https://github.com/user-attachments/assets/e084c490-770e-401f-ad55-337c17bd6790" />

You are evaluating the following passwords:

✑ Pr0jectlitw@re

✑ T@ilw1nd

✑ C0nt0s0

Which passwords will be blocked?


**All**

---

You have a Microsoft 365 E5 subscription that contains a Microsoft SharePoint Online site named Site1.

You need to enable Microsoft Defender for Cloud Apps session control for Site1.

Which type of policy should you create first?

**Conditional Access**

Explanation:

To enable Microsoft Defender for Cloud Apps session control for Site1 (SharePoint Online), you need to first configure a Conditional Access policy in Microsoft Entra ID (formerly Azure AD).

Step 1: Create a Conditional Access Policy

In Microsoft Entra ID, create a Conditional Access policy targeting SharePoint Online.

In the Session controls section, select Use Conditional Access App Control and set it to Monitor or Block downloads.

Step 2: Configure a Session Policy in Defender for Cloud Apps

After enabling session control via Conditional Access, go to Microsoft Defender for Cloud Apps and create a session policy to enforce rules such as blocking downloads, monitoring activities, or restricting access.


---

You have an Azure subscription that contains an Azure Automation account named Automation1 and an Azure key vault named Vault1. Vault1 contains a secret named Secret1.

You enable a system-assigned managed identity for Automation1.

You need to ensure that Automation1 can read the contents of Secret1. The solution must meet the following requirements:

• Prevent Automation1 from accessing other secrets stored in Vault1.

• Follow the principle of least privilege.

What should you do?

**Configure the Access control (IAM) in Vault1**

- *Orginally I thought this was to create the service account. This questions is asking where to give permissions to the already created service account*

---

You have a Microsoft 365 subscription that contains the users shown in the following table.

<img width="262" height="120" alt="image" src="https://github.com/user-attachments/assets/fbba182b-46f0-4d47-9199-1878ed117155" />

From the tenant, you configure a naming policy for groups.

Which users are affected by the naming policy?

**User3 and User4 only**

Admin override

```
Some administrators are exempted from these policies, across all group workloads and endpoints, so that they can create groups with these blocked words and with their desired naming conventions. The following are the list of administrator roles exempted from the group naming policy.

    Global admin

    Partner Tier 1 Support

    Partner Tier 2 Support

    User account admin
```

https://learn.microsoft.com/en-us/previous-versions/microsoft-365/solutions/groups-naming-policy?view=o365-worldwide#admin-override

---


