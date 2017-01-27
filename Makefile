UID!= id -u

install:
	install -d -m 0750 $(HOME)/bin
	install -d -m 0750 $(HOME)/.git
	install -m 0440 dot.tcshrc 		$(HOME)/.tcshrc
	install -m 0440 dot.tcshrc.alias	$(HOME)/.tcshrc.alias
	install -m 0440 dot.tcshrc.bindkey	$(HOME)/.tcshrc.bindkey
	install -m 0440 dot.tcshrc.complete	$(HOME)/.tcshrc.complete
	install -m 0440 dot.tcshrc.hosts	$(HOME)/.tcshrc.hosts
	install -m 0440 dot.tcshrc.local	$(HOME)/.tcshrc.local
	install -m 0440 dot.tcshrc.set		$(HOME)/.tcshrc.set
	install -m 0440 dot.vimrc.clang_complete		$(HOME)/.vimrc
	install -m 0440 dot.screenrc		$(HOME)/.screenrc
.if ${UID} == 0
	install -m 0440 dot.tmux.conf		$(HOME)/.tmux.conf
.else
	install -m 0440 dot.tmux.conf.user	$(HOME)/.tmux.conf
.endif
	install -m 0440 dot.gitconfig		$(HOME)/.gitconfig
	install -m 0440 dot.git/hbsd-template	$(HOME)/.git/hbsd-template
	install -m 0440 dot.git/opbsd-template	$(HOME)/.git/opbsd-template
.if ${UID} == 0
	install -m 0550 bin/_hbsd_build_kernel.csh	$(HOME)/bin/_hbsd_build_kernel.csh
	install -m 0550 bin/_hbsd_build_world.csh	$(HOME)/bin/_hbsd_build_world.csh
	install -m 0550 bin/_hbsd_install_world.csh	$(HOME)/bin/_hbsd_install_world.csh
	install -m 0550 bin/_src_update.csh	$(HOME)/bin/_src_update.csh
	install -m 0550 bin/_ports_update.csh	$(HOME)/bin/_ports_update.csh
	install -m 0550 bin/_kernel_uname_diff.csh	$(HOME)/bin/_kernel_uname_diff.csh
.endif

userinstall:
	install -d -m 0750 $(HOME)/.i3
	install -d -m 0750 $(HOME)/.config/clipit
	install -m 0550 dot.xsession		$(HOME)/.xsession
	install -m 0440 dot.Xdefaults		$(HOME)/.Xdefaults
	install -m 0440 dot.xbindkeysrc		$(HOME)/.xbindkeysrc
	install -m 0440 dot.i3status.conf	$(HOME)/.i3status.conf
	install -m 0440 dot.i3/config		$(HOME)/.i3/config
	install -m 0400 dot.config-clipit-clipitrc 	$(HOME)/.config/clipit/clipitrc

contribinstall:
	install -m 0550 contrib/dot.git-completion.bash		$(HOME)/.git-completion.bash
	install -m 0550 contrib/dot.git-completion.tcsh		$(HOME)/.git-completion.tcsh
