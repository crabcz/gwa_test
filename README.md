# gwa_test

Write a script (PowerShell or SH, ARM Template) for creating infrastructure in Azure Cloud:

1) Resource group “a-rg” will be located in West Europe and will contain 2 virtual machines:            



Machine 1

2 cores / 8G RAM / 128G + 256G DISK with SQL server 2017 standard, which will not be accessible from WAN. Use LAN IP 10.10.1.10 and ports 88,9999, 3389 and 1433 will be exposed only to LAN.


 

Machine 2
2 cores / 8G RAM / 128G DISK Standard SSD, Windows Server 2016. Use LAN IP 10.10.1.11 and ports 88,9999, 3389  will be exposed only to LAN. Ports 80, 443 and 9339 will be accessible from WAN.

2) Resource group “b-rg” will be located in France and will contain 1 virtual machine:

Machine 1
2 cores / 8G RAM / 128G DISK Standard SSD, Windows Server 2016. Use LAN IP 10.10.1.11 and ports 88,9999, 3389  will be exposed only to LAN. Ports 80, 443 and 9339 will be accessible from WAN.

3) Additional Instructions:

All VMs  (1, 2, 3) will communicate with each other on ports 88, 9999. Prepare with maximum security.
Set up central Azure automation for Windows updates and for installing new software.


4) Bonus (not required):

 

Setup centralised diagnostics for all system events collected form all three VMs and configure notification for CPU and RAM if usage is over 70%