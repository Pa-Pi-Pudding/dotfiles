DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .travis.yml
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

.DEFAULT_GOAL := help

all:

list: ## Show dot files in this repo
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

deploy: ## Create symlink to home directory
	@echo 'Copyright (c) 2013-2015 BABAROT All Rights Reserved.'
	@echo '==> Start to deploy dotfiles to home directory.'
	@echo ''
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	 ln -s dotfiles/prezto/runcoms/zlogin ~/.zlogin
	 ln -s dotfiles/prezto/runcoms/zlogout ~/.zlogout
	 ln -s dotfiles/prezto/runcoms/zpreztorc ~/.zpreztorc
	 ln -s dotfiles/prezto/runcoms/zprofile ~/.zprofile
	 ln -s dotfiles/prezto/runcoms/zshenv ~/.zshenv
	 ln -s dotfiles/prezto/runcoms/zshrc ~/.zshrc
	 ln -s dotfiles/prezto/runcoms/com.googlecode.iterm2.plist ~/com.googlecode.iterm2.plist 

init: ## Setup environment settings
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init/init.sh

test: ## Test dotfiles and init scripts
	@#DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/test/test.sh
	@echo "test is inactive temporarily"

update: ## Fetch changes for this repo
	git pull origin master
	git submodule init
	git submodule update --init --recursiv
	git submodule foreach git pull origin master

install: update deploy init ## Run make update, deploy, init
	@exec $$SHELL

clean: ## Remove the dot files and this repo
	@echo 'Remove dot files in your home directory...'
	@-$(foreach val, $(DOTFILES), rm -vrf $(HOME)/$(val);)
	-rm -rf $(DOTPATH)

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
