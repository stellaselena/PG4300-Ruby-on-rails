# README

# Fitness Tech
### Git repository: https://github.com/stellaselena/PG4300-Ruby-on-rails.git
We used git to keep ourselves organized and we divided tasks equally throughout the group. We chose to create a branch for each of the main tasks and merge it after everything was working. 
### Heroku: http://fitnesstech.herokuapp.com/
### Instructions: 
```sh
Docker-compose build
Docker-compose up
Open new terminal, go to project: 
Docker-compose run web rake db:create
Close project, run docker-compose up again
```
### Login: 
### Description: 
The application has focus on physical fitness and includes core features such as Diet information, Supplement guide, Exercise guide and more.  
-	Main page consists of links to other functionalities. The application has a navigation menu, making it easier for the user to navigate through the website. We also tried to make the application as responsive as possible, allowing it to be mobile friendly.
-	Workout section:
-	 Exercise page showing different exercises with images and steps. Admin can add, edit and delete exercises.  
-	Workout log (Child, 2014) gives an ability for users to create a workout log, they can log their workouts and exercises, Users can view their log, add, edit and delete logs. 
-	Nutrition section:
-	Diet guide, with information and tips on which food types to include in your diet and what to avoid (Static Page). 
-	 Recipes page.  (Static Page)
-	Calorie Calculator page has an input form that calculates TDEE (Total Daily Energy Expenditure).
-	Supplements Section:
-	Supplement guide page (Static Page)
-	Forum: Allows users to post questions regarding fitness, where other users can comment on their posts. Registered user can edit and delete his posts. 
-	Store: Allows users to buy products such as supplements and protein powder.
-	Contact us page, showing contact information.
### Gems used: 
-	Bootstrap-sass – A Sass-powered version of Bootstrap 3
-	Sass-rails – Integration for Ruby on Rails projects with the Sass stylesheet language
-	Bcrypt – Keep user’s passwords secure
-	Haml –Used to cleanly and simply describe the HTML without the use of inline code
-	Simple form – Convenient way to generate forms with many options to customize them 
-	Paperclip – File attachment library
-	Cocoon – Easier way to handle nested forms 
-	Devise – Flexible authentication solution based on Warden
- Railties - manages the rails command line interface
- Rails-controller-testing - Make tests pass
### References
Child, M. (2014, 10 27). Youtube. Retrieved from How To Build A Workout Log In Rails 4:
https://www.youtube.com/watch?v=2_Lbj3slZUY

