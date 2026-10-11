# Static Site Server

A simple static website hosted on a remote Ubuntu VPS using Nginx, with automated deployment from a local machine through `rsync` over SSH.

## Overview

This project demonstrates how to deploy and serve a static website on a remote Linux server. Nginx is configured to serve HTML, CSS, and image files, while a Bash deployment script automates file synchronization between the local development environment and the VPS.

**Project Reference:** [roadmap.sh – Static Site Server](https://roadmap.sh/projects/static-site-server)

## Server Details

| Configuration      | Details                 |
| ------------------ | ----------------------- |
| Provider           | Helipod                 |
| Operating System   | Ubuntu 24.04 LTS        |
| Web Server         | Nginx                   |
| External HTTP Port | 32080                   |
| Internal HTTP Port | 80                      |
| Deployment Method  | rsync over SSH          |
| Web Root           | `/var/www/static-site/` |

## Project Structure

```text
static-site-server/
├── site/
│   ├── index.html
│   ├── style.css
│   └── images/
├── deploy.sh
└── README.md
```

## Features

- **Responsive Website** — Static web pages built with HTML and CSS.
- **Nginx Web Server** — Serves website files from the configured document root.
- **Automated Deployment** — Synchronizes local website files to the remote VPS using `rsync`.
- **SSH Connectivity** — Uses SSH for secure communication with the remote server.
- **Bash Automation** — Simplifies the deployment process with a reusable shell script.
- **Remote Hosting** — Makes the website accessible through the server's configured HTTP endpoint.

## Deployment

Run the following commands from the project directory:

```bash
chmod +x deploy.sh
./deploy.sh
```

The deployment script synchronizes the local `site/` directory with the remote web directory:

```text
Local:  ./site/
Remote: /var/www/static-site/
```

The script uses `rsync` over SSH to transfer website files to the VPS, allowing website updates to be deployed without manually copying each file.

## Web Server Configuration

Nginx serves the static website from:

```text
/var/www/static-site/
```

The server listens on internal HTTP port `80`, which is exposed through external port `32080` by the VPS provider's networking or port-forwarding configuration.

The website can be accessed through:

```text
http://YOUR_SERVER_IP:32080
```

Replace `YOUR_SERVER_IP` with the public IP address of your VPS.

## What I Learned

- Installing and configuring Nginx on Ubuntu.
- Hosting static websites on a remote Linux server.
- Understanding Nginx document roots and HTTP port mapping.
- Connecting to a VPS using SSH.
- Synchronizing files with `rsync`.
- Automating deployment workflows using Bash.
- Managing website files and permissions on Linux.

## Project Status

Completed — A static website deployment workflow was configured using Nginx, SSH, and `rsync` on a remote Ubuntu VPS.

---

_Built as part of my Linux server administration learning journey, following the roadmap.sh project guide._
