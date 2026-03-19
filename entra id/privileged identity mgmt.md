# Privileged Identity Management

In this doc, we'll set up Privileged Identity Management (PIM)

*Must have a Entra P2 license*

This is a form of Just-In-Time access, which gives users permissions only when they need it, 
and not forever.

This is great to reduce access that may not be needed at all time.

---

**Active vs Eligible Roles**

There will be two types of roles in Entra:

Active - permanently on until role is removed

Eligible - user is able to request the role for a limited time

---

## Add an Eligible Role (PIM)

Let's add an Eligible role to a user.

We'll go to **Entra ID > ID Governance > Privileged Identity Management > Assignments > Add Assignment**


<img width="185" height="45" alt="image" src="https://github.com/user-attachments/assets/3b9bb9a9-c68e-4871-a32d-8762c1be9482" />


In this scenario,

I want the Write account to be able to help out with Help Desk tickets if needed.
The write account can request the Helpdesk Admin role after we create the Eligible role.

<img width="700" height="838" alt="image" src="https://github.com/user-attachments/assets/65605c90-7c3b-4d71-a696-602bcd627a4a" />

In 'Setting', we can assign the type of role (Active vs Eligible) and the length of time:

<img width="737" height="520" alt="image" src="https://github.com/user-attachments/assets/4c8d26d3-198b-4352-9f2e-37a3bf8c420e" />

We'll click 'Assign' and see that it's populated:

<img width="1845" height="328" alt="image" src="https://github.com/user-attachments/assets/ddc8682b-2c74-42be-881b-1c595c5e110e" />

## Activate Eligible Role

*With the Helpdesk Admin role, we should be able to reset user's passwords*

If we go to my Write account and try to reset a user's password, 
we can see we are not allowed:

<img width="379" height="257" alt="image" src="https://github.com/user-attachments/assets/91954a98-3673-4bc4-adbe-0989df124cbc" />


If we go back into the **Privileged Identity Management** portal, we can see the option to Activate the role:

<img width="2183" height="440" alt="image" src="https://github.com/user-attachments/assets/c23729f2-0b2d-475e-90a0-5bae2dc0993b" />

We'll provide a length and a reason:

<img width="717" height="491" alt="image" src="https://github.com/user-attachments/assets/a3cb5491-70e9-456c-9c2a-3d666b562b1f" />

Now our role is activated:

<img width="721" height="536" alt="image" src="https://github.com/user-attachments/assets/612f8643-e346-4bca-b48f-a0464ad94281" />

Under 'Active assignments', we can see our activated role and the option to de-activate.

<img width="1837" height="214" alt="image" src="https://github.com/user-attachments/assets/122ef5c0-ef51-4ce0-a3f7-e42baa7fde15" />

Now, if the Write account tries to reset a password, we are able to:

<img width="380" height="308" alt="image" src="https://github.com/user-attachments/assets/61778d50-81d2-44ee-9560-6447cebb9458" />



