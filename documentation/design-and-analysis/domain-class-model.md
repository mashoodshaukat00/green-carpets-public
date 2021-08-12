::: mermaid
erDiagram
          BaseCompany ||--|{ BRANCH : has
          BaseCompany ||--|{BUYERS : has
          BaseCompany ||--|{SUPPLIER : has
          BRANCH ||--|| INVENTORY : manages
          BaseCompany ||--|{ EMPLOYEE : has
          EMPLOYEE ||..|| BRANCH : "works in"
          INVENTORY }|--|{ PRODUCT : contains
          SUPPLIER ||--|{ PRODUCT : supplies               
          BaseCompany ||--o{ SUBSCRIPTION : offers
          SUBSCRIPTION }|--|{ SERVICE : contains          
          CUSTOMER ||--|{ ORDER : places          
          ORDER ||..|{ INVOICE : "transforms into"
          ORDER ||--|{ PRODUCT : contains
          ORDER ||--o| OrderDeliveryStatus : has          
          INVOICE ||--|{ CREDITOR : has
          INVOICE ||--|{ DEBITOR : has       
          SUBSCRIBER ||--|{ SUBSCRIPTION  : has          
          SUBSCRIBER |o--|| CUSTOMER : "is a"  
:::