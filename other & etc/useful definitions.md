# Useful Definitions

**Password Hash Synchronization** - When a user changes their password in a hybrid environment, the password is not sent up to the cloud or down to the on prem environment. 
Instead, the password is hashed and when a user signs in, the hash value is checked and validated. 
It would be insecure to send a password over the internet. 
Password hashing takes care of this as well as the synchronization to the cloud and on prem.

**Passthrough Authentication** - When a user signs in through the cloud, the log in goes from the Cloud, 
over the Internet, into your organizations on prem network and servers, and verifies the login.

**Federation** - Allows multiple apps and organizations to work together to sign in. 
Authentication is done by a 3rd party organization or another company/organization

**SSO** - Using your organization login to sign in to a 3rd party application. 
Allows you to be automatically logged in to 3rd party apps because your credentials have already been setup and recognized as legit and verifiable.

**User risk** - Microsoft believes the identity (the user account) may be compromised.
It’s about the overall state of the user—not just one session.

**Sign-in risk** - Microsoft believes a specific authentication attempt is risky.
It’s about the context of that one login—IP, device, location, behavior.

**Windows Hello for Business** - Allows users to authenticate with their device without transmitting their password. Users can use biometrics like their face, fingerprint or a PIN. 
Login is password-less and uses a key not passwords.

**Entra ID Protection vs Defender for Indentity** - Entra ID protects against attacks/malicious activity against users in Entra ID
while Defender for Identity protects against on premise accounts.

**Nested Groups** - Nested groups in Microsoft technologies, such as Azure AD and Microsoft 365, allow you to add an existing group as a member of another group. This is particularly useful for managing access to shared resources and simplifying the assignment of permissions.
- Access and Permissions - Only members of the parent group have access to shared resources and applications. Therefore, careful management of group memberships is essential to maintain security and proper access control.
- Nesting Limitations
  - You cannot add groups that are synced with on-premises Active Directory to other groups.
  - Security groups cannot be added to Microsoft 365 groups and vice versa.
  - Nested groups do not gain access to shared resources and applications assigned to the parent group.

**Set-MgUserLicense** - ```Set-MgUserLicense``` cmdlet in Microsoft Graph PowerShell is used to add or remove licenses for a user, enabling or disabling their access to Microsoft cloud offerings that the organization has licenses for. 

