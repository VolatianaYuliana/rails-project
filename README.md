This web application allows a patient who arrives at a clinic select which treatment they want to receive. 

It also permits admin to provide translations (into French or Malagasy) of the treatment names.

**Framework used**: Ruby on Rails

**Database**: sqlite3

## Install
- Ruby [2.5.1]
- Rails [4.2.10]  

and then enter the project directory

```
cd mtomady_coding_challenge
```

And run the following commands to install the dependencies:
```
bundle install
```

## Initialize the database

```
rails db:create db:migrate 
```
## Seed the initial data

I have already added treatments in the **/db/seeds.rb** file with the treaments list you provided but if you want to seed it with your own initial data, do the following steps:
* add your initial data in the **/db/seeds.rb** file.
* run the command:
```
rake database:repopulate
```

## How to repopulate the list of treatments periodically?
Add the data in the **/db/seeds.rb**.

I created a cron that repopulates the database monthly.
But if you want to modify the period according to your need, modify the file **/config/schedule.rb**.

## How admin can provide the translations for the treatments?

Visit the URL http://localhost:4001/admin and log in to provide translations of the treatments using the following credentials:
- login: admin
- password: admin


Treatments translated will be diplayed according to the user browser language, but if no translation was provided, the treatment will be displayed with english as a default value.

