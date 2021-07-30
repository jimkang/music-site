include config.mk

HOMEDIR = $(shell pwd)
PROJECTNAME = music-site
APPDIR = /opt/$(PROJECTNAME)
SSHCMD = ssh $(USER)@$(SERVER)
swpick = node_modules/.bin/swpick

sync:
	rsync -a $(HOMEDIR) $(USER)@$(SERVER):/opt/ --exclude node_modules/
	$(SSHCMD) "cd $(APPDIR) && npm install"

pushall: sync
	git push origin main

run-remote:
	$(SSHCMD) "cd $(APPDIR) && $(swpick) $(APPDIR)/music-site-config.js $(METADIR) $(APPDIR)/ids.json"

set-up-web-dir:
	ssh $(USER)@$(SERVER) "mkdir -p $(WEBDIR)"
