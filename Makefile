
GIT_PATH=`git --exec-path`

all:
	@echo "Use"
	@echo "	install"
	@echo "	uninstall"

install:
	install -d -m 0755 $(GIT_PATH)
	install -m 0755 git-publish $(GIT_PATH)

uninstall:
	rm $(GIT_PATH)/git-publish


## Build Site Workflow

clean:
	rm -rf build

build-all: index.html cname fonts

build:
	mkdir build

cname: build
	cp docs/CNAME build

fonts: build
	cp -r docs/fontello build

index.html: build
	if [ -f build/index.html ]; then rm build/index.html; fi
	touch build/index.html
	cat docs/header.html >> build/index.html
	cat README.md | pandoc --from markdown_github --to html >> build/index.html
	cat docs/footer.html >> build/index.html

.PHONY: all install uninstall build build-all clean

