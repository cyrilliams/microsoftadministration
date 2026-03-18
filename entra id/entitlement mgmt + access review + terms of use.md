# Entitlement Management

In this doc, we will setup Access Packages and Terms of Use:

## Access Packages

Access packages allow user's to request to be added to a Group, resource or role for a set amount of time.

We will use a Group for our example.

This Group currently has no members:

<img width="1634" height="488" alt="image" src="https://github.com/user-attachments/assets/1407fffa-df93-405e-9f87-a47fa203e177" />

To setup the Access Package, we'll go to **Entra ID > Entitlement management > Access packages > New access package**

<img width="1061" height="494" alt="image" src="https://github.com/user-attachments/assets/4f1e6fa6-c357-4e87-8550-eacba845a3c0" />

The user can be added to the following options. 

I'll select my Entitlement Group:

<img width="1634" height="293" alt="image" src="https://github.com/user-attachments/assets/19395027-1587-4b5e-af45-0b4ee5243aab" />

Next, we can assign who can get and request access:

<img width="1451" height="696" alt="image" src="https://github.com/user-attachments/assets/4c97e79c-62e8-46e1-9476-0b348c7349f0" />

As well as who can approve and the settings around it:

<img width="1338" height="709" alt="image" src="https://github.com/user-attachments/assets/e80c3359-f4c7-4f7e-9f03-3f09ad853486" />

You can also assign a question to be asked as well:

<img width="1617" height="256" alt="image" src="https://github.com/user-attachments/assets/cb1d8d50-7007-4331-b96b-0207923d81b8" />

You can also specify how long this user has access and even allow them to set a time within the set constraints:

<img width="913" height="376" alt="image" src="https://github.com/user-attachments/assets/4e32b955-70ea-4b1b-8330-129d10019bfb" />

We'll create and see that our Access Package has been listed:

<img width="1629" height="516" alt="image" src="https://github.com/user-attachments/assets/78dfb6f2-62f1-43f6-a892-79ae03da4f0b" />


## Verify Access

If we login as a user to myaccount.microsoft.com, we can go to **My Access > Access Packages**



*Unfinished - unfortunately something in my domain/identity is not setup correctly and is not allowing users to see access packages
In the scenario, the user would request an access package, the admin would allow or deny that request, and the user would be enrolled into whatever resource was configured*

---

# Access Review

Another part of Entra Governance is Access Reviews.

This allows you to review allowed access with users and see if they still need access to certain resources.

We'll go to **Entra ID > ID Governance > Access reviews > New access review**

We'll choose if we want to review an access to a resource or multiple resources:

<img width="836" height="393" alt="image" src="https://github.com/user-attachments/assets/63e8bc35-b8e4-4d44-8501-24a3033028e8" />

I'll select one resource. Then, I'll select 'Teams + Groups'

Access reviews work best for groups with Guest identities and users in them, but you can select the scope to be all user's including internal users.

<img width="893" height="535" alt="image" src="https://github.com/user-attachments/assets/6a03b476-835b-464d-8db0-b58d962e7101" />

You can also set the Review details, including who will review access and the recurrence:

<img width="592" height="476" alt="image" src="https://github.com/user-attachments/assets/8c156e49-3d5b-4196-9996-70f7b0a00131" />

We can also set what happens if a reviewer doesn't respond and other settings here:

<img width="564" height="675" alt="image" src="https://github.com/user-attachments/assets/1e075e20-ef1e-4117-992d-580151cbd0e9" />

We'll name and create

<img width="765" height="624" alt="image" src="https://github.com/user-attachments/assets/abb7f32b-e3d4-4268-80b3-369b3f5218c1" />

And we can view it in the Access reviews tab as well:

<img width="1633" height="525" alt="image" src="https://github.com/user-attachments/assets/c9101409-60e1-4d89-bd81-21fdc8dcb207" />


*Unfinished - unfortunately something in my domain/identity is not setup correctly and is not allowing users to see access reviews
In the scenario, the user would review an access review, the admin would allow or deny that request, and the user would be enrolled/un-enrolled into whatever resource was configured*

---

## Terms of Use

Some companies may require a Terms of Use to be read and agreed to. Let's set that up:

We'll go to **Entra ID > Conditional Access > Manage > Terms of use > New terms**

Here we can fill out the information, upload the PDF and set the enforcement of the policy:

<img width="904" height="812" alt="image" src="https://github.com/user-attachments/assets/68f826d1-8737-41d8-b5fc-89b4836d8143" />

Now we'll create a Policy to enforce it. 

We'll go to **Entra ID > Conditional access > Policies > New policies**

<img width="409" height="875" alt="image" src="https://github.com/user-attachments/assets/ca2a30df-9428-4f3c-808e-f6519bb02adb" />

We'll set it to All users.  Also set Target apps to all apps.

Next, we'll set the Grant to 'Grant access' and we can see our Term of Use has appeared:

<img width="310" height="808" alt="image" src="https://github.com/user-attachments/assets/179add78-213b-49a6-9774-c9c778da2324" />

Now, we will try to sign in and out and we are met with this:

<img width="1779" height="506" alt="image" src="https://github.com/user-attachments/assets/5016ea72-c5a0-47cd-b5ce-cfa8f74afc16" />

If we click on the Terms of Use, we can see the PDF we uploaded:

<img width="1441" height="901" alt="image" src="https://github.com/user-attachments/assets/2154da0d-2305-486d-88c6-3c768b809756" />


We'll click 'Accept' and sign in like normal!

