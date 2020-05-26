#ifndef DOXYGEN_SHOULD_SKIP_THIS

#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>

#endif /* DOXYGEN_SHOULD_SKIP_THIS */

#define MAX_JUNKSIZE 4096

#include "SocketWriter.h"
#include "Multiplexer.h"


void SocketWriter::writeEvent ()
{
	std::size_t ret = ::send(this->getFd(), writePuffer.c_str(), (writePuffer.size() < MAX_JUNKSIZE) ? writePuffer.size() : MAX_JUNKSIZE,
	                         MSG_DONTWAIT | MSG_NOSIGNAL);
	
	if (ret >= 0)
	{
		writePuffer.erase(0, ret);
		if (writePuffer.empty())
		{
			Multiplexer::instance().getWriteManager().unmanageSocket(this);
		}
	} else if (errno != EAGAIN && errno != EWOULDBLOCK && errno != EINTR)
	{
		onError(errno);
		Multiplexer::instance().getWriteManager().unmanageSocket(this);
	}
}
