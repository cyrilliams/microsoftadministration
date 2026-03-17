# Setup MFA and Authentication


MFA is crucial for any orginization. Let's set that up.

## Authentication

In Entra ID, we'll go to 'Authentication methods':

*I already have some methods set up and enabled*

<img width="1694" height="864" alt="image" src="https://github.com/user-attachments/assets/4d6cff56-796f-43b7-8fd9-d2300e19f498" />

Let's say I want to enable SMS authentication,
I'll click enable and apply to all users our selected groups:

<img width="2198" height="490" alt="image" src="https://github.com/user-attachments/assets/71863c95-6d7a-449e-a78c-b474cb05b9d0" />

If you'd like to setup Microsoft Authenticator,
you can set up the registration policy which allows users to snooze the requirement to register for
the Authenticator.
You can also exclude users and groups here:

<img width="2194" height="844" alt="image" src="https://github.com/user-attachments/assets/1ecd8508-4238-48a9-a1f1-1d68b49caed7" />

---

## Passwords

For passwords, you can configure some policies in the 'Authentication methods' section as well.

You can setup when a user is locked out and for how long, as well as banded passwords.

<img width="1218" height="767" alt="image" src="https://github.com/user-attachments/assets/46e6b82e-9b5a-4b5a-8ec1-2909292fa474" />

---

## Multifactor Authentication

You can also set up a couple options for MFA by going to either:

**Entra ID > Users > Per-user MFA > Service Settings**
or
**Entra ID > Multifactor authentication > Cloud | Additional cloud-based multifactor authentication settings > Service Settings**

If you wanted to allow trusted IP's that bypass MFA, or allow devices to be trusted for a certain amount of days, 
you can do that here:

<img width="2202" height="1180" alt="image" src="https://github.com/user-attachments/assets/1a0d735e-516c-4d62-9e25-45a09911fbf7" />

*You can also enable MFA on a per user basis but that is not recommended*

<img width="1316" height="938" alt="image" src="https://github.com/user-attachments/assets/1209cd8c-8d74-4862-b3aa-bf16b2511abf" />
