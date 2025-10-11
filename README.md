# World Cup Database Project

Relational Database project for freeCodeCamp certification.

## Project Description

A PostgreSQL database containing historical data from the 2014 and 2018 FIFA World Cup tournaments. The project includes automated scripts for data insertion and statistical queries.

## Database Structure

### Tables

**teams**
- `team_id` (SERIAL PRIMARY KEY)
- `name` (VARCHAR(50) UNIQUE NOT NULL)

**games**
- `game_id` (SERIAL PRIMARY KEY)
- `year` (INT NOT NULL)
- `round` (VARCHAR(50) NOT NULL)
- `winner_id` (INT FOREIGN KEY -> teams.team_id)
- `opponent_id` (INT FOREIGN KEY -> teams.team_id)
- `winner_goals` (INT NOT NULL)
- `opponent_goals` (INT NOT NULL)

## Files

- `insert_data.sh` - Bash script to populate database from CSV
- `queries.sh` - Bash script with statistical queries
- `worldcup.sql` - PostgreSQL database dump
- `games.csv` - Source data file

## Technologies

- PostgreSQL 12
- Bash scripting
- Docker (Dev Container)

## Certification

Part of the Relational Database certification from freeCodeCamp
