# Setup and Install Entra ID Connect

We will now setup Entra ID connect on our test On Prem Windows Server
and link the existing Active Directory users and devices with our Entra ID.

## Install Entra ID Connect

On our server, we'll download the Entra Connect Sync Agent from the Entra ID portal:

<img width="1710" height="1090" alt="image" src="https://github.com/user-attachments/assets/09be1f93-617a-4c79-ba4f-36b54a436d75" />

Run the .msi

<img width="445" height="148" alt="image" src="https://github.com/user-attachments/assets/991eda07-7163-4eec-9121-8f71a53080a8" />

The Connect Sync portal should open up:

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/1ee00cb1-4770-45d5-a9b1-eaa4ecf1a705" />

It's already recognized my Forest/Domain of CYRILTEST:

<img width="813" height="380" alt="image" src="https://github.com/user-attachments/assets/7dacdfbe-900f-4db5-831c-3eacd4f7d3e8" />

I'll choose Express Settings and enter my Global Admin email in the next box:

<img width="776" height="231" alt="image" src="https://github.com/user-attachments/assets/11cc439a-4426-4513-9475-d5fbb4735883" />

*We also have to add a couple trusted sites*

<img width="682" height="573" alt="image" src="https://github.com/user-attachments/assets/8a38806a-eee9-4c6e-a903-131591e19ec0" />

We'll then add the on prem Admin Account

<img width="735" height="288" alt="image" src="https://github.com/user-attachments/assets/790dbe6d-fca9-454c-b589-bb17d01072b6" />

*We also must make sure they are in the Enterprise Admin security group*

<img width="498" height="567" alt="image" src="https://github.com/user-attachments/assets/75ece261-3550-43d0-a3c6-2afdc16c4fcf" />

Once that validates, we will go head and install the Sync Agent:

<img width="1710" height="1090" alt="image" src="https://github.com/user-attachments/assets/d0700281-2c4a-42b0-b999-adf02e5d3f5a" />

Our synchronization is complete, and we can see the Connect shortcut has been added:

<img width="1710" height="1090" alt="image" src="https://github.com/user-attachments/assets/d11edf21-346d-4b69-99c4-51112c950fa8" />


---

## Verify Connect & Syncronization

If we go back to **Entra ID > Entra Connect > Connect Sync**,
we can see the sync status is enable and the last sync was less than an hour ago.

<img width="930" height="386" alt="image" src="https://github.com/user-attachments/assets/360858d5-3d70-4de5-aed8-1ca8222a6ec4" />


If we check our Users in Entra ID, we can see our members from our on prem Active Directory have been added to our Entra ID:

*They've also been given the correct domain as well which is good*

<img width="2549" height="976" alt="image" src="https://github.com/user-attachments/assets/25047fe8-2f31-413c-8b27-8249d362fb01" />



For reference:

This is my user list before Entra Connect:

<img width="2226" height="865" alt="image" src="https://github.com/user-attachments/assets/170b565f-7814-4e5e-bba0-441f704705f3" />



