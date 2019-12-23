# Duck DNS Updater

[![Build Status](https://github.com/silentdigit/docker-duckdns/workflows/docker%20build/badge.svg)](https://github.com/silentdigit/docker-duckdns)
[![Docker Pulls](https://img.shields.io/docker/pulls/silentdigit/duckdns)](https://hub.docker.com/repository/docker/silentdigit/duckdns)
[![Docker Stars](https://img.shields.io/docker/stars/silentdigit/duckdns)](https://hub.docker.com/repository/docker/silentdigit/duckdns)
[![Image Size](https://images.microbadger.com/badges/image/silentdigit/duckdns.svg)](https://hub.docker.com/repository/docker/silentdigit/duckdns)
[![Image Version](https://images.microbadger.com/badges/version/silentdigit/duckdns.svg)](https://hub.docker.com/repository/docker/silentdigit/duckdns)
[![Image Commit](https://images.microbadger.com/badges/commit/silentdigit/duckdns.svg)](https://github.com/silentdigit/docker-duckdns)

Updates your Duck DNS IP address automatically at the frequency specified. Use `alpine` as a minimal base image for performing `curl` requests.

## Variables

* `DUCKDNS_TOKEN`: Duck DNS account token (obtained from [Duck DNS](https://www.duckdns.org))
* `DUCKDNS_DOMAIN`: Full Duck DNS domain (e.g. `test.duckdns.org`)
* `DUCKDNS_DELAY`: Delay between IP address updates
