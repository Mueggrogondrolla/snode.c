#include "SocketWriteManager.h"


int SocketWriteManager::process(fd_set& fdSet, int count) {
    for (std::list<Writer*>::iterator it = descriptors.begin(); it != descriptors.end() && count > 0; ++it) {
        if (FD_ISSET(dynamic_cast<Descriptor*>(*it)->getFd(), &fdSet)) {
            count--;
            (*it)->writeEvent();
        }
    }
                
    return count;
}
