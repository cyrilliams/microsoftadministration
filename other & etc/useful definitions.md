# Useful Definitions

**Password Hash Synchronization** - When a user changes their password in a hybrid environment, the password is not sent up to the cloud or down to the on prem environment. 
Instead, the password is hashed and when a user signs in, the hash value is checked and validated. 
It would be insecure to send a password over the internet. 
Password hashing takes care of this as well as the synchronization to the cloud and on prem.

**Passthrough Authentication** - When a user signs in through the cloud, the log in goes from the Cloud, 
over the Internet, into your organizations on prem network and servers, and verifies the login.

**Federation** - Allows multiple apps and organizations to work together to sign in. 
Authentication is done by a 3rd party organization or another company/organization

**SSO** - Using your organization login to sign in to a 3rd party application. 
Allows you to be automatically logged in to 3rd party apps because your credentials have already been setup and recognized as legit and verifiable.

**User risk** - Microsoft believes the identity (the user account) may be compromised.
It’s about the overall state of the user—not just one session.

**Sign-in risk** - Microsoft believes a specific authentication attempt is risky.
It’s about the context of that one login—IP, device, location, behavior.

