include config.mk

HOMEDIR = $(shell pwd)
PROJECTNAME = music-site
APPDIR = /opt/$(PROJECTNAME)
SSHCMD = ssh $(USER)@$(SERVER)
swpick = node_modules/.bin/swpick

sync:
	rsync -a $(HOMEDIR) $(USER)@$(SERVER):/opt/ --exclude node_modules/
	$(SSHCMD) "cd $(APPDIR) && npm install"

pushall: sync push-css run-remote
	git push origin main

run-remote:
	$(SSHCMD) "rm -f $(WEBDIR)/meta/*"
	$(SSHCMD) "cd $(APPDIR) && $(swpick) $(APPDIR)/music-site-config.js $(METADIR) $(APPDIR)/ids.json"

set-up-web-dir:
	ssh $(USER)@$(SERVER) "mkdir -p $(WEBDIR)"

pull-css:
	scp $(USER)@$(SERVER):$(WEBDIR)/app.css .

push-css:
	scp app.css $(USER)@$(SERVER):$(WEBDIR)
