run: node_modules
	@yarn start

deploy:
	@yarn build
	@surge -d https://synthetix.surge.sh -p build

deploy-ipfs:
	@yarn build
#	@ipfs-deploy -p pinata build
	@ipfs-deploy build

node_modules:
	@yarn

gen-net-cfg:
	@node bin/networks.js 

.PHONY: \
	run \
	deploy \
	deploy-ipfs \
	gen-net-cfg
