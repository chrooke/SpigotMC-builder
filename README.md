# SpigotMC-builder

A simple mechanism for building the latest SpigotMC jar file using a Docker container.

## Usage
1) Install Docker and Docker Compose if you don't have them already.
2) Run the command `docker-compose up`.
3) After a few minutes the build should finish and the resulting jar file should be in the `build-output` directory.

## Future Enhancements
- Pass the version in as an environment variable to permit choosing a version.
- Make a user-friendly script with arguments so people don't have to remmember `docker-compose up` and maybe setting an environment variable first.
