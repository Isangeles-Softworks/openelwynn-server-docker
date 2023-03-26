## Introduction
This is the repository for Docker image of [OpenElwynn](https://github.com/isangeles-softworks/openelwynn) game server.

Image exposes port `8000` whitch is used for server connection.

Image uses [Fire](https://github.com/isangeles/fire) as a game server, for more information about server capabilities read [Fire](https://github.com/isangeles/fire) repository description.
## Build & Run
Build the image:
```
docker build -t openelwynn-server .
```
Run the image:
```
docker run -p 8000:8000 openelwynn-server
```
After that the server is ready to handle incoming connections on port 8000.
## Users
Image comes with two default users:

* ai - user for the game AI, default password: ai
* local - admin user, default passowrd: local
## Contact
* Isangeles <<ds@isangeles.dev>>

## License
Copyright 2023 Isangeles Softworks <<softworks@isangeles.dev>>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.
