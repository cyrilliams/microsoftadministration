# Create Groups

In this doc, we'll create a couple type of groups

## Assigned Groups

Assigned Groups are groups where users and devices are statically set.

Let's create a Security Group.

We'll go to **Entra ID >  Groups > New group**

Here we can select the group type, name and description, membership type and owners/members.


<img width="746" height="458" alt="image" src="https://github.com/user-attachments/assets/b5e61a4b-0f70-46f8-ad65-c0e58ed6b582" />


Its important to know the difference between the two Group Types:

#### Security Groups

Security groups are a great way to logically groups users and even devices.
You can assign permissions and roles to the group, rather than individual users, which is great for larger organizations.

#### Microsoft 365 Groups

These are for users only and are a great way to group users for collaboration for things like SharePoint, mailboxes and other Microsoft based products.

It also creates a group email as well. That way you can email all users in the group:

<img width="689" height="62" alt="image" src="https://github.com/user-attachments/assets/f648c25b-5592-4af1-b6e8-a5e8d9857c28" />

## Dynamic Groups

Dynamic Groups are a great way to automatically add users based on certain values.

We'll create a query that logically says, "If you have 'End User' in your job title, you will be added to the group":

<img width="1626" height="553" alt="image" src="https://github.com/user-attachments/assets/254c3738-1d3d-4464-86cb-50586a740946" />

We can also add a secondary condition as well as if we want both conditions to be met or one or the other, using the 'And/Or' option:

<img width="1615" height="302" alt="image" src="https://github.com/user-attachments/assets/0677d29a-625b-42c0-a719-0780d9709ed2" />

We can also Validate if we know what user's would be applied to the Dynamic Group:

<img width="1629" height="460" alt="image" src="https://github.com/user-attachments/assets/b80da24b-8522-44ca-816c-ec1ccf141c41" />

After waiting for a couple minutes, all of our End Users have been added automatically without us manually adding them:

<img width="1638" height="548" alt="image" src="https://github.com/user-attachments/assets/a24c7098-a1a8-41ab-bb56-5fea7398d80b" />

This is a great way to automate grouping based on attributes.
