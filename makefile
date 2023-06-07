.PHONY: list help

# List all available commands
list: help

# Display help with available commands
help:
	@echo ""
	@echo "Available commands:"
	@echo ""
	@echo "    Command:                                      Description:"
	@echo ""
	@echo "    	make dev-shell app=<project-name>             Start a dev shell"
	@echo "    	make dev-server app=<project-name>            Start a dev server"
	@echo "    	make install app=<project-name>               Install a new project"
	@echo "    	make install-nodemodules app=<project-name>   Install node modules"
	@echo "    	make irb                                      Start an interactive terminal"
	@echo ""
dev-shell: 
	@echo "Start a dev shell to run commands relevant to project"
	@if [ -z "$(app)" ]; then \
		echo "Please provide a project name (app=<project_name>)"; \
	else \
		docker run -u $(id -u):$(id -g) -it --rm -v "${shell pwd}/.bundle:/usr/local/bundle" -v "$(shell pwd)/${app}":/app -e HOME=/app -w /app ruby:latest /bin/bash -c "curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt install -y nodejs && npm i -g yarn && bash"; \
	fi
dev-server: 
	@if [ -z "$(app)" ]; then \
		echo "Please provide a project name (app=<project_name>)"; \
	else \
		docker run -u $(id -u):$(id -g) -it --rm -p 3000:3000 -v "${shell pwd}/.bundle:/usr/local/bundle" -v "$(shell pwd)/${app}":/app -e HOME=/app -w /app ruby:latest /bin/bash -c "bin/rails server -b 0.0.0.0"; \
	fi

install:
	@if [ -z "$(app)" ]; then \
		echo "Please provide a project name (app=<project_name>)"; \
	else \
		mkdir $(app) && docker run -it -v "$(shell pwd)/${app}":/app --rm -e HOME=/app -w /app ruby:latest bash -c "gem install rails && curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt install -y nodejs && npm i -g yarn && rails new . ${args} && chown -R $(shell id -u):$(shell id -g) ."; \
	fi
irb: 
	docker run -u $(id -u):$(id -g) -it --rm -e HOME=/app -w /app ruby:latest

