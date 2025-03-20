## 1. Les données 

Les données que l'on veut stocker : 

1. ID, sur 10 caractères => X(10)
2. email, sur 50 caractères => X(50)
3. numéro de télépone, 15 catactères (suffisant pour les numéros internationaux) => X(15)
4. date d'inscription formation ISO 8601 ```AAAA-MM-JJTHH:MM:SS-/+FF``` sur 18 caractères => X(18)
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

