# Exam Questions to Review

---

You have a Microsoft 365 E5 subscription that contains a Microsoft SharePoint Online site named Site1.

You need to be notified if a user downloads more than 50 files in one minute from Site1.

Which type of policy should you create in the Microsoft Defender for Cloud Apps portal?

**Activity Policy**

Activity policies allow you to enforce a wide range of automated processes using the app provider's APIs. 
These policies enable you to monitor specific activities carried out by various users, or follow unexpectedly high rates of one certain type of activity.

<img width="735" height="1345" alt="image" src="https://github.com/user-attachments/assets/9c2f8a9e-b6bf-40af-a327-06b29b54cff7" />


https://learn.microsoft.com/en-us/defender-cloud-apps/user-activity-policies#custom-alerts

---

You have an Azure Active Directory (Azure AD) tenant that uses Azure AD Identity Protection and contains the resources shown in the following table.
Question

<img width="1077" height="137" alt="image" src="https://github.com/user-attachments/assets/55be2e06-6876-44fc-903d-8ba88d68580a" />


Azure Multi-factor Authentication (MFA) is enabled for all users.

User1 triggers a medium severity alert that requires additional investigation.

You need to force User1 to reset his password the next time he signs in. The solution must minimize administrative effort.

What should you do?

**Mark User1 as compromised**

Confirm user compromised - This action is taken on a true positive. ID Protection sets the user risk to high and adds a new detection, Admin confirmed user compromised. The user is considered risky until remediation steps are taken.

https://learn.microsoft.com/en-us/entra/id-protection/howto-identity-protection-risk-feedback

---

Existing Environment. Problem Statements

When you attempt to assign the Device Administrators role to IT_Group1, the group does NOT appear in the selection list.

You need to resolve the issue of IT_Group1.

What should you do first?

**Recreate the IT_Group1 group**

Only groups that have the isAssignableToRole property set to true at creation time can be assigned a role. This property cannot be altered. Once a group is created with this property set, it can't be changed.

You can't set the property on an existing group.

So, you have to recreate it.

https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/groups-concept#how-are-role-assignable-groups-protected

---

You create a new Microsoft 365 E5 tenant.

You need to ensure that when users connect to the Microsoft 365 portal from an anonymous IP address, they are prompted to use multi-factor authentication (MFA).

What should you configure?

**Sign-in risk**

---

User1 builds an ASP.NET web app named App1.

You need to ensure that User1 can register App1. The solution must use the principle of least privilege.

Which role should you assign to User1?

**Application Developer**

Not Application Administrator or Cloud Application Administrator

The Application Developer role is an Azure AD role that allows users to register and manage applications in their own name. It also allows users to consent to permissions requested by applications they register. This role follows the principle of least privilege, as it only grants the minimum permissions needed to register and manage applications.

<img width="613" height="256" alt="image" src="https://github.com/user-attachments/assets/89f65f81-4396-467e-aadd-05720376b3e9" />


Assign the Application Developer role to grant the ability to create application registrations when the Users can register applications setting is set to No. This role also grants permission to consent on one's own behalf when the Users can consent to apps accessing company data on their behalf setting is set to No.

https://docs.microsoft.com/en-us/microsoft-365/compliance/export-view-audit-log-records?view=o365-worldwide

---

You need to ensure that users in the sg-Legal group must reauthenticate every 12 hours when they access any cloud apps managed by the tenant.

To complete this task, sign in to the appropriate admin center:

***Entra ID > Condtional Access > Polcies > New policy > Session > Sign-in frequency**

<img width="1404" height="1864" alt="image" src="https://github.com/user-attachments/assets/000a0994-f9e6-48d9-b2d1-cc5f0795ce5d" />

---

In Microsoft Entra Conditional Access, exclusions take precedence over inclusions. When evaluating a policy:

If a user is in an included group, the policy applies

But if the user is also in an excluded group, the policy does NOT apply — even if they're also included.

---

You need to ensure that User1 can create access reviews for groups, and that User2 can review the history report for all the completed access reviews. The solution must use the principle of least privilege.

Which role should you assign to each user?

<img width="767" height="438" alt="image" src="https://github.com/user-attachments/assets/2c47d416-fa17-43d3-bf38-fb7e3c0d22f5" />

**User 1: User Administrator***

**User 2: Report Reader**

Ref: https://learn.microsoft.com/en-us/azure/active-directory/roles/delegate-by-task

---

An on-premises Active Directory domain is configured to sync with the Azure AD tenant. The domain contains the servers shown in the following table.

<img width="1379" height="220" alt="image" src="https://github.com/user-attachments/assets/7474e418-5bba-4735-b922-74563d47050a" />

The domain controllers are prevented from communicating to the internet.

You implement Azure AD Password Protection on Server1 and Server2.

You deploy a new server named Server4 that runs Windows Server 2022.

You need to ensure that Azure AD Password Protection will continue to work if a single server fails.

What should you implement on Server4?

**Azure AD Password Protection proxy service**
- Proects against weak passwords on on-prem directories.
- No direct internet connection needed to the domain controller using Active Directory
- Uses same rules for blocking weak password as Entra ID



https://learn.microsoft.com/en-us/entra/identity/authentication/concept-password-ban-bad-on-premises#how-microsoft-entra-password-protection-works

---

Break Glass Account

Where should you create BreakGlass, and which role should you assign to BreakGlass? To answer, select the appropriate options in the answer area.

<img width="669" height="411" alt="image" src="https://github.com/user-attachments/assets/c2075b42-83ad-456c-a649-cb15bdc35ec6" />

**Azure AD (Entra ID) and Global Administrator**

