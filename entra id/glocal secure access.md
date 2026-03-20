# Global Secure Access Setup Flow

<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/bfe6302c-68bc-4fc7-8506-43444a464239" />


In this doc, we'll go through the flow of setting up Global Secure Access.

I will not have this fully setup the full capabilities of GSA but we will discuss the general steps to set this up.

### What Is Global Secure Access

Global Secure Access works as a way to implement secure connections to Microsoft resources, private organizational resources, and Internet access in general.
It works similar to a VPN but we can also enforce conditional access, assign/limit users and groups, specify devices, and set connections to organization networks as well.

This allows you to have different services all in one and already connected with Entra.


---

## Setup Global Secure Access Profiles

***Prerequisites** - You will need to Activate GSA as well as have an Entra Suite license or trial*

In the Entra portal, we can go to **Entra ID > Global Secure Access > Connect > Traffic forwarding**

This is where our traffic profiles for Microsoft services & apps, private access for private resources, and Internet access is setup.

<img width="968" height="841" alt="image" src="https://github.com/user-attachments/assets/953d1703-01df-401d-a0ea-d4a64da4b832" />

### Microsoft Traffic Profile

In our Microsoft access profile, we can see that we have connections/destinations to Microsoft resources like SharePoint and Exchange:

<img width="1118" height="664" alt="image" src="https://github.com/user-attachments/assets/ee8cab64-eef8-4b94-a475-34775c101363" />

We can set Conditional Access Policies

<img width="524" height="299" alt="image" src="https://github.com/user-attachments/assets/df63aafd-dda2-4275-b09e-22e2e92c2828" />

We can also set all users or specified users & groups:

<img width="580" height="333" alt="image" src="https://github.com/user-attachments/assets/6fb6a422-e598-4dad-ab4b-b8486bb02456" />

You can also set Remote Networks as well here:

<img width="291" height="66" alt="image" src="https://github.com/user-attachments/assets/a1fe139b-be7f-432a-a141-2b6242d0914d" />

### Private Access Profile

<img width="314" height="577" alt="image" src="https://github.com/user-attachments/assets/5d01011e-1528-4de0-a030-6f8afdabb226" />

This allows you to set the profile for connections for private resources.

### Internet Access Profile

<img width="312" height="572" alt="image" src="https://github.com/user-attachments/assets/a4eb1473-c222-4584-89ab-ad9d9730b6c8" />

This allows you to set rules for general Internet access, not a specific resource.

We can also see a Microsoft Traffic bypass is setup because that is technically setup in the Microsoft access profile:

<img width="1101" height="802" alt="image" src="https://github.com/user-attachments/assets/71603502-be64-41de-9a14-3eaa611ba91d" />

---### Remote and Private Networks

You can also set up Remote and Private networks for your end user devices to connect to:

<img width="234" height="71" alt="image" src="https://github.com/user-attachments/assets/a1a50b7d-748c-4d4a-b8b3-9b7e3e13316a" />

*I don't have anything to configure but if you're organization had a network setup already, you can set it up to be connected to here.*

---

## Client Connection

Under  **Entra ID > Global Secure Access > Connect > Client download**, we can get the .exe for Global Secure Access

<img width="1425" height="527" alt="image" src="https://github.com/user-attachments/assets/5c99d279-4081-4dc1-942c-b139236b10ca" />


I'll spool up a Windows 11 VM and download the Client:

<img width="468" height="289" alt="image" src="https://github.com/user-attachments/assets/f4849199-3791-487a-bed5-0d85b4b2a7d0" />

We get this notification to sign in:

<img width="376" height="168" alt="image" src="https://github.com/user-attachments/assets/2029cf1e-4665-4ca5-bff4-2dd2586b050a" />

After signing in, we the GAS is enabled and connected!

<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/f62343d2-8b63-4ec3-bbb8-e927144d9900" />




