.PHONY: build publish-npm

build:
	cd packages/sdk && yarn && yarn build

# Before running this, first make sure:
# 1. To `npm login` with enigma-dev
# 2. The new version is updated in `packages/sdk/package.json`
publish-npm: build
	cd packages/sdk && npm publish
