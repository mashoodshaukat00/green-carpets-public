# green-carpets
* We offer new and used carpet leasing services to our customers through different subscriptions.
* We take care off every thing from  maintianing ,cleaning and replacment of carpets.
* When the carpets deteriorate they are sold to manufacturing industry to recycle and reproduce new products.
* None of our products are used for landfilling.

Read More about diagrams : [Mermaid](https://mermaid-js.github.io/mermaid/#/n00b-gettingStarted)

![gant-chart](documentation/images/gant-chart.png)

https://mermaid-js.github.io/mermaid-live-editor

```markdown
gantt
    title Timeline : GreenCarpets
    dateFormat  YYYY-MM-DD
    section D&A
    Design :a1, 2021-08-01, 7d
    Analysis :after a1  , 7d
    section Develop-1
    Database      :d1,2021-08-15  , 3d
    DAL     :d2, after d1, 2days
    Identify UI : after d2, 2d
    section Develop-2
    Wireframes : w1 , 2021-08-22 ,7d
    section Develop -3
    Rest API : ap1,2021-08-29, 2d
    FrontEnd-1: after ap1, 5d
    section Develop -4
    FrontEnd-2: fe1, 2021-09-05,7d
    section DevOps -5
    CI/CD : cid, 2021-09-12,2d
    Pipeline: after cid, 5d
    section Demo
    Show1: p1,2021-09-19,1d
    Fix Issues :fi1,after p1, 3d 
    Show2: s2,after fi1, 1d
    Fix Issues : fi2, after s2, 2d
    Show3 : after fi2, 2d

            
```

![schedule](documentation/images/schedule.png)

```
  journey
    title Schedule
    section Start Work
      Make tea: 7: Mashood,Shoaib 
      Job Search: 7: Mashood
    section NAV
      Participate: 3: Mashood
    section GreenCarpets
    Follow project-board: 6 : Mashood,Shoaib 
    Standup: 6 : Mashood,Shoaib 
    Implementation: 5 : Mashood,Shoaib 
    Lunch : 6 : Mashood,Shoaib 
    Implementation-2 : 5 : Mashood,Shoaib 
    Off: 7.5 : Mashood,Shoaib 
      
```

![routine-pie](documentation/images/routine-pie.png)

```
pie title Daily Routine
    "Job Search" : 1
    "Development" : 5
    "Break" : 0.45
    "Research" : 1.15
            
```

![state-diagram](documentation/images/state-diagram.png)



```
stateDiagram-v2
    [*] --> Awake    
    Awake --> Searchjob
    Awake -->[*]
    Searchjob --> Developement
    Developement --> Searchjob
    Searchjob --> Exhaust
    Developement --> Exhaust    
    Exhaust --> [*]

            
```

