# Cinema Booking Service

## Running the application

### Prerequisites

Before running the application, make sure you have docker and docker-compose installed on your machine.

### Run script

To run the application, simply run the `run.sh` script in the root directory of the project. This will build the docker
images and run the application.
Make sure the script has execution rights by running `chmod +x run.sh` in the root directory of the project, and also
make sure that
the current user has the
required permissions to run docker commands.

### Accessing the application

The application will be available at `http://localhost:8080`. The Database will be available at `http://localhost:5432`.

### Test script

To run the tests, simply run the `test.sh` script in the root directory of the project with the application running.
Make sure the script has execution rights by running `chmod +x test.sh` in the root directory of the project. The script
will not behave the same on rerun, as data is persisted to the database. To run the tests on a clean database
remove the `postgres-data` directory in the root directory and run either 'run.sh' or docker-compose up.