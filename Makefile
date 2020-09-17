.PHONY: npm-install
npm-install:
	@(docker run --rm -v ${PWD}:/src -it xackery/webbuild:10.19.0 bash -c 'npm init')
.PHONY: sandbox
sandbox:
	@cp src/assets/* dist/
	@npm start
.PHONY: build-all
build-all:
	@electron-packager ./ --out=bin/ --all
.PHONY: build-windows
build-windows:
	@electron-packager . hello  --platform=win32 --arch=x64
