NPM_CONFIG_REGISTRY?=https://nexus.gridpl.us/repository/npm-group/
NPM_TOKEN?=`sed -n -e '/\/\/nexus.gridpl.us\/repository\/npm-group\/:_authToken=/ s/.*\= *//p' ~/.npmrc` #grabbing NPM_TOKEN from ~/.npmrc if its not already set as an env var

publish:
	NPM_CONFIG_REGISTRY=$(NPM_CONFIG_REGISTRY) \
	npm publish
