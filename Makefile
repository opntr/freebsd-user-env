install:
	install -m 0440 dot.tcshrc 		$(HOME)/.tcshrc
	install -m 0440 dot.tcshrc.alias	$(HOME)/.tcshrc.alias
	install -m 0440 dot.tcshrc.bindkey	$(HOME)/.tcshrc.bindkey
	install -m 0440 dot.tcshrc.complete	$(HOME)/.tcshrc.complete
	install -m 0440 dot.tcshrc.hosts	$(HOME)/.tcshrc.hosts
	install -m 0440 dot.tcshrc.local	$(HOME)/.tcshrc.local
	install -m 0440 dot.tcshrc.set		$(HOME)/.tcshrc.set
	install -m 0440 dot.vimrc		$(HOME)/.vimrc
	install -m 0440 dot.screenrc		$(HOME)/.screenrc
