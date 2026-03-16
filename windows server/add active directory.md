# Add Active Directory

Let's add Active Directory to centralize identity and access management

We'll go to **Manage > Add Roles and Features**

**Role-based or feature-based installation**

<img width="584" height="198" alt="image" src="https://github.com/user-attachments/assets/93997334-e30a-40db-9d8d-d2c0fa4d6b02" />

Select the server:

<img width="574" height="415" alt="image" src="https://github.com/user-attachments/assets/47774ac4-aa09-4ec7-a383-cad6ee732106" />

Now we'll select **Active Directory Domain Services**

<img width="351" height="403" alt="image" src="https://github.com/user-attachments/assets/a072e35f-e27b-433e-962c-929fe6dc4da8" />

We'll install all necessary features as well:

<img width="413" height="433" alt="image" src="https://github.com/user-attachments/assets/25144f39-2845-4eb1-875c-c2f117d9d7fa" />

Click 'Install' and we'll wait a couple minutes

<img width="581" height="411" alt="image" src="https://github.com/user-attachments/assets/07a9dacc-7a2d-4dda-88ae-b824a96f103e" />

Now we can see AD DS has been added to our Role and Server Groups:

<img width="1158" height="342" alt="image" src="https://github.com/user-attachments/assets/0c561f0b-d36c-402a-a3f2-09d24a79aaba" />

---

### Promote to Domain Controller

We will also want to promote this Server to be out Domain Controller:

<img width="366" height="334" alt="image" src="https://github.com/user-attachments/assets/2b534068-0172-413c-ae1f-e201c72af517" />

Since, I am setting up a completely new Domain, I'll create a Forest:

<img width="756" height="555" alt="image" src="https://github.com/user-attachments/assets/148a5d69-d661-4ec7-85f2-8e1a9c6a0006" />

We'll set up our Domain Controller Options:

<img width="756" height="556" alt="image" src="https://github.com/user-attachments/assets/5028089c-7677-443e-bf6b-39a8387a5af1" />

We'll assign the NetBIOS name. Mine will be 'CYRILTEST':

<img width="731" height="310" alt="image" src="https://github.com/user-attachments/assets/358793a9-39e5-40ee-99e3-c2a8537332a8" />

We'll select the default options for the next couple steps and install.

*It should give you a confirmation message once installed and then do a restart or re-sign in*

We can see here, our server is now joined to the Domain of CYRILTEST:


<img width="1282" height="904" alt="image" src="https://github.com/user-attachments/assets/d4b999aa-54e6-4e8b-abfc-0494fa66c5aa" />

Although we are not connected to the Internet, we are connected to our cyriltest.site domain:

<img width="353" height="181" alt="image" src="https://github.com/user-attachments/assets/043169ac-8454-4eae-ad1e-91139ded337b" />


---

# Set Up Active Directory



Now, let's search for Active Directory Users and Computers

<img width="1280" height="800" alt="image" src="https://github.com/user-attachments/assets/064305e6-555f-4ce4-9a85-ed2d36403246" />

Now we can see that we have our Domain with our Domain Controller in it:

<img width="1282" height="907" alt="image" src="https://github.com/user-attachments/assets/842b84cc-69b1-4d37-b36f-9361bb6aff47" />


## Add OU's and Users

### Orginizational Units

Next, we'll want to add one/multiple OU's (Orginizational Units)

We'll right click our Domain > New > Organizaitonal Unit

We'll name our OU

<img width="432" height="374" alt="image" src="https://github.com/user-attachments/assets/bc8864f3-1064-41a5-92d1-e2cea2d4abce" />

### Users

Now let's create a new user:

<img width="27" height="23" alt="image" src="https://github.com/user-attachments/assets/cb0cf195-fa95-4504-b799-b112c0dec162" />

We'll input the user's info and create a password:
*We can see the user gets added to our domain*

<img width="435" height="376" alt="image" src="https://github.com/user-attachments/assets/4cb8bee6-1ed7-4c10-ac2f-15be82c85c0e" />


