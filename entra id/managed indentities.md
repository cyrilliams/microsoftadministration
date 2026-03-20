# Managed Identities

<img width="165" height="165" alt="image" src="https://github.com/user-attachments/assets/23915e17-ba38-4a15-a831-a26cbac1163d" />



In this doc, we'll quickly go over and set up Managed Identities for Azure resources

---

### What is a Managed Identity?

A Managed Identity allows us to give a resource like a Virtual Machine it's own Identity, similar to how a User has their own Identity and set of roles & resources.
It is more secure as well because no credentials that the User has to manage, Azure manages the password on it's own.


Why would we want to give a resource an identity?

An App may need to access something like Azure Key Vault.
Instead of storing the password/secret in the Apps code, 
we can assign a Managed Identity to the app to authenticate when access to AZ Key Vault is needed.

---

### Benefits

Better Security:

- No passwords or secrets exist in code.
- No risk of credential leaks.
- Automatic rotation by Azure.

No Maintenance:

- Secret rotation
- Key expiration
- Updating app config
- Managing service principals manually


---

## Managed Identity Types

There are two types of Managed Identities pertaining to Azure resources: System assigned and User assigned.

**System Assigned** - This identity is tied to the resource itself. It cannot be tied to another resource and it deleted when the resource is deleted.

**User Assigned** - This is an identity that is created by a user and can be assigned to multiple resources. 
This can be good if you want to give multiple resources the same roles and permissions.

---

## Create A System Assigned Identity

In our resource, (I'll use a VM for an example), we'll go to **Security > Identity > System Assigned**

<img width="1635" height="243" alt="image" src="https://github.com/user-attachments/assets/22415f1b-404f-44ad-8739-3c312e703498" />

Change the Status to On and save:

<img width="1651" height="429" alt="image" src="https://github.com/user-attachments/assets/8e3fd565-ff1f-4303-b4ee-69f6ab31164a" />

We can see it's been created and registered with Entra ID:

<img width="1651" height="429" alt="image" src="https://github.com/user-attachments/assets/ca023ce2-0bdc-423a-8699-463ff4c957bd" />

If we click 'Azure role assignments', we can give it a role:

<img width="838" height="377" alt="image" src="https://github.com/user-attachments/assets/d16b84f7-2a08-406d-8c40-8bf6f5cc9e67" />

Now we can see, the VM has the role of a Key Vault Contributor:

<img width="1907" height="318" alt="image" src="https://github.com/user-attachments/assets/13733e0e-1a73-44e6-a82f-a69e932bb54f" />

---

# Create a User Assigned Identity

Let's say I want to give that same VM as well as another resource the same role and identity.

We can do that by going to 'Managed Identities' and creating an Identity:

<img width="181" height="34" alt="image" src="https://github.com/user-attachments/assets/48f0a4a8-76c0-4c9e-9e5d-9f3e121fdabd" />

Let's create one.

We'll give it a name and assign the Resource Group and region:

<img width="789" height="497" alt="image" src="https://github.com/user-attachments/assets/fc2ff46e-6879-4660-8d29-0afe985c4762" />

### Assign Role

Under the Managed Identity, we can go to **Access control (IAM) > Add > Add role assignment**

<img width="1911" height="662" alt="image" src="https://github.com/user-attachments/assets/b7ee5706-10b0-433e-aad9-46119be4bea6" />

Add the Role

Under 'Members', we want to add a Managed Identity, not a user or group:

<img width="431" height="72" alt="image" src="https://github.com/user-attachments/assets/ed00cecd-5a02-4d65-b005-1e516b9d0b6c" />

*In the select menu, we can see we have the option to add the 'rbac-test-vm' Virtual Machine, which is it's own identity:*

<img width="574" height="641" alt="image" src="https://github.com/user-attachments/assets/00b2382f-cffe-403d-b4c7-529663b9b301" />


Instead, we want to assign it to the Managed Identity, not the resource identity:

<img width="575" height="613" alt="image" src="https://github.com/user-attachments/assets/2cfd841d-6c72-498b-afcb-a8cd4b0172dd" />

If we check the Azure role assignments, we can see the Managed Identity has been assigned a role:

<img width="1637" height="252" alt="image" src="https://github.com/user-attachments/assets/3750cf70-ec62-4045-9f47-37f93fc9eef7" />

### Add User Assigned Managed Identity to Resources

Let's go back to our VM and assign that M.I.

<img width="1909" height="583" alt="image" src="https://github.com/user-attachments/assets/7fb93c2f-0ff2-4e40-a16f-df156fd5231a" />

If we go to the Identity part of another resource, we can assign that same M.I. as well:

<img width="1327" height="466" alt="image" src="https://github.com/user-attachments/assets/bd2b184b-c5e1-4a99-b6ab-9391d01069f5" />


---

Managed Identities are a great way to give resources their own identity and roles.
