# Musik


### Set the following keys in your config/application.yml

(Set it using `bundle exec figaro install`) (and if that fails, you need to `rbenv rehash`)

```
stripe_api_key:
stripe_publishable_key:
GMAIL_USERNAME_DEV:
GMAIL_PASSWORD_DEV:
ADMIN_RECIPIENT_EMAIL:
```
MAKE SURE YOUR APPLICATION YML NEVER EVER EVER GETS PUSHED TO GIT HUB. BAHLEET IT AFTER YOU SET THESE TO TEST YOUR STUFF ON YOUR LOCAL MACHINE, BUT BEFORE YOU COMMIT TO GIT HUB. THE PERSON WHO HAS HEROKU ACCESS WILL HAVE TO PUSH THEM INTO HEROKU FOR YOU.
