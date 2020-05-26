#ifndef SOCKETREADER_H
#define SOCKETREADER_H

#ifndef DOXYGEN_SHOULD_SKIP_THIS

#include <functional>

#endif /* DOXYGEN_SHOULD_SKIP_THIS */

#include "Reader.h"
#include "Socket.h"


class ConnectedSocket;

class SocketReader : public Reader, virtual public Socket
{
public:
	void readEvent ();

protected:
	SocketReader () : Socket(), Reader(0), readProcessor(0)
	{}
	
	SocketReader (const std::function<void (ConnectedSocket *cs, const char *chunk, std::size_t n)> &readProcessor,
	              const std::function<void (int errnum)> &onError) : Socket(), Reader(onError), readProcessor(readProcessor)
	{}
	
	std::function<void (ConnectedSocket *cs, const char *chunk, std::size_t n)> readProcessor;
};

#endif // SOCKETREADER_H
