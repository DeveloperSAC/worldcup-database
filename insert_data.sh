#!/bin/bash
# Comando para conectarse a la base de datos
PSQL="psql --username=freecodecamp --dbname=worldcup -h localhost -t --no-align -c"

# Insertar equipos únicos en la tabla teams
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    # Insertar equipo ganador si no existe
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER') ON CONFLICT DO NOTHING")"
    # Insertar equipo oponente si no existe
    echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT') ON CONFLICT DO NOTHING")"
  fi
done

# Insertar partidos en la tabla games
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    # Obtener team_id del ganador
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # Obtener team_id del oponente
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # Insertar partido
    echo "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
  fi
done
