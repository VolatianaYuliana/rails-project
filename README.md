This web application allows a patient who arrives at a clinic select which treatment they want to receive. 

It also permits admin to provide translations (into French or Malagasy) of the treatment names.

**Framework used**: Ruby on Rails

**Database**: sqlite3

## Prerequisites
The following tools need to be installed:
- Ruby [2.5.1]
- Rails [4.2.10]  

## Clone this repository
```
git clone https://github.com/VolatianaYuliana/rails-project
```
and then enter the project directory

```
cd rails-project
```

And run the following commands to install the dependencies:
```
bundle install
```

## Initialize the database

```
rake db:create db:migrate 
```
## Seed the initial data

I have already added treatments in the **/db/seeds.rb** file with the treaments list you provided.
Run the following command to seed the databasa with those treatments:
```
rake db:seed
```
But if you want to seed it with your own initial data, do the following steps:
* add your initial data in the **/db/seeds.rb** file.
* run the command:
```
rake database:repopulate
```

## Start the Rails server
You can start the rails server using the following command:
```
rails s -p 4001
```
And now you can visit the site with the URL http://localhost:4001

## How to repopulate the list of treatments periodically?
Add the data in the **/db/seeds.rb**.

I created a cron that repopulates the database monthly.
If you want to modify the period according to your need, modify the file **/config/schedule.rb**.

## How admin can provide the translations for the treatments?

Visit the URL http://localhost:4001/admin and log in to provide translations of the treatments using the following credentials:
- login: admin
- password: admin


Treatments translated will be diplayed according to the user browser language. If no translation was provided, the treatment will be displayed with english as a default value.

