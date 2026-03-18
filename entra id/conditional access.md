# Setup Conditional Access Policies

In this doc, we'll set up Conditional Access Policies to further secure our organization's security posture.

## Security Defaults

One set of Security features that I believe has to get enabled or should at least be enabled is **Security Defaults**

You can get to it from **Entra ID > Overview > Properties > Security defaults**

<img width="1628" height="878" alt="image" src="https://github.com/user-attachments/assets/754bbcdf-25a1-4fa8-bc70-703cc66c2f41" />

*(Taken from Microsoft Learn)*

Security Defaults controls include the following:
```
Requiring all users to register for multifactor authentication
Requiring administrators to do multifactor authentication
Requiring users to do multifactor authentication when necessary
Blocking legacy authentication protocols
Protecting privileged activities like access to the Azure portal
```
The following Admin roles will also be required to authenticate every time they sign in:

```
    Global Administrator
    Application Administrator
    Authentication Administrator
    Billing Administrator
    Cloud Application Administrator
    Conditional Access Administrator
    Exchange Administrator
    Helpdesk Administrator
    Password Administrator
    Privileged Authentication Administrator
    Privileged Role Administrator
    Security Administrator
    SharePoint Administrator
    User Administrator

    Authentication Policy Administrator
    Identity Governance Administrator
```

To enable our own Conditional Access policies, we must actually disable Security Defaults:

<img width="431" height="876" alt="image" src="https://github.com/user-attachments/assets/c34e63bb-90bf-44ab-ad3f-846196dc1efe" />

Microsoft will want to make sure you confirm your choice and provide feed back,
as disabling without re-configuring will typically lead to a less secure organization.

<img width="421" height="130" alt="image" src="https://github.com/user-attachments/assets/b552616e-9a9d-4ad9-a660-9bdee46ff69d" />

---

## Conditional Access Policies

*You will need an Entra P1/P2 license*

We can see the default policies here:

<img width="1347" height="299" alt="image" src="https://github.com/user-attachments/assets/8fc5a6b5-cfb3-4e44-a944-f8420a0f9d13" />

### Set Up a Policy:

Let's set up a Risky Account Conditional Access Policy. 

Click 'New policy':

<img width="101" height="30" alt="image" src="https://github.com/user-attachments/assets/e2fb716d-e950-42e9-9621-f4a44582a031" />

We have all of our options and controls here:

<img width="659" height="868" alt="image" src="https://github.com/user-attachments/assets/e8282a42-1542-4e99-991c-0c8786cd9f5a" />

We can set who the Policy applies to:

<img width="324" height="272" alt="image" src="https://github.com/user-attachments/assets/da46ad1b-8d83-47a6-a919-3221ddd4a87d" />

We can set the Target Resource:

<img width="307" height="643" alt="image" src="https://github.com/user-attachments/assets/de283866-d0af-48d1-8474-c9b3eba615d4" />

We can now even set specific networks:

<img width="315" height="271" alt="image" src="https://github.com/user-attachments/assets/be38ec1e-ed98-464a-9273-a12b722c0276" />

### Conditions

Under 'Conditions', 
we can set more refined requirements for this policy including:
```
User Risk
Sign in Risk
Insider Risk
Device Platforms
Locations
Client Apps
Device Filtering
Authentication Flows
```
<img width="294" height="680" alt="image" src="https://github.com/user-attachments/assets/e16656a6-d384-4218-ba75-a0dc1f5cae85" />

User Risk - we can set the risk level

<img width="277" height="276" alt="image" src="https://github.com/user-attachments/assets/2460e876-30b6-4064-8e98-c5e8c179d88b" />

Sign in risk - we can set the sign in risk level

<img width="263" height="580" alt="image" src="https://github.com/user-attachments/assets/f0fd2552-d128-4609-8ad9-3898c3a2f9e9" />

Device platform - we can even filter by device platform

<img width="297" height="531" alt="image" src="https://github.com/user-attachments/assets/f8495851-fb42-4572-bb05-a18add9bbcaf" />

Locations - we can set IP ranges or locations

<img width="315" height="274" alt="image" src="https://github.com/user-attachments/assets/2c4c439f-196c-4fd3-a6fd-3eda0c292bd1" />

Client Apps - we can set and filter by modern and legacy authentication clients

<img width="292" height="464" alt="image" src="https://github.com/user-attachments/assets/8cf07b61-57d8-4bfc-8382-9520860d9b00" />

Filter for devices - filter by matching rules for devices

<img width="848" height="545" alt="image" src="https://github.com/user-attachments/assets/a5727a78-c344-45fb-ac35-3edb97e1a85b" />

### Access Controls

This part goes over what we want to happen when those Conditions are met:

We can Block or Grant access with the following parameters:

<img width="306" height="707" alt="image" src="https://github.com/user-attachments/assets/47dc9155-19c6-49ac-bfab-02eda168de77" />

*As a test, I'll set the device to be marked compliant and require the device to be Entra joined*

We can also set this Policy to report only as well:

<img width="267" height="96" alt="image" src="https://github.com/user-attachments/assets/0c2a9f4e-3026-494e-bd37-21924b0e5485" />

I'll enable it. Now we can see it in our Policy tab:

<img width="1362" height="436" alt="image" src="https://github.com/user-attachments/assets/a433896e-ca68-4ca8-84a8-3a87e38c1512" />

---

## Test The Policy

*For this test, I've set the User risk, sign in risk, device platform and set to all resources*

Let's test the Policy using the **What If** function in the Policies tab:

Here we can set the user:

<img width="717" height="358" alt="image" src="https://github.com/user-attachments/assets/25b89b10-a989-418d-9709-c64392ff2444" />

And set the target resources and conditions:

<img width="615" height="740" alt="image" src="https://github.com/user-attachments/assets/e75214c8-affa-4ef9-8f5f-4ecdc9b9b94d" />

Let's hit the **What If** button and test:

<img width="1624" height="373" alt="image" src="https://github.com/user-attachments/assets/da458264-aa9c-4274-8f40-7cc027132e1e" />

We can see that Policy that will apply will be our Policy that we set due to the requirements of the policy being met.

## Templates

We can also set the following Policy templates as well:

<img width="1665" height="666" alt="image" src="https://github.com/user-attachments/assets/1ebdda1f-b0da-456e-bb13-19f2e83fc207" />

We'll review and then create:

<img width="652" height="335" alt="image" src="https://github.com/user-attachments/assets/d57da190-d7f1-4bee-9817-fe7e74fb1938" />
