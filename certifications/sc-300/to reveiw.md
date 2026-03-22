# Concepts to Review

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





