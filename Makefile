#
# Vars
#

NODE_BIN = ./node_modules/.bin

#
# Tasks
#

clean:
	@rm -rf lib &> /dev/null || true &

reactify: clean
	@${NODE_BIN}/babel ${PWD}/src --out-dir ${PWD}/lib

watch: link
	@${NODE_BIN}/babel ${PWD}/src --watch --out-dir ${PWD}/lib &
	@wait

reload: watch
	@${NODE_BIN}/watchify lib/Load.js -d -o ./public/bundle.js &
	@wait

dev: reload
	@node server.js

prod: clean
	@${NODE_BIN}/browserify lib/index.jsx | ${NODE_BIN}/uglifyjs > ./public/bundle.js

.PHONY: clean link reactify reload dev prod
