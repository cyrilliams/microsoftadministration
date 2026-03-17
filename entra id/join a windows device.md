# Registering a Windows Device with Entra ID

There are two ways we can do join to Entra ID, one from the Windows OOBE (out of box experience), and one with an already setup Windows device, using add work or school.


---

## OOBE Entra Join

Let's do the OOBE first.

During the setup, *with a Pro or Enterprise version of Windows*, we will click 'Set up for work or school'

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/282168a2-3048-4d95-bf91-c5d2f480b8d2" />

I'll use my account that I've assigned an E5 license to:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/f29fc06f-6527-4382-a2fe-0a5528edda86" />

We can see it is now registering/joining. I'll click through the rest of the setup as well.

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/2896d5bd-522d-4e7b-8efe-a5edc68f4fe6" />

*I'll skip Window Hello for now*

Now if we go to 'Access work or school', we can see that I am not only signed in with my user ID, but the device is connected to my Entra ID:

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/03ab87d3-8f9e-4d76-a71c-c3ffda0a9b15" />


## Join A Configured Device

If we want to join a device that's already been configured, we'll search for 'Access work or school'

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/a8f9703e-e216-4fe7-a2c4-5ce5a7aec893" />

'Connect'

<img width="592" height="234" alt="image" src="https://github.com/user-attachments/assets/d3d3ef54-812d-4eb4-815b-863d7ecd18f2" />

'Join this device to Microsoft Entra ID'

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/68d7a18b-fd98-4f4e-a0b0-bf49c7b5436f" />

Then enter your credentials:

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/390d4032-fb6a-4fa9-8220-67f9150c40ab" />

Now you'll get the 'Join' option:

<img width="1708" height="960" alt="image" src="https://github.com/user-attachments/assets/2fd41b3d-c71a-43fe-9ac7-a6e0b85b2c99" />

We're all set

<img width="759" height="263" alt="image" src="https://github.com/user-attachments/assets/3b92f6cd-d1d3-468a-a91a-27495d8df854" />

You can verify the changes have taken affect when you get the option to 'Switch user' and not just 'Sign out'

As well as getting the 'Other user' option as well at the sign in screen:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/e4494aca-3cf0-41bb-9aa4-1ff79e8e8d70" />

Now we can log in with our Entra ID account:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/4594a5de-0198-4908-86f6-0a1ab8415d57" />

---

In Entra ID, we can see the device has been added:

<img width="1478" height="550" alt="image" src="https://github.com/user-attachments/assets/2953326d-005f-442e-bc18-7f13d1c38c75" />


---

## Joined vs Registered

It is also important to note that Entra joined and registered are different:

Entra joined:
- Used for company‑owned Windows devices.
- User signs in with Entra ID credentials only.
- Device is fully manageable by Intune/MDM.
- Gives full SSO to organization resources.
  
Entra registered:
- Used for BYOD (Bring Your Own Device).
- User signs into the device with personal account, but signs into work apps with Entra ID.
- Limited management—typically only app-level controls (e.g., conditional access).
- Does NOT replace the primary login on the device.