Explanation: A break-glass account is a highly privileged account meant to be used in emergency situations where normal administration cannot be performed. As such, it should be created directly in Azure AD so it's not dependent on the on-premises AD DS domain. These accounts should be cloud-only accounts that use the *.onmicrosoft.com domain and that aren't federated or synchronized from an on-premises environment. The Global Administrator role will provide the broadest level of permissions to address potential emergency issues. Remember, such accounts should be protected with strong, complex passwords, ideally stored securely off-line, and should only be used for temporary and emergency purposes.


https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/security-emergency-access#create-emergency-access-accounts

---

You need to configure self-service password reset (SSPR) to meet the following requirements:

✑ When users reset their password, they must be prompted to respond to a mobile app notification or answer three predefined security questions.

✑ Passwords must be synced between the tenant and the domain regardless of where the password was reset.

What should you do? To answer, select the appropriate options in the answer area.

<img width="971" height="381" alt="image" src="https://github.com/user-attachments/assets/f0f77104-a460-449f-a665-72d7c93ff36e" />

Password Hash Syncronization copies passwords up. Only goes from on-prem to cloud.
Writeback sends them back down. Goes from on prem to cloud or cloud to on prem.
Passthrough Authentication doesn’t sync, just checks.

https://learn.microsoft.com/en-us/entra/identity/authentication/concept-sspr-writeback

---
our company has an Azure Active Directory (Azure AD) tenant named contoso.com. The company has a business partner named Fabrikam, Inc.

Fabrikam uses Azure AD and has two verified domain names of fabrikam.com and litwareinc.com. Both domain names are used for Fabrikam email addresses.

You plan to create an access package named package1 that will be accessible only to the users at Fabrikam.

You create a connected organization for Fabrikam.

You need to ensure that the package1 will be accessible only to users who have fabrikam.com email addresses.

What should you do? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area:

<img width="1002" height="428" alt="image" src="https://github.com/user-attachments/assets/7c23eb4a-b0e8-4abd-9456-97e1fa9d69b0" />

In the policy, you can assign an Access Package to a ‘Connected Organization’ by typing one of its domain names. However, users with any of the directory’s domains in their UPN will be able to request the package , (both Fabrikam and Litware) unless those domains are blocked by the B2B allow or deny domain list. => To block specific domains, you need to configure this in the External Collaboration settings (under ‘Deny invitations to the specified domains’)

https://docs.microsoft.com/en-us/azure/active-directory/governance/entitlement-management-access-package-request-policy 
https://docs.microsoft.com/en-us/azure/active-directory/governance/entitlement-management-access-package-create

---

You have an Azure subscription that contains the resources shown in the following table.

<img width="594" height="120" alt="image" src="https://github.com/user-attachments/assets/2535a337-dfa1-4dff-9685-c5430397d5ed" />


For which resources can you create an access review?

**All resources**

---

All users have mobile phones and Windows 10 laptops.

The users frequently work from remote locations that do not have Wi-Fi access or mobile phone connectivity. While working from the remote locations, the users connect their laptop to a wired network that has internet access.

You plan to implement multi-factor authentication (MFA).

Which MFA authentication method can the users use from the remote location?

The correct answer is:

A. A verification code from the Microsoft Authenticator app

Explanation:

The users are in remote locations with no Wi-Fi or mobile phone connectivity, but they do have internet access via a wired network.

Analysis of Each Option:

A. A verification code from the Microsoft Authenticator app (Correct)

The Authenticator app generates time-based one-time passwords (TOTP) that do not require internet or cellular connectivity.

This method works entirely offline, making it the best choice for remote locations.

B. SMS (Incorrect)

Requires mobile network connectivity, which the scenario states is not available.

C. An app password (Incorrect)

App passwords are only used for legacy authentication, which should be avoided in modern security setups.

Microsoft is deprecating app passwords as part of stronger MFA enforcement.

D. A notification through the Microsoft Authenticator app (Incorrect)

Push notifications require an internet connection, which is not available via mobile in this scenario.

---

You have an Azure Active Directory (Azure AD) tenant that contains the following objects.

✑ A device named Device1

✑ Users named User1, User2, User3, User4, and User5

Five groups named Group1, Group2, Group3, Group4, and Group5
Question

The groups are configured as shown in the following table.

<img width="585" height="134" alt="image" src="https://github.com/user-attachments/assets/1bd054a3-29fc-4b44-8763-99116cbbbda7" />

How many licenses are used if you assign the Microsoft 365 Enterprise E5 license to Group1?


2 

Nested group do not inherit licenses.

---

You have an Azure Active Directory (Azure AD) tenant named contoso.com.

You need to ensure that Azure AD External Identities pricing is based on monthly active users (MAU).

What should you configure?

**Linked Subscription**

Azure AD External Identities pricing is based on monthly active users (MAU) when your tenant is linked to a subscription. This means that you will only be charged for the number of users who actively use Azure AD External Identities in a given month.

https://docs.microsoft.com/en-us/azure/active-directory/external-identities/external-identities-pricing#what-do-i-need-to-do

---


You have an Azure Active Directory (Azure AD) tenant and an Azure web app named App1.

You need to provide guest users with self-service sign-up for App1. The solution must meet the following requirements:

✑ Guest users must be able to sign up by using a one-time password.

✑ The users must provide their first name, last name, city, and email address during the sign-up process.

What should you configure in the Azure Active Directory admin center for each requirement? To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

Hot Area:

<img width="848" height="492" alt="image" src="https://github.com/user-attachments/assets/937e4921-49e8-44dc-91a6-16c546aba8c3" />

https://docs.microsoft.com/en-us/azure/active-directory/external-identities/identity-providers https://docs.microsoft.com/en-us/azure/active-directory/external-identities/self-service-sign-up-overview

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

