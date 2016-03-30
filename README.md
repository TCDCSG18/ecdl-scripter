# ECDL Scripter
A web based test scripting application


## Prerequisites

### RVM
System ruby will only lead to pain and turmoil. We're going to need a version of ruby that's controlled by version manager. Let's use RVM:

Ubuntu
```bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
```
OS X
```bash
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled
```

### Ruby
We've specified 2.2.2 for this project so install that:
```bash
rvm install 2.2.2
```
Then let's tell rvm to use it:
```bash
rvm use 2.2.2
```
If the result of the following command contains `rvm/rubies` as opposed to `/usr/bin` then you're good to move on:
```bash
which ruby
```

### Bundler
We need bundler for gem sandboxing, let's get that globally:
```bash
gem install bundler
```
On Ubuntu you may also need to install `libgmp-dev` if you haven't already:
```bash
sudo apt-get install libgmp-dev
```

### JS Runtime
Node is nice and can be used for many nice things. We'll use NVM, because system node is also the spawn of satan.
```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
```

Now let's install and use 5.0
```bash
exec $SHELL
nvm install 5.0
nvm use 5.0
```
If the result of the following command contains `.nvm` as opposed to `/usr/bin` then you're good to move on:
```bash
which node
```

### [Paperclip Dependencies](https://github.com/thoughtbot/paperclip#requirements)
We use paperclip for image processing so we will need to install their dependencies, the main thing we need is ImageMagick.

Ubuntu
```bash
sudo apt-get install imagemagick -y
```
OS X w/ [homebrew](https://github.com/Homebrew/homebrew)
```bash
brew install imagemagick
```



## Build
Clone the repo:
```bash
git clone https://github.com/TCDCSG18/ecdl-scripter
```
Hop into the directory:
```bash
cd ecdl-scripter
```
Install the required gems:
```bash
bundle install
```
Build the database:
```bash
bundle exec rake db:migrate
```

## Running the server
Run:
```bash
bundle exec rails s
```
Then navigate to [localhost:3000](localhost:3000)

## Adding an admin account
An admin account can be added through the rails console:
```bash
bundle exec rails c
```
From there you can specify the email and password:
```bash
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
```
