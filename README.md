# Duck DNS Updater

[![Build Status](https://github.com/maksimstojkovic/docker-duckdns/workflows/docker%20build/badge.svg)](https://github.com/maksimstojkovic/docker-duckdns)
[![Docker Pulls](https://img.shields.io/docker/pulls/maksimstojkovic/duckdns)](https://hub.docker.com/repository/docker/maksimstojkovic/duckdns)

Updates your Duck DNS IP address automatically at the frequency specified. Use `alpine` as a minimal base image for performing `curl` requests.

## Variables

* `DUCKDNS_TOKEN`: Duck DNS account token (obtained from [Duck DNS](https://www.duckdns.org))
* `DUCKDNS_DOMAIN`: Full Duck DNS domain (e.g. `test.duckdns.org`).
  * Multiple domains **belonging to the same token** can be entered as a comma-separated list
  of values (e.g. `test1.duckdns.org,test2.duckdns.org`).
* `DUCKDNS_DELAY`: Delay between IP address updates
