# Project Name

This project provides a set of commands to simplify common development tasks. It utilizes Docker and Ruby to create and manage Ruby on Rails projects. The root folder contains the `.bundle` directory, which is shared among all projects created within the folder. The project is designed to be run on Linux or macOS systems with Docker installed.

## Prerequisites

- Docker

## Usage

To list all available commands, run:


### Command Descriptions

- `make dev-shell app=<project-name>`: Start a development shell for running project-related commands.

- `make dev-server app=<project-name>`: Start a development server for the specified project.

- `make install app=<project-name>`: Create a new project and install Rails within it. The project will be created in a directory named `<project-name>`.

- `make install-nodemodules app=<project-name>`: Install Node modules and dependencies for the specified project.

- `make irb`: Start an interactive Ruby (IRB) terminal.

Note: For each command, replace `<project-name>` with the desired name of your project.

## Project Structure

The root folder contains the `.bundle` directory, which stores the installed gems shared among all projects created within the folder. Each project is contained within its own subfolder. When running the commands, the specified project name should correspond to the subfolder name.

## Development Shell

The `make dev-shell` command starts a development shell where you can run project-related commands. It mounts the project directory and sets up the appropriate environment for running Ruby on Rails commands within the project context.

## Development Server

The `make dev-server` command starts a development server for the specified project. It mounts the project directory and runs the Rails server in the container, making the application accessible on `http://localhost:3000`.

## Installation

The `make install` command creates a new project and installs Rails within it. It creates a directory with the specified project name and runs the necessary commands to set up a new Ruby on Rails project.

## Installing Node Modules

The `make install-nodemodules` command installs Node modules and dependencies for the specified project. It ensures that the required Node packages are installed, which is useful when working with JavaScript and frontend development within a Rails project.

## Interactive Ruby (IRB) Terminal

The `make irb` command starts an interactive Ruby (IRB) terminal. It provides a convenient way to interact with Ruby code and test snippets.

---

Feel free to customize and extend this project to suit your specific needs. Happy coding!
