# Creating a Virtual Switch

We will want to define the connectivity between our VM, Host, and physical network.

This is where a Virtual Switch comes in.

In Hyper-V (as well as other Virtualization tools) we have the following network options:
- External
- Internal
- Private

  <img width="722" height="687" alt="image" src="https://github.com/user-attachments/assets/a938fa6f-3481-49f5-9399-c2980cfaf54f" />

---
# Switch Types

### External Virtual Switch

Purpose: Connect VMs to the physical network.

Connectivity:

VM ↔ Physical network (LAN / internet)

VM ↔ Host

VM ↔ Other VMs on the same switch

VM is able to talk to your network and external networks/Internet

### Internal Virtual Switch

Purpose: Network between VMs and the host only.

Connectivity:

VM ↔ Host

VM ↔ VM

❌ No direct physical LAN access

```
Host: 10.0.0.1
VM1:  10.0.0.2
VM2:  10.0.0.3
```

3. Private Virtual Switch

Purpose: Network between VMs only.

Connectivity:

VM ↔ VM

❌ No host access

❌ No LAN access

How it works:

Hyper-V creates an isolated virtual network without a host adapter.

Example scenario
```
VM1: 192.168.50.2
VM2: 192.168.50.3
```
---

# Create The V-Switch

Let's create a switch:

Click 'Virtual Switch Manager'

<img width="718" height="294" alt="image" src="https://github.com/user-attachments/assets/c611c0a1-285c-4d46-825c-4a270df70222" />

Choose what type of switch you would like and then click 'Create Virtual Switch'

Then give it a name and notes.

<img width="722" height="687" alt="image" src="https://github.com/user-attachments/assets/99a6e525-855c-4d26-853f-81b909c66bad" />

For an external network, you are using your Host's physical interface, which you can choose as well:

<img width="428" height="163" alt="image" src="https://github.com/user-attachments/assets/08dd12e1-8a8e-4776-9d27-06a195b0b1ea" />



