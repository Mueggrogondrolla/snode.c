#ifndef CONNECTEDSOCKET_H
#define CONNECTEDSOCKET_H

#include <string>

#include "InetAddress.h"
#include "Socket.h"
#include "Writer.h"
#include "Reader.h"


class ConnectedSocket : public Socket, public Reader, public Writer
{
public:
    ConnectedSocket(int csFd);
    virtual ~ConnectedSocket();
    
    virtual void write(const char* buffer, int size);
    virtual void write(const std::string& junk);
    virtual void writeLn(const std::string& junk = "");
    
    InetAddress& getRemoteAddress();
    void setRemoteAddress(const InetAddress& remoteAddress);
    
    virtual void writeEvent();

    void close();


protected:
    void clearReadBuffer();
    
    InetAddress remoteAddress;
    
    std::string readBuffer;
    std::string writeBuffer;
};

#endif // CONNECTEDSOCKET_H
