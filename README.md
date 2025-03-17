 ## Programmes pour apprendre le COBOL :

 <a href="https://quizlet.com/user/dleurs/folders/info-banque">Carte de mémorisation Quizlet ici</a>

1. Helloworld 
2. Faire des dépots et tenter de faire des retraits sur un compte bancaire **(variable / if)**
3. Calculer les mensualités d'un prêt immobilité **(for loop / opération + complexe)**
4. Évaluer le risque de fraude d'un client / KYC **(group item / tableau / trie)**
5. Valider les emails, les numéros de téléphones et la date de naissance **(traitement sur les strings et dates, gestion des erreurs)**
6. Todo app **(listing, recherche, enregistrement sur fichier, interactivité)**


## Installation des outils : 

```
brew install gnu-cobol
```
Pour certains programme, il est nécessaire d'utiliser VSCode et d'avoir accès à un mainframe X 
- IMB Z Open Editor
- Zowe Explorer
- Code4z

## Pour executer un programme
```
cobc -x calcul_pret_immo.cbl && ./calcul_pret_immo
```