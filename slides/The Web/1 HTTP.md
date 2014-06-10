!SLIDE small
Today

- URLs
- Resources
- Requests, Verbs, Headers
- Responses
- Proxies
- Caching
- Cookies
- Authentication
- HTTPS

!SLIDE subsection
#URLs


!SLIDE
#URLs
`<scheme>://<host>:<port>/<path>?<query>#<frag>`


!SLIDE
#URL Encoding
- Not all characters are "URL Safe"
    - URL encoding turns " " into "%20"
    - URL encoding turns " " into "%5E"




!SLIDE subsection
#I Want Resources


!SLIDE
#MIME Types
- Multimedia Internet Mail Extensions
- type/subtype
    - text/css
    - text/html
    - image/jpeg
    - image/png


!SLIDE
#Multiple Representations
- MIME Types
    - HTML
    - PDF
    - CSV
- Languages
    - English
    - Spanish


!SLIDE
#Servers & Clients
- HTTP is a communication medium
    - Ex: Browser talks to Server
    - Either could be written in
        - C, Java, Ruby, Javascript, Python

!SLIDE
#The Internet People
- RFC Documents define the Internet
- A Request for Comments (RFC) is a publication of the Internet Engineering Task Force (IETF) and the Internet Society, the principal technical development and standards-setting bodies for the Internet.


!SLIDE small
#HTTP Is a Standard
- RFC 2616
- "The Hypertext Transfer Protocol (HTTP) is an application-level
   protocol for distributed, collaborative, hypermedia information
   systems. It is a generic, stateless, protocol which can be used for
   many tasks beyond its use for hypertext, such as name servers and
   distributed object management systems, through extension of its
   request methods, error codes and headers [47]. A feature of HTTP is
   the typing and negotiation of data representation, allowing systems
   to be built independently of the data being transferred.

   HTTP has been in use by the World-Wide Web global information
   initiative since 1990. This specification defines the protocol
   referred to as "HTTP/1.1", and is an update to RFC 2068 [33]."


!SLIDE subsection
#HTTP Requests

!SLIDE
#HTTP Requests
Three Parts

- First Line
- Headers
- Body (optional)


!SLIDE
#HTTP Requests
##First Line Examples

Sent to `facebook.com`:

`GET / HTTP/1.1`

Sent to `facebook.com`:

`GET /about HTTP/1.1`


!SLIDE bullets incremental
#GET vs POST
- GET is used to get information from the server
- POST is used to send information to the server for it to store


!SLIDE
#GET is "Safe"
Refreshing = resubmit the GET request

- You can refresh as many times as you want
- Links use GET


!SLIDE
#POST is "Not Safe"
Refreshing = resubmit the POST request

- If you resubmit a POST request, you get a warning
    - "Confirm Form Resubmission"
- Most forms use POST (some use GET)


!SLIDE
#GET vs POST
##in Forms

- A POST form will change something on the server
    - Update user profile
- A GET form will not change the server
    - Googling for "cats"


!SLIDE
#GET vs POST
##in URLs

- GET can be bookmarked
    - query stored in the URL itself
    - google.com?q=cats
- POST ("form submissions") can't be bookmarked
    - The query is stored in the "body" of the request
    - "q=cats" in body


!SLIDE bullets incremental
#Some Headers
- Referer
- User-Agent
- Accept
- Accept-Language
- Cookie
- If-Modified-Since


!SLIDE small
#Some Response Status Codes
- 200 - OK
- 301 - Moved Permanently
- 302 - Moved Temporarily
- 304 - Not Modified
- 400 - Bad Request
- 403 - Forbidden
- 404 - Not Found
- 500 - Internal Server Error
- 503 - Service Unavailable



!SLIDE subsection
#Proxies

!SLIDE
#Proxies
Forward vs Reverse


!SLIDE
#Forward Proxies
- closer to client than server
    - ~Yale VPN
    - TOR


!SLIDE
#Reverse Proxies
- closer to server than client
    - Load Balancing
    - Caching Proxies
    - SSL Accelaration




!SLIDE subsection
#Caching

!SLIDE bullets incremental
#Caching
- Public Cache
    - On Forward Proxy (Comcast)
    - On Reverse Proxy (The Website)
- Private Cache
    - In your browser




!SLIDE subsection
#Cookies


!SLIDE bullets incremental
#Cookies
- Are stored in the browser
- Help identify the user (vs "fat URL")
- Come from an HTTP Response Header
- Are sent with each HTTP Request the browser sends


!SLIDE
#Cookie Expiration
- Session Cookies - deleted when the browser is closed
- Persistent Cookies - expiration date


!SLIDE
#Third Party Cookies
- Download any file (even css or js)
- Response header might include a cookie

!SLIDE subsection
#Authentication

!SLIDE
#Authentication
- Basic Authentication
- Digest Authentication
- Windows Authentication
- Forms-based Authentication
- OpenID


!SLIDE
#Basic & Digest
- Defined by HTTP
- Popup window in browser
- Less secure (unless HTTPS)


!SLIDE subsection
#HTTPS

!SLIDE bullets incremental
#HTTPS
- HTTPS encrypts the entire HTTP Message
- Slower
- HTTPS requires a security certificate (Verisign)


!SLIDE
#HTTP vs HTTPS
- Port 80 vs Port 443
- Less secure vs more secure
- Faster vs slower