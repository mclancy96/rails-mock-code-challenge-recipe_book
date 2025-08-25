# Rails Assessment

It's time to put our Rails know-how to the test.

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, focus and code

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain


The Power Ninjas have requested your help! Here at BT we tend to create lots of recipes. Especially recipes... WE LOVE RECIPES.

![img](https://media.giphy.com/media/HGe4zsOVo7Jvy/giphy.gif)

Visiting `/recipes` will list all of the recipes. Visiting `/chefs` will list all of our recipe's chefs. The Models, Views and Controllers for the recipes and chefs resources already exist. The problem is that we don't have a way to associate all the recipes with their chefs. **Chefs can create many different recipes and recipes can be created by many different chefs.**

## Instructions / Deliverables

***To help complete this task we spell out the required steps below. Look through them carefully to get a sense of the requirements of this code challenge, then tackle them one by one.***

1. On the chefs index page, clicking on a chef's name should take us to the chef's show view.
2. On the recipes index page, clicking on a recipe's name should take us to the recipe's show view.
3. Create the `chef_recipe` join table and associate chefs and recipes. (It may be helpful to use your `bin/rails console` to create some join records after database schema is set up.)
4. On the recipe show view, include the recipe's name and have a list of all the chefs that created this recipe.
5. On this show view, clicking on a chef should take you to that chef's show view.
6. The chef's show view should list all the recipes they created.
7. On the chef's show view there should be a form that will allow us to associate the recipe with a chef.
8. The `chef_recipe` association form will allow us to:

* Select a recipe from a dropdown.
* Leave a comment.

9. Make sure a user cannot create a `chef_recipe` without a comment & a recipe.
10. After submitting this form, we should end up in the same view we were just on, but this time we should be able to see the recipe along with its comment.

### Hints / Tips

+ Remember we want to be RESTful. What URL should show info about a particular chef? What URL should create the chef_recipe association? What controller actions are associated?
+ When creating the chef_recipe association think about the various ways [Rails allows us to define associations between models](http://guides.rubyonrails.org/association_basics.html)
+ Read through this documentation if your having a bit of trouble figuring out how to make the [dropdown](http://guides.rubyonrails.org/form_helpers.html#making-select-boxes-with-ease)
+ Also remember that [Validations are very important](http://guides.rubyonrails.org/active_record_validations.html)

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
2. `git add` and `git commit` your changes.
3. From you custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
4. Send the patch file to your instructor on Connect before the specified time. Remember, you can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
