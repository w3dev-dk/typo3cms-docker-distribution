# typo3cms-docker-distribution

## First time setup instructions

Clone GIT project and `cd` to the root project folder.

```
git clone git@github.com:w3dev-dk/typo3cms-docker-distribution.git
cd typo3cms-docker-distribution
```

Copy `_.env` to `.env` and ajust to your preferences.

Run `docker-compose up -d`. This command might take some time at first run. It will have to download all the images to
disk. Next time your run the command it will go a lot faster.

When done you can visit [localhost:8080](http://localhost:8080) to test if the MariaDB instance and PhpMyAdmin works.

Next you should run `docker-compose exec php-fpm bash` to login to the php-fpm container. In here you should run 
`composer install` (not *update*). Composer will now fetch all TYPO3 CMS dependencies according to our composer.json 
file.

Before you can take TYPO3 CMS in use you need to make a initialize setup by running, within the container, 
`./vender/bin/typo3cms install:setup`. It will prompt you for database username, password etc. Follow the guide and use
the information as defined in `.env` file.

When finish visit [localhost/typo3/](http://localhost/typo3/) in a web browser to login to TYPO3 CMS with the user you
defined in the initialize install:setup process.