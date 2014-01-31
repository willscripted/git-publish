
GIT_PATH=`git --exec-path`

all:
	@echo "Use"
	@echo "	install"
	@echo "	uninstall"

install:
	install -d -m 0755 $(GIT_PATH)
	install -m 0755 git-publish $(GIT_PATH)
	chmod 644 $(GIT_PATH)

uninstall:
	rm $(GIT_PATH)/git-publish
