Used [PlantUML](http://www.plantuml.com/) to build this.



you can go to this link to  [PlantUML]([Click Here](http://www.plantuml.com/plantuml/uml/XPHFRzD04CNl_XIhNZXLzV_45zGI942YAYgK-s9Fd1Msrypk1aM8xyx6YhqpgIKkqVlDFByPZwNS6olHkhwBEjXRORL0rHwiQ1H2RPKU8bbRZU9cvupLFU2Da4RKPYv_LqPvCLMFQYa_DBqQfgBqQWbvb8DiBnbzYtFvgnj7ZLRuNVRxgMdS69qNa4FRWVY00CDEuWZM_8c4S0PgQS0_gDh1ZTCJBxk4TZxhLWrt_bSxU-cdeJzl8hwWtgiEBevinV5a3u3YnG2-CLVsdDhVkTEvtRZQcak_O7tKlmrSMqfgsHsW_XdstQpjAqyz35OyWZtePaxPKkSpjCfOGF4Hkb4W_79WbddLIkQQBubNZ9-6ev-jyJIRaXNJ3-dV0Hl09IfTEOEFqgg6nSCk_mrzXdXY8VbhGmETEWAga5Aix7F-SkRkeVR3pDspxeAxN77peMjVuFshgLVN7pM6CrRH_ruzZQFeRrGRSNlxrcCIP1fa5cGHP1da9iXja1N9pOac6NxyKIqDeakYgwXlSTagw8peakWaff1GI2ba578A1GKsFewC6sSWEYCw9xeaEeafP1Ho2WM5Ye2VFlsVpSWeOvGpAXYLZ3QCjemgHadCCU6OSimuvXmBZYN73SSjHxwLFyez38thkty0)) view
```
@startuml
left to right direction
actor "Customer" as cs
actor "Visitor" as vis
actor "Admin" as admin
actor "Manager" as mgr
actor "Support staff" as sup
rectangle GreenCarpets{
  usecase "Signup" as UC1
  usecase "Login/Logout for Food" as UC2
  usecase "Manage Profile" as UC3
  usecase "Manage Other User's Profile" as UC4
  usecase "Buy Products" as UC5
  usecase "Browse Products" as UC6
  usecase "Checkout" as UC7
  usecase "Manage Payment Methods" as UC8
  usecase "Register Help requests" as UC9
  usecase "Manager Help requests" as UC10
  usecase "Manage Inventory" as UC11
  usecase "Manage backorders" as UC12
  usecase "Browse Invoices" as UC13
  usecase "Track Orders" as UC14
  usecase "Track deliveries" as UC15
  usecase "Manage Users/Access/Roles" as UC16
  usecase "Manage Orders" as UC17
  usecase "Manage Deliveries" as UC18
  usecase "Reports" as UC19
 usecase "Browse Invoices" as UC20

}
cs --> UC1
cs --> UC2
cs --> UC3
cs --> UC5
cs --> UC6
cs --> UC7
cs --> UC8
cs --> UC9
cs --> UC14
cs --> UC15
cs --> UC20
vis --> UC1
vis --> UC6
vis --> UC9
mgr --> UC2
mgr --> UC3
mgr --> UC6
mgr --> UC10
mgr --> UC11
mgr --> UC12
mgr --> UC13
mgr --> UC14
mgr --> UC15
mgr --> UC19
mgr --> UC20
sup --> UC2
sup --> UC3
sup --> UC4
sup --> UC6
sup --> UC10
sup --> UC13
sup --> UC14
sup --> UC15
sup --> UC19
sup --> UC20
admin --> UC2
admin --> UC3
admin --> UC4
admin --> UC5
admin --> UC6
admin --> UC7
admin --> UC8
admin --> UC9
admin --> UC10
admin --> UC11
admin --> UC12
admin --> UC13
admin --> UC14
admin --> UC15
admin --> UC16
admin --> UC17
admin --> UC18
admin --> UC19
admin --> UC20
@enduml
```

