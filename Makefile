# Make sure, you have nodejs installed.

# Make tasks
all: mockup-minimalpattern

mockup-minimalpattern:
	cd src/mockup-minimalpattern; make bootstrap; cd ../..;

mockup:
	cd src/mockup; make bootstrap; cd ../..;

# Expose these options to the command line shell expansion mechanism
.PHONY: all mockup mockup-minimalpattern


# Volto cypress tests

.PHONY: start-test-backend
start-test-backend: ## Start Test Plone Backend
	ZSERVER_PORT=55001 CONFIGURE_PACKAGES=plone.app.contenttypes,plone.restapi,kitconcept.volto,kitconcept.volto.cors APPLY_PROFILES=plone.app.contenttypes:plone-content,plone.restapi:default,kitconcept.volto:default-homepage ./bin/robot-server ploneconf.site.testing.PLONECONF_SITE_ACCEPTANCE_TESTING

.PHONY: start-test-frontend
start-test-frontend: ## Start Test Volto Frontend
	cd ../volto-ploneconf; RAZZLE_API_PATH=http://localhost:55001/plone yarn build && NODE_ENV=production node build/server.js

.PHONY: start-test
start-test: ## Start Test
	cd ../volto-ploneconf; RAZZLE_API_PATH=http://localhost:55001/plone NODE_ENV=production yarn cypress:open
