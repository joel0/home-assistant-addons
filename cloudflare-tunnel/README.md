# Cloudflare Tunnel

## Overview

[Cloudflare Tunnel](https://www.cloudflare.com/products/tunnel/) (`cloudflared`) is a service that utilizes an outbound network connection to make your server accessible over the Internet.  Cloudflare also manages the TLS/SSL certificate.

This plugin removes the need for dynamic DNS (e.g. Duck DNS) and managing certificates (e.g. Let's Encrypt).

## Setup Guide

### Prerequisite

You need a domain name serviced by Cloudflare.

### Add-On Configuration

As a one time setup, you'll need to generate the credentials file to provide to this add-on.  On any computer, follow the first steps from [guide to set up your fist tunnel](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide).  After step 3, you'll see `Tunnel credentials written to <file>.json`.  Copy the contents of that file to this add-on's configuration `credentials_file_contents`.

```sh
cloudflared tunnel login
cloudflared tunnel create homeassistant
```

### DNS Configuration

To be able to access your service, you'll need to [create a DNS record](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/routing-to-tunnel/dns).  The easiest way to do this is with `cloudflared`.

```sh
cloudflared tunnel route dns homeassistant homeassistant.example.com
```

## Disclaimer

This is a personal project developed on personal time that is not affiliated with, endorsed by, or compensated by Cloudflare.