show ethernet-switching interfaces 
set interfaces ge-0/0/18 unit 0 family ethernet-switching port-mode trunk vlan members all 
juniper@SW02> show vlans 
Name           Tag     Interfaces
default       
                       None
labsys         111    
                       ae0.0, ge-0/0/0.0*, ge-0/0/1.0*, ge-0/0/2.0*, ge-0/0/3.0, ge-0/0/6.0*, ge-0/0/7.0*, ge-0/0/8.0*, ge-0/0/9.0*, ge-0/0/10.0*,
                       ge-0/0/11.0*, ge-0/0/12.0*, ge-0/0/13.0, ge-0/0/14.0*, ge-0/0/15.0*, ge-0/0/16.0*, ge-0/0/17.0*, ge-0/0/18.0*, ge-0/0/19.0*,
                       ge-0/0/20.0*, ge-0/0/21.0*, ge-0/0/22.0, ge-0/0/23.0*
v.200          200    
                       ge-0/0/15.0*, ge-0/0/18.0*, ge-0/0/19.0*
					



show | compare



{master:0}[edit]
juniper@SW02# edit interfaces ge-0/0/7 

{master:0}[edit interfaces ge-0/0/7]
juniper@SW02# show 
unit 0 {
    family ethernet-switching {
        vlan {
            members [ vlan126 vlan111 labsys ];
        }
    }
}

{master:0}[edit interfaces ge-0/0/7]
juniper@SW02# edit unit 0 family ethernet-switching 

{master:0}[edit interfaces ge-0/0/7 unit 0 family ethernet-switching]
juniper@SW02# show 
vlan {
    members [ vlan126 vlan111 labsys ];
}

{master:0}[edit interfaces ge-0/0/7 unit 0 family ethernet-switching]
juniper@SW02# delete vlan members vlan126 

{master:0}[edit interfaces ge-0/0/7 unit 0 family ethernet-switching]
juniper@SW02# delete vlan members vlan111    

{master:0}[edit interfaces ge-0/0/7 unit 0 family ethernet-switching]
juniper@SW02# show 
vlan {
    members labsys;
}

{master:0}[edit interfaces ge-0/0/7 unit 0 family ethernet-switching]
juniper@SW02# top 


@@@@@


show ethernet-switching interfaces 
set interfaces ge-0/0/18 unit 0 family ethernet-switching port-mode trunk vlan members all 
juniper@SW02> show vlans 
Name           Tag     Interfaces
default       
                       None
labsys         111    
                       ae0.0, ge-0/0/0.0*, ge-0/0/1.0*, ge-0/0/2.0*, ge-0/0/3.0, ge-0/0/6.0*, ge-0/0/7.0*, ge-0/0/8.0*, ge-0/0/9.0*, ge-0/0/10.0*,
                       ge-0/0/11.0*, ge-0/0/12.0*, ge-0/0/13.0, ge-0/0/14.0*, ge-0/0/15.0*, ge-0/0/16.0*, ge-0/0/17.0*, ge-0/0/18.0*, ge-0/0/19.0*,
                       ge-0/0/20.0*, ge-0/0/21.0*, ge-0/0/22.0, ge-0/0/23.0*
v.200          200    
                       ge-0/0/15.0*, ge-0/0/18.0*, ge-0/0/19.0*
					
set interfaces ge-0/0/5 unit 0 family ethernet-switching vlan members vlan126
set interfaces ge-0/0/6 unit 0 family ethernet-switching vlan members vlan126
set interfaces ge-0/0/16 unit 0 family ethernet-switching vlan members vlan126
set interfaces ge-0/0/7 unit 0 family ethernet-switching vlan members labsys
set interfaces ge-0/0/11 unit 0 family ethernet-switching vlan members vlan126

run show interfaces ge-0/0/14
set interfaces ge-0/0/15 mtu 9000 
show | compare


configure
juniper@SW02# show interfaces ge-0/0/22 
mtu 9000;
unit 0 {
    family ethernet-switching {
        port-mode trunk;
        vlan {
            members [ vlan126 v.200 ];
        }
        native-vlan-id 111;
    }
}

{master:0}[edit]
juniper@SW02# show interfaces ge-0/0/23    
mtu 9000;
unit 0 {
    family ethernet-switching {
        port-mode trunk;
        vlan {
            members all;
        }
    }
}



## Configure
configure

### Create vlan

set vlans provisioning-vlan vlan-id 127

### Configre vlan interface
set interfaces ge-0/0/4 unit 0 family ethernet-switching vlan members provisioning-vlan 
set interfaces ge-0/0/5 unit 0 family ethernet-switching vlan members provisioning-vlan 
set interfaces ge-0/0/6 unit 0 family ethernet-switching vlan members provisioning-vlan 
delete interfaces ge-0/0/4 unit 0 family ethernet-switching vlan members 111


set interfaces ge-0/0/28 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/28 unit 0 family ethernet-switching vlan members V126 
delete interfaces ge-0/0/28 unit 0 family ethernet-switching vlan members vlan111   
commit   

set interfaces ge-0/0/43 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/43 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/43 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/42 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/42 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/42 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/41 unit 0 family ethernet-switching port-mode access 
set interfaces ge-0/0/41 unit 0 family ethernet-switching port-mode access vlan members V111 

set interfaces ge-0/0/40 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/40 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/40 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/39 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/39 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/39 unit 0 family ethernet-switching vlan members V111


set interfaces ge-0/0/38 unit 0 family ethernet-switching port-mode access 
set interfaces ge-0/0/38 unit 0 family ethernet-switching port-mode access vlan members V111 

set interfaces ge-0/0/37 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/37 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/37 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/36 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/36 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/36 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/35 unit 0 family ethernet-switching port-mode access 
set interfaces ge-0/0/35 unit 0 family ethernet-switching port-mode access vlan members V111 

set interfaces ge-0/0/34 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/34 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/34 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/33 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/33 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/33 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/32 unit 0 family ethernet-switching port-mode access 
set interfaces ge-0/0/32 unit 0 family ethernet-switching port-mode access vlan members V111 

set interfaces ge-0/0/31 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/31 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/31 unit 0 family ethernet-switching vlan members V111

set interfaces ge-0/0/30 unit 0 family ethernet-switching port-mode trunk
set interfaces ge-0/0/30 unit 0 family ethernet-switching vlan members V126
set interfaces ge-0/0/30 unit 0 family ethernet-switching vlan members V111

delete interfaces ge-0/0/38 unit 0 family ethernet-switching vlan members 111   
delete interfaces ge-0/0/38 unit 0 family ethernet-switching vlan members 126   

show interfaces ge-0/0/41 unit 0 family ethernet-switching 
delete interfaces ge-0/0/41 unit 0 family ethernet-switching vlan members 111   
delete interfaces ge-0/0/41 unit 0 family ethernet-switching vlan members 126   
delete interfaces ge-0/0/44 unit 0 family ethernet-switching vlan members 111   
delete interfaces ge-0/0/44 unit 0 family ethernet-switching vlan members 126   
set interfaces ge-0/0/44 unit 0 family ethernet-switching port-mode access vlan members V111 
set interfaces ge-0/0/44 unit 0 family ethernet-switching port-mode access vlan members 111 