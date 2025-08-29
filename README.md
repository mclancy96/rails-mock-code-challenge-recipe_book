
# Évaluation Rails

Il est temps de mettre à l'épreuve nos connaissances sur Rails.

## Objectifs

+ MVC
+ REST
+ Cycle Requête/Réponse
+ Formulaire/Aides de formulaire
+ ActiveRecord
+ Validations
+ Restez calme, concentrez-vous et codez

## Installation

Avant de commencer, fork et clonez ce dépôt, exécutez `bundle install`, `bin/rails db:migrate` et `bin/rails db:seed` pour commencer.

## Le Domaine

Les Power Ninjas ont demandé votre aide ! Ici chez BT, nous avons tendance à créer beaucoup de recettes. Surtout des recettes... NOUS AIMONS LES RECETTES.

![chef stove](./chef_stove.png)

Visiter `/recipes` affichera toutes les recettes. Visiter `/chefs` affichera tous les chefs de nos recettes. Les modèles, vues et contrôleurs pour les ressources recipes et chefs existent déjà. Le problème est que nous n'avons pas de moyen d'associer toutes les recettes à leurs chefs. **Les chefs peuvent créer de nombreuses recettes différentes et les recettes peuvent être créées par de nombreux chefs différents.**

## Instructions / Livrables

![img](https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3MGt6anU3OWE0YXBjdTNxcWg0M3p1cDcyNGh1eXE2ZGp3cjgwcTl0MCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/Q5QWDBxSlrMME/giphy.gif)

***Pour vous aider à accomplir cette tâche, nous détaillons ci-dessous les étapes requises. Parcourez-les attentivement pour comprendre les exigences de ce défi de code, puis attaquez-les une par une.***

1. Sur la page d'index des chefs, cliquer sur le nom d'un chef doit nous amener à la vue show de ce chef.
2. Sur la page d'index des recettes, cliquer sur le nom d'une recette doit nous amener à la vue show de cette recette.
3. Créez la table de jointure `chef_recipe` et associez les chefs et les recettes. (Il peut être utile d'utiliser votre `bin/rails console` pour créer quelques enregistrements de jointure après la mise en place du schéma de la base de données.)
4. Sur la vue show d'une recette, incluez le nom de la recette et une liste de tous les chefs qui ont créé cette recette.
5. Sur cette vue show, cliquer sur un chef doit vous amener à la vue show de ce chef.
6. La vue show du chef doit lister toutes les recettes qu'il a créées.
7. Sur la vue show du chef, il doit y avoir un formulaire qui nous permettra d'associer la recette à un chef.
8. Le formulaire d'association `chef_recipe` permettra de :

   + Sélectionner une recette dans une liste déroulante.
   + Laisser un commentaire.

9. Assurez-vous qu'un utilisateur ne peut pas créer un `chef_recipe` sans commentaire et sans recette.
10. Après avoir soumis ce formulaire, nous devrions rester sur la même vue, mais cette fois nous devrions pouvoir voir la recette avec son commentaire.

### Astuces / Conseils

![img](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExczZydmhtc3dkZ2FvaHI4c2Zwa2F2emR6a3dmdm9ldjhrMDZqbDhwayZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3o85xnoIXebk3xYx4Q/giphy.gif)

+ N'oubliez pas que nous voulons être RESTful. Quelle URL doit afficher les informations sur un chef particulier ? Quelle URL doit créer l'association chef_recipe ? Quelles actions de contrôleur sont associées ?
+ Lors de la création de l'association chef_recipe, pensez aux différentes manières dont [Rails nous permet de définir des associations entre modèles](http://guides.rubyonrails.org/association_basics.html)
+ Lisez cette documentation si vous avez un peu de mal à comprendre comment faire la [liste déroulante](http://guides.rubyonrails.org/form_helpers.html#making-select-boxes-with-ease)
+ Rappelez-vous aussi que [les validations sont très importantes](http://guides.rubyonrails.org/active_record_validations.html)

## Soumission

![img](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExdjlmOWl0em1ibHp6ZnFwdmVncWJ4N3F4Z2xpZXp1OGRyczdpMG00aSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xT0CyMXdR1JaKIZkre/giphy.gif)
