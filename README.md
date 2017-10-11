<p align="center">
  <b> Fine-and-You </b> <br>
  <em>An app to promote mindfulness and track emotions</em> <br>
  <img src="https://media.giphy.com/media/3ohhwyETMMHl125DfG/giphy.gif">

</p>


At my first job out of college I worked at a rehab that focused on Dialectical Behavior Therapy
(DBT), a treatment that encourages people to be mindful of their emotions. To help followers of
DBT track how their emotions shift, I created an app that will text you every day, wait for a
numeric response, and graph these daily “feels” in a simple, elegant line graph.

# Features: 
You can sign up for daily reminders by clicking this button: <br> 
![Button to register for the service](https://i.imgur.com/O3i8nkx.png) <br>
Your input will be displayed on a simple line graph: <br>
![Line graph](https://i.imgur.com/2ur08Tb.png)

# Challenges: 

This was my first time creating a background job. I knew that I wanted to create a Cron Job so I did thorough research on the Whenever, Rufus-Scheduler, and Delayed Jobs gems before deciding to use the scheduler add-on through Heroku after deployment.  
# Tech Stack: 
* Ruby
* Sinatra
* AJAX
* HTML
* BCrypt
* jQuery 
* CSS 
* APIs from Twillio and Google Visualization
* Deployed to Heroku with the Heroku Scheduler add-on


# See it live:
[Try it for yourself](https://still-garden-27475.herokuapp.com/)


