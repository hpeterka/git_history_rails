# Git History Rails

A simple and straightforward tool to visualize a git log in your rails application

## Homepage

This project is hosted at:

http://github.com/jan-vitek/git_history_rails

## Installation

Add the gem to your Gemfile and run ```bundle install```

    gem git_history_rails

## Configuration

You can specify the route to the history page in ```config/application.rb```, default value if no configuration is given is ```/git_history```.

    config.git_history_rails = {mounted_path: "/my_route_to_git_history"}

## Usage

Visit ```http://my_application.com/git_history``` to see all your commits.