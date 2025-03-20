## 1. Les données 

Les données que l'on veut stocker : 

1. ID, sur 10 caractères => X(10)
2. email, sur 50 caractères => X(50)
3. numéro de télépone, 15 catactères (suffisant pour les numéros internationaux) => X(15)
4. date d'inscription formation ISO 8601 ```AAAA-MM-JJTHH:MM:SS-/+FF``` sur 22 caractères => X(22) exemple "2025-03-20T14:31:24+01"
    - AAAA : Année sur 4 chiffres.
    - MM : Mois sur 2 chiffres.
    - JJ : Jour sur 2 chiffres.
    - T : Séparateur entre la date et l'heure, 1 chiffre
    - HH : Heures sur 2 chiffres (format 24 heures).
    - MM : Minutes sur 2 chiffres.
    - SS : représente les secondes (par exemple : 49) sur 2 chiffres
    - -/+ représente le fuseau horaire, où « + » permet d'indiquer un fuseau en avance sur UTC et « - » permet d'indiquer un fuseau en retard sur UTC : 1 chiffre
    - FF : représente le nombre d'heures d'avance ou de retard sur le fuseau horaire UTC : 2 chiffres


=> Une ligne / record = 93 caractères


##  2. Creation du data set USERINFO sur ISPF

=> Menu ISPF > 3 (Utilities) > 2 (Data set)
- Data set name : 'Z67082.USERINFO'
- Option ==> a 
- Press enter

<img src="5_string_date/2025-03-20-14.33.50.png"/>

Via VSCode Zowe : 

Remplir les données avec ça : 
```
1         dimitri@gmail.com                                 +33612345678   2025-03-20T14:31:24+01
2         user2@example.com                                 +33712345678   2025-03-21T15:32:25+02
3         user3@example.com                                 +33812345678   2025-03-22T16:33:26+03
4         user4@example.com                                 +33912345678   2025-03-23T17:34:27+04
5         user5@example.com                                 +33012345678   2025-03-24T18:35:28+05
6         user6@example.com                                 +33112345678   2025-03-25T19:36:29+06
7         user7@example.com                                 +33212345678   2025-03-26T20:37:30+07
8         user8@example.com                                 +33312345678   2025-03-27T21:38:31+08
9         user9@example.com                                 +33412345678   2025-03-28T22:39:32+09
```



