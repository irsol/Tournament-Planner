-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- Delete previous tournament database if it exists.
drop database if exists tournament; 

create database tournament;

-- Connect to new created database.
\c tournament;

-- Tables

-- List of players with unique id and name.
create table players (
	id serial primary key, 
	name text
);

--List of matches identified who won and who lost.
create table matches (
	id serial primary key, 
	winner int references players (id), 
	loser int references players (id)
);

-- List of losers with number of loses and list of winners with number of wins.
create view losers as 
	select players.id, count(loser) as loses
    from players
    left join matches on matches.loser = players.id
    group by players.id;

create view winners as 
	select players.id, count(winner) as wins
    from players
    left join matches on matches.winner = players.id
    group by players.id;