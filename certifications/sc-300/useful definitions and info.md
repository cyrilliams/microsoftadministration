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

Removing Liceneses: Users vs Groups

Least admin effort.

Users - Powershell is the easiest way to remove all groups using the ```ps1 Update-MGUserLicesnse ``` command. 
Since the users are not in any group and the licenses are all individual, this is the best answer.

Groups - Since the users are already in the group, you can simply remove the license from the group, removing it from the users, from Entra ID
