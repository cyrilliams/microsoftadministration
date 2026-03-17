# Entra ID Administrative Roles

When setting up or creating Entra ID, there are many Entra ID admin roles that can be given and assigned.

If we look at the 'Roles and administrators' portal, we can see all the different roles:

<img width="2554" height="1185" alt="image" src="https://github.com/user-attachments/assets/01706523-efaf-43f9-af10-d7ca94edb7b0" />

Every tenant will need at least Global Admin. 
*This account can manage every and all features and aspects of Entra*

To assign it, click 'Global Administrator'

<img width="2549" height="531" alt="image" src="https://github.com/user-attachments/assets/b0b191e1-0565-4300-a946-1aa4cea52ab3" />

Click 'Add assignments' and assign the user or group.

<img width="932" height="907" alt="image" src="https://github.com/user-attachments/assets/54d9f836-1585-4800-98f1-ef221cb9eb36" />

---

# Least Privilege

We want to implement "Least Privilege"

This means that we do not want to give a user more access that they need. 
We want to assign only the required permissions to do their job.

So we may not want to assign our Helpdesk user a global admin role. 
Instead we may want to have them be assigned the Helpdesk Admin role + other roles tailored to their needs:

<img width="2224" height="169" alt="image" src="https://github.com/user-attachments/assets/40ed24de-efeb-4245-9b2d-10ae9fb463f5" />

---


# Custom Roles
*You will need an Entra ID P1 or P2 license*

You may want to create a role that you'll assigned to multiple users that have multiple permissions.

Let's create a Custom Role.

Click 'New custom role'

<img width="182" height="42" alt="image" src="https://github.com/user-attachments/assets/3fbef201-65c9-4445-8ef0-5032cd64d7fb" />

Give it a name and description:

<img width="1254" height="369" alt="image" src="https://github.com/user-attachments/assets/34d1cb85-2be1-482d-a8af-123b6dda4af5" />

We will assign the roles. 

For this example, I want this role to be able to assign and delete Groups, as well as manage licenses for users:

<img width="2541" height="459" alt="image" src="https://github.com/user-attachments/assets/4f661de5-601f-4588-83d9-5d999d15ae1f" />

Now we can see my Custom role has populated and is ready to be assigned:

<img width="2194" height="442" alt="image" src="https://github.com/user-attachments/assets/69417879-5b8c-4c9b-9632-770a4a71d701" />


