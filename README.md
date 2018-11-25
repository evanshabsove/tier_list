# README

Hello Everyone!

Welcome to our sample application. We use this to test how you would work on a real rails application and to see your workflow and code.

First to explain the app, this app allows users to create lists of items. Other users can then vote on these items and it lists them from "S rank" (the highest) to "F-Rank" the lowest.
The app contains three simple models List, Item, and Vote, and each model has a coresponding controller with a couple routes on each. The app uses two pages which are views/lists/home.html.erb and views/lists/show.html.erb

(Insert screen shot of homepage here)
This is a picture of the homepage. Users can either click on a list, or enter a new list. If the user does either of these actions they are then redirected to the lists show page

(Insert screen shot of lists show here)
Here a user can view the already submitted items, vote on a submitted item, or create a new item. All of these actions will redirect the user back to the same page.

This app uses postgresql, so make sure that is installed. To get the app running locally simply run

bundle install
rails db:create
rails db:migrate
rails db:seed

If you have any problems feel free to reach out.

Test Material

Here is a list of things we will be looking at, like most assignments we think it's better to be clear about expectations.

1. How you use git, specifically commit messages and use of branches.
2. Cleanliness of code
3. Variable names
4. If the code works
5. Use of relevant gems to speed up any tasks (please use gems if applicable)
6. If the task is marked "backend" you don't have to worry too much about styling. Just use some very bassic css.
7. If the task is marked "frontend" please add some stylistic flair to the task.

Things we will not be looking at

1. Time it takes to complete a task. Please don't rush or stress yourself out. Take as much time as needed. We would rather see your best work then rushed work.

Now time for the tasks we would like, please complete ONE of the following three tasks.

1. Add a user model and allow them to sign up/log in. Give users the ability to view all lists they have created. (backend)
2. Currently you can only create and read lists and items. Create update and destroy routes for both lists and items and link it up to the front end. (All users can edit and destroy lists please don't add a user model) (backend)
3. Create a search route which allows users to search through the list of created lists. Please also restyle the homepage, no need to worry about the lists show page. (frontend)

Thanks and feel free to reach out! This project evolves with feedback so please ask questions and tell us where we could be more clear.
