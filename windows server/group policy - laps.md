# Setup Group Policy

Let's configure Group Policy to set up LAP (Local Admin Password) on all of our devices in our Domain.

*Make sure Windows Server is updated as well*


## Server Configuration

Before we start, we will need to run the following PowerShell command:
```.ps1
Update-LapsADSchema
```

Press 'A' for all

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/7cf24cef-50d0-4866-9213-bcfc3711560b" />

Then verify it worked by selecting a computer object and checking if the LAPS tab was added:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/a77484fd-6a09-4ea1-b437-4103633767c6" />

Then we will run the following command to allow computers to change their passwords:
```ps1
set-lapsadcomputerselfpermission –identity “<Name of OU>”
```

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/f48c0d32-0157-4e39-b761-057228138acf" />



## Create Policy

Open up 'Group Policy Management'

*You may need to install Group Policy Management if not installed already*

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/cf990964-ff27-4519-9fde-a97d156ad70f" />

Right click Group Policy Objects and click 'New':

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/559c2505-63e5-4392-ac16-3c951cd6b67f" />

We'll go ahead and name the Policy

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/7f155eda-06d0-40c9-86c5-6dcadbc87deb" />

Right click the Policy then click 'Edit'

This will open the Group Policy Management Editor:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/df6abff9-de6d-4aa2-b2ba-34c3e3addde8" />

To enable and look at LAPS policies, we will go to:

**Computer Configuration > Policies > Admin Templates > System > LAPS**

<img width="1282" height="1099" alt="image" src="https://github.com/user-attachments/assets/5a91160b-c2df-4d92-be0c-c3ebf4c210ff" />

We'll click 'Configure password backup directory' and enable it:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/6867dc47-7c81-4f73-a287-6c414fab9892" />

We also want to make sure Active Directory is set here:

<img width="367" height="120" alt="image" src="https://github.com/user-attachments/assets/924affc2-879b-4160-9d58-e0562c101fee" />

Click 'Apply' and then open the 'Password Settings' policy and enable as well:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/d400bebc-8ae3-4065-a714-bebe27f7e5cc" />

Now we'll setup up the admin account using the 'Name of admin account to manage' policy:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/f9f78c95-b37b-4cb4-bf6c-911a07eac615" />

## Apply Policy

We'll go back to the main Group Policy Management menu.

Find the domain or OU you would like to enforce the Policy with.

Right click and click 'Link an Existing GPO'

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/e82331cb-7ab3-4f3a-a413-0aa340d18d3a" />

We'll select our Policy and add:

<img width="556" height="508" alt="image" src="https://github.com/user-attachments/assets/c2bdea4b-9d1c-42c6-91a1-0ad2f72eee29" />

*Create the admin account in Active Directory if not already created and assign the proper permissions*

## Verify Policy

If we log in to our Windows 11 machine and check our Local Users and Groups, we can see our created local admin account is not here.

<img width="1710" height="1090" alt="image" src="https://github.com/user-attachments/assets/868d0f6e-c53e-4df4-b53d-d825064cf182" />


Lets run a Group Policy Update

In command prompt, we will run:
```
gpupdate /force
```

We can see it updated a User Policy:

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/e773d12e-921c-4c64-9f6f-efc26364f6b0" />

After a restart, we can see our local admin account has been added:


