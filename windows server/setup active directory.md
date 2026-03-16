# Set Up Active Directory

We will now setup Active Directory on our Domain Controller:

Let's search for Active Directory Users and Computers on the server:

<img width="1280" height="800" alt="image" src="https://github.com/user-attachments/assets/064305e6-555f-4ce4-9a85-ed2d36403246" />

Now we can see that we have our Domain with our Domain Controller in it:

<img width="1282" height="907" alt="image" src="https://github.com/user-attachments/assets/842b84cc-69b1-4d37-b36f-9361bb6aff47" />


## Add OU's and Users

### Organizational Units

Next, we'll want to add one/multiple OU's (Organizational Units)

We'll right click our Domain > New > Organizational Unit

We'll name our OU

<img width="432" height="374" alt="image" src="https://github.com/user-attachments/assets/bc8864f3-1064-41a5-92d1-e2cea2d4abce" />

### Users

Now let's create a new user:

<img width="27" height="23" alt="image" src="https://github.com/user-attachments/assets/cb0cf195-fa95-4504-b799-b112c0dec162" />

We'll input the user's info and create a password:
*We can see the user gets added to our domain*

<img width="435" height="376" alt="image" src="https://github.com/user-attachments/assets/4cb8bee6-1ed7-4c10-ac2f-15be82c85c0e" />

## Join a Device to Domain

Let's add a Windows 11 device to our Domain.

First, we'll set our DNS to point to our Domain Controller:

<img width="395" height="446" alt="image" src="https://github.com/user-attachments/assets/828ccbad-4828-46bf-8ee7-e34904bb57b2" />



From our Desktop, we'll do **Win + R > 'systempropertiesadvanced' > Computer Name > Change** and enter our device name and domain:

<img width="321" height="384" alt="image" src="https://github.com/user-attachments/assets/71401775-1fd0-486f-bb8f-c1b3ce969dd9" />

If setup successfully, we should get a prompt for Admin Credentials:

<img width="837" height="519" alt="image" src="https://github.com/user-attachments/assets/d2600667-59df-4d94-a43b-c8cebaa97065" />

We are now joined to cyriltest.site:

<img width="281" height="147" alt="image" src="https://github.com/user-attachments/assets/dcc1f813-ff2c-4546-8e6e-453b149b5eba" />

We'll do a quick restart and we can see that we have the option for 'Other users':

<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/9e3035f9-894f-4801-bdeb-8c561309341c" />

*After adding our user to the Remote Desktop User group,* we are now able to log in with our created user from our Windows 11 machine:

<img width="1282" height="1089" alt="image" src="https://github.com/user-attachments/assets/f942e78a-6330-4152-adb8-34dc84d93120" />



