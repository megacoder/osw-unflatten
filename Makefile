PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all:	osw-unflatten

diff:	osw-unflatten
	diff -uNp osw-unflatten ${BINDIR}/osw-unflatten

install: osw-unflatten
	install -D -c osw-unflatten ${BINDIR}/osw-unflatten

uninstall:
	${RM} ${BINDIR}/osw-unflatten

import:	${BINDIR}/osw-unflatten
	cp ${BINDIR}/osw-unflatten osw-unflatten
