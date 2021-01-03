all:
	VERSION=$$(cd ../transparent-herd && \
	npm run doc > /dev/null 2>&1 && \
	node -p "require('./package.json').version" 2>/dev/null ) && \
	cp -R ../transparent-herd/doc ./$${VERSION}
