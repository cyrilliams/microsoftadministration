# Set Up DCHP 

Let's setup DCHP on our Domain Controller so IP addresses can be handed out automatically.

## Installation

In Server Manager, we'll click **Manage > Add Roles and Features**

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/2d575daf-c1a6-415a-b791-886d2de60975" />

We'll click the default options. 

Then we'll check 'DHCP Server':

*I had already installed it here*

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/999b3141-d39f-479e-ba33-a7ef3dc37068" />

Click through the following prompts and install.

You should see it on your Dashboard:

<img width="269" height="246" alt="image" src="https://github.com/user-attachments/assets/6b66e2fd-be54-4ee7-85b6-ffeb57a6790d" />

Now, search for 'DHCP'

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/f21ef58e-bc14-4a57-8d24-044c98596c18" />

## Configure DHCP

Right Click **IPv4 > New Scope**

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/90b18a45-5713-46fa-b33e-b3425503dd1c" />

Give it a name:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/2a574380-491a-43d8-81ba-6a4f34f2b6bb" />

I know I want my range to be only about one hundred IP's. We'll set that here:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/82f3070d-6691-48b1-971a-94cf194c66e3" />

Add a range you would like to exclude from DHCP:

Select how long you would like leases to be:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/dfc1a1b8-3c2b-4773-a16b-1e82c404b6bf" />

Add the router or gateway as well:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/509e0a54-6932-4134-a0ca-90ff3bd93c4e" />

Set your DNS address. My server is already using itself for DNS:

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/b5b13942-718b-4f31-810a-7a9405003060" />

*I'll skip the WINs Server and activate the scope*

<img width="1280" height="960" alt="image" src="https://github.com/user-attachments/assets/0b5f1465-9227-4511-95f8-bb0455bd4e10" />


