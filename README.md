# Tournament Planner

A Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

The game tournament will use the Swiss system for pairing up players in each round: players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible.

### Prerequisites

This projects requires Vagrant virtual machine and cloned **fullstack-nanodegree-vm** repository, which comes with _Python 2.7_, _psycopg2_ and _PostgreSQL_ pre-installed.

### Project structure

Inside the tournament directory in Vagrant VM in folder `/vagrant/tournament` you'll find the following files:

* tournament.py 
* tournament.sql
* tournament_test.sql
* README.md

### Usage

1. First we need to start Vagrant and connect to the VM by using following commands:

```bash
vagrant up
vagrant ssh
```

2. Open a folder the project:

`cd /vagrant/tournament/`

3. Create a database and all necessary tables:

`psql -f tournament.sql`

4. Execute unit tests:

`python tournament_test.py`

Successful execution will be folled by **Success!  All tests pass!** message.