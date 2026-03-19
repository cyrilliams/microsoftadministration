# Set Up Administrative Units 

A concept I was struggling to grasp was Admin Units. 
I did not get the purpose of it if we already have Groups and Roles/Custom Roles that can be assigned.

But with some help from ChatGPT and Microsoft Learn, I understand it now.

## Administrative Units

Admin Units are a way to logically group users and devices and restrict roles and permissions to that group.

Let's say we have 3 different business locations and we only want Helpdesk User A to only manage Location A but not B and C,
we could set up Admin Units to allow Helpdesk User A to be able to only manage Location A.

## Setup an Administrative Unit

*You'll need an Entra Free license for Admin Unit members and a Entra P2 license for Unit Admins**

Lets set this up:

We'll go to **Entra ID > Roles & admins > Admin units > Add**

We can name and give a description:

<img width="713" height="373" alt="image" src="https://github.com/user-attachments/assets/bfc35f0c-0f96-4aa2-aaa1-027a56448c6e" />

Next, we'll assign the Admin Role for this Admin Unit:

<img width="1634" height="876" alt="image" src="https://github.com/user-attachments/assets/bdda069c-9934-4f81-83fc-93d1458cb321" />

Click 'Create'

<img width="657" height="269" alt="image" src="https://github.com/user-attachments/assets/0c362b68-0483-49ed-b93e-447f8059a144" />

In the Admin Unit settings, we can add or remove members or groups. 
I'll add my End Users, which makes all of my End User accounts members of the Admin Unit. 
It does **NOT** make them the Admin of the unit.

<img width="1633" height="609" alt="image" src="https://github.com/user-attachments/assets/94abd096-945e-420b-bb78-9149ffb7082c" />


If we check our 'Helpdesk Administrator' assignment, we can see the assigned account has those permissions limited to only the 'End User Admin Unit'

<img width="1629" height="382" alt="image" src="https://github.com/user-attachments/assets/7ba91864-7109-4ba7-a2ba-195fdff18f57" />


## Verify

From the assigned account, we can see our role has been added under 'Active assignments'.

We can also notice the Scope

<img width="1111" height="316" alt="image" src="https://github.com/user-attachments/assets/721f649d-c3f9-4e4a-8801-19e7db5755af" />


If we try to change the password of someone not in the Admin Unit, we are met with this:

<img width="309" height="172" alt="image" src="https://github.com/user-attachments/assets/2cba4ce8-958e-4ba5-af83-f1edc40ffc9c" />

Now, if we go to one of End Users in the Admin Unit, 
we can see that not only can we change the password, but we can edit the User's info as well

*I assigned the User Admin role as well*

<img width="1631" height="623" alt="image" src="https://github.com/user-attachments/assets/5d51c616-3772-4dbe-9eb0-c5c8e5e256b8" />

## Conclusion

Administrative Units are a great way to delegate roles but limit to only the areas of Entra ID that are needed for that user.

This is a good implementation of Least Privilege
