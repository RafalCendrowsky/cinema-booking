#! /bin/sh

echo "Running tests..." && sleep 1

echo "----------------" && sleep 1

echo "Get screenings in specific time range" && sleep 2

curl -v -G "http://localhost:8080/screenings?startDate=2023-05-13T12:00:00&endDate=2023-05-13T17:00:00" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Check a particular screening" && sleep 2

curl -v -G "http://localhost:8080/screenings/88" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Book the screening" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski", "seats" : [{ "row" : 1, "seat" : 1 }]}' \
  "http://localhost:8080/screenings/88/book" | json_pp && sleep 2

echo "Unfortunately, the screening has already started, so we cannot book it" && sleep 2

echo "----------------" && sleep 1

echo "There's a singular screening in the database which we can be sure has not yet started" && sleep 2

curl -v -G "http://localhost:8080/screenings?startDate=2122-05-13T12:00:00&endDate=2124-05-13T23:00:00" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Book the screening" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski", "seats" : [{ "row" : 1, "seat" : 1, "type": "student" }]}' \
  "http://localhost:8080/screenings/101/book" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Let's check the available seats for the screening" && sleep 2

curl -v -G "http://localhost:8080/screenings/101" | json_pp && sleep 2

echo "Row 1 seat 1 is now taken" && sleep 2

echo "----------------" && sleep 1

echo "Let's try to book the same seat again" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski", "seats" : [{ "row" : 1, "seat" : 1, "type": "student" }]}' \
  "http://localhost:8080/screenings/101/book" | json_pp && sleep 2


echo "----------------" && sleep 1

echo "Let's try to book a seat that doesn't exist" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski", "seats" : [{ "row" : 1, "seat" : 12, "type": "student" }]}' \
  "http://localhost:8080/screenings/101/book" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Let's try to book without a seat" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski", "seats" : []}' \
  "http://localhost:8080/screenings/101/book" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Let's try to book with a hyphenated name" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski-Cendrowski", "seats" : [{ "row" : 1, "seat" : 2, "type": "student" }]}' \
  "http://localhost:8080/screenings/101/book" | json_pp && sleep 2

echo "----------------" && sleep 1

echo "Let's try to book leaving a gap between seats" && sleep 2

curl -v -H "Content-Type: application/json" -d \
  '{"name": "Rafał", "surname": "Cendrowski", "seats" : [{ "row" : 1, "seat" : 2, "type": "student" }, { "row" : 1, "seat" : 4, "type": "student" }]}' \
  "http://localhost:8080/screenings/101/book" | json_pp && sleep 2

echo "----------------" && sleep 1