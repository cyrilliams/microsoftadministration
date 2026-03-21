<img width="200" height="200" alt="image" src="https://github.com/user-attachments/assets/5f092f82-d829-42db-9943-8f57c89dd168" />


# Study Plan for the SC-300 Exam

Key Areas to Know for the SC-300

## 1. Microsoft Entra ID Architecture & Identity Types

You should clearly understand the identity models.

Identity types

Users

Groups

Service principals

Managed identities

External identities (B2B/B2C)

Know the differences between:

Identity	Used For
User accounts	Human sign-ins
Service principals	App authentication
Managed identities	Azure resources authenticating to Azure services

Important concept:

Enterprise Application vs App Registration

App Registration	Enterprise App
App definition	Service principal instance
Created by developers	Created when app is used in tenant

You should know how authentication works between these.

## 2. Authentication Methods (Very Important)

Microsoft heavily tests authentication configuration.

You should understand:

Authentication Methods

Password

Microsoft Authenticator

FIDO2 security keys

Certificate-based auth

Temporary Access Pass

SMS / voice

Know where they are configured:

Entra ID → Protection → Authentication Methods

Understand:

enabling/disabling methods

targeting groups

## 3. Conditional Access (Very High Yield)

This is one of the most tested areas.

You must understand policy structure:

A Conditional Access policy consists of:

Assignments

Users / groups

Cloud apps

Conditions

Access Controls

Grant

Session

Example conditions:

User risk

Sign-in risk

Device platform

Location

Client apps

Typical policies:

Policy	Purpose
Require MFA for admins	Protect privileged roles
Block legacy authentication	Security baseline
Require compliant device	Endpoint protection
Location-based restrictions	Geo access

Know the difference between:

Report-only mode

Enabled policy

## 4. Privileged Identity Management (PIM)

This is critical for the exam.

Know how to configure:

PIM features

Eligible roles

Just-in-time access

Approval workflow

Activation duration

Access reviews

Example scenario question:

A user should only have Global Administrator temporarily.

Answer:
Use PIM eligible role assignment.

Understand:

Role State	Meaning
Eligible	Can activate
Active	Currently assigned

## 5. Identity Governance

Important governance tools:

Access Reviews

Used to periodically review:

group membership

role assignments

application access

Entitlement Management

Used for:

access packages

self-service access

external users

Components:

Component	Function
Access package	Bundle of access
Catalog	Container
Policy	Who can request

## 6. External Identities (B2B)

Understand how guest users work.

Key topics:

B2B collaboration

Invitation redemption

Cross-tenant access

External collaboration settings

Know where to configure:

Entra → External Identities

## 7. Application Access & SSO

Know the basics of application integration.

Important protocols:

SAML 2.0

OAuth 2.0

OpenID Connect

Understand:

Concept	Purpose
SSO	Single authentication
App roles	Authorization
API permissions	Access scope
Consent	User/admin approval
8. Hybrid Identity

Some questions involve on-prem AD.

Know the basics of:

Microsoft Entra Connect

Key features:

Feature	Purpose
Password Hash Sync	Sync hashes to cloud
Pass-through Authentication	Validate on-prem
Federation	External IdP
9. Monitoring & Logs

Know where to investigate identity issues.

Important logs:

Log	Use
Sign-in logs	Authentication events
Audit logs	Configuration changes
Provisioning logs	Identity provisioning

You should know how to detect:

risky users

risky sign-ins

conditional access failures

---

What the Exam Questions Are Like

Expect scenario questions like:

A company wants administrators to activate roles only when needed.

Answer:
Privileged Identity Management

Users must use MFA when accessing apps from outside the corporate network.

Answer:
Conditional Access policy with location condition

A partner company needs access to a SharePoint site.

Answer:
B2B guest invitation

If You Have 1–2 Weeks, Focus On This

Priority order

Conditional Access

Authentication methods

PIM

External identities

Enterprise applications / SSO

Access reviews / entitlement management

Entra Connect basics

Those areas cover ~70–80% of exam scenarios.

---

Fast Study Resources

Best material:

Microsoft Learn SC-300 learning path

John Savill SC-300 cram video

Practice tests from MeasureUp

One Study Tip (Based on Your Experience)

Since you've already:

passed Security+

worked in Entra

studied Azure

You should practice configuring things, not just reading.

Examples:

create Conditional Access policies

configure PIM

add external users

integrate an enterprise app

The exam is very configuration-scenario heavy.
