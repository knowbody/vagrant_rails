Development environment
===

## Ruby on Rails, PosgreSQL, Elasticsearch

Simple Vagrant/Docker setup.
All of the set up below has been build to use on MacOSX, but should work on any other OS.

### Set up:
- [Vagrant](https://www.vagrantup.com)
- [Docker](https://www.docker.com)
- [PostgreSQL](http://www.postgresql.org)
- [Elasticsearch](http://www.elasticsearch.org)

### To be installed:
First let's install everything we need.

- **[Homebrew](http://brew.sh):**
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- **[Cask](http://caskroom.io):**
```
brew install caskroom/cask/brew-cask
```
**Note:** if you are getting any errors, this:
```brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup```
should fix them. If not check [Cask's](http://caskroom.io) website.

- and **[Vagrant](https://www.vagrantup.com)** and **[VirtualBox](https://www.virtualbox.org):**
```
brew cask install virtualbox
brew cask install vagrant
```


---

### Get started:
Clone the repository:
```
git clone git@github.com:knowbody/vagrant_rails.git
```

Start the vagrant box:
```
vagrant up --provider=docker
```

And you are ready to rock&roll.


The status of the Docker containers can be seen with:
```
vagrant status
```

which should output something like:
```
Current machine states:

elasticsearch             running (docker)
db                        running (docker)
```



