# Relate Docker

This repository provides Docker configurations for running [RELATE](https://github.com/inducer/relate) in a containerized environment.

## Features

- Docker configurations for both Debian and Alpine Linux environments
- PostgreSQL database integration
- Mailpit for email testing

## Requirements

- Docker and Docker Compose

## Quick Start

### Debian-based Setup

```bash
# Linux/macOS
./setup-debian.sh
./run-debian.sh

# Windows
setup-debian.bat
run-debian.bat
```

### Alpine-based Setup

```bash
# Linux/macOS
./setup-alpine.sh
./run-alpine.sh

# Windows
setup-alpine.bat
run-alpine.bat
```

## Configuration

The environment is configured through the `.env` file which contains all the necessary environment variables.

### Default Settings

The following default values are set in the `.env` file:

- `EMAIL_DOMAIN`: example.com
  - Specifies the domain part of email addresses.
- `EMAIL_HOST_USER`: (empty)
  - Authentication username for the SMTP server. Can be left empty when using Mailpit.
- `EMAIL_HOST_PASSWORD`: (empty)
  - Authentication password for the SMTP server. Can be left empty when using Mailpit.
- `RELATE_DOMAIN`: localhost
  - Specifies the domain name for the RELATE application. Can be kept as "localhost" for local environments.
- `RELATE_ADMIN_USER`: admin
  - Username for the administrator account. Automatically created on first startup.
- `RELATE_ADMIN_PASSWORD`: ${RELATE_ADMIN_USER} (admin)
  - Password for the administrator account. By default, it uses the same value as the username.
- `RELATE_ADMIN_EMAIL`: ${RELATE_ADMIN_USER}@${EMAIL_DOMAIN} (admin@example.com)
  - Email address for the administrator account. Automatically generated from the username and email domain.
- `POSTGRES_USER`: relate
  - PostgreSQL database username.
- `POSTGRES_PASSWORD`: relate
  - PostgreSQL database password. Recommended to change to a strong password in production environments.
- `POSTGRES_DB`: relate
  - PostgreSQL database name.
- `TZ`: Asia/Tokyo
  - Specifies the timezone.

The environment provides:

- Database: PostgreSQL
- Email testing: Mailpit (accessible at `http://localhost:8025`)
- RELATE Interface: `http://localhost`

## Shutting Down

### Debian-based Shutdown

```bash
# Linux/macOS
./shutdown-debian.sh

# Windows
shutdown-debian.bat
```

### Alpine-based Shutdown

```bash
# Linux/macOS
./shutdown-alpine.sh

# Windows
shutdown-alpine.bat
```

## License

See the [LICENSE](LICENSE) file for details.
