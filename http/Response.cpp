#ifndef DOXYGEN_SHOULD_SKIP_THIS

#endif /* DOXYGEN_SHOULD_SKIP_THIS */

#include "httputils.h"

#include "Response.h"
#include "HTTPContext.h"
#include "HTTPStatusCodes.h"


Response::Response(HTTPContext* httpContext) : httpContext(httpContext) {}


void Response::status(int status) const {
    this->httpContext->responseStatus = status;
}


void Response::append(const std::string& field, const std::string& value) const {
    std::map<std::string, std::string>::iterator it = this->httpContext->responseHeader.find(field);
    
    if (it != this->httpContext->responseHeader.end()) {
        it->second += ", " + value;
    } else {
        this->set(field, value);
    }
}


void Response::set(const std::map<std::string, std::string>& map) const {
    for (std::map<std::string, std::string>::const_iterator it = map.begin(); it != map.end(); ++it) {
        this->set(it->first, it->second);
    }
}


void Response::set(const std::string& field, const std::string& value) const {
    this->httpContext->responseHeader.insert_or_assign(field, value);
}


void Response::cookie(const std::string& name, const std::string& value, const std::map<std::string, std::string>& options) const {
    cookie(Cookie(name, value, options));
}
void Response::cookie(const Cookie& cookie) const {
    this->httpContext->responseCookies.push_back(cookie);
}


void Response::clearCookie(const std::string& name, const std::map<std::string, std::string>& options) const {
    std::map<std::string, std::string> opts = options;

    opts.erase("Max-Age");
    time_t time = 0;
    opts["Expires"] = httputils::to_http_date(gmtime(&time));

    this->cookie(name, "", opts);
}


void Response::send(const char* puffer, int n) const {
    this->httpContext->send(puffer, n);
}


void Response::send(const std::string& text) const {
    this->httpContext->send(text);
}


void Response::sendFile(const std::string& file, const std::function<void (int err)>& fn) const {
    this->httpContext->sendFile(file, fn);
}


void Response::download(const std::string& file, const std::function<void (int err)>& fn) const {
    std::string name = file;

    if (name[0] == '/') {
        name.erase(0, 1);
    }

    this->download(file, name, fn);
}


void Response::download(const std::string& file, const std::string& name, const std::function<void (int err)>& fn) const {
    this->set({{"Content-Disposition", "attachment; filename=\"" + name + "\""}});
    this->sendFile(file, fn);
}


void Response::redirect(const std::string& name) const {
    this->redirect(302, name);
}


void Response::redirect(int status, const std::string& name) const {
    this->status(status);
    this->set({{"Location", name}});
    this->end();
}


void Response::sendStatus(int status) const {
    this->status(status);
    this->send(HTTPStatusCode::reason(status));
}


void Response::type(std::string type) const {
    this->set({{"Content-Type", type}});
}


void Response::end() const {
    this->httpContext->end();
}
