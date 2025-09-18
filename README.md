# Relate Docker

This repository provides Docker configurations for running [RELATE](https://github.com/inducer/relate) in a containerized environment.

## Features

- Docker configurations for both Debian and Alpine Linux environments
- PostgreSQL database integration
- Mailpit for email testing

## Requirements

- Docker and Docker Compose
- [Task](https://taskfile.dev/)

## Quick Start

### Debian-based Setup

```bash
task setup DISTRIBUTION=debian
```

### Alpine-based Setup

```bash
task setup DISTRIBUTION=alpine
```

### Debian-based Run

```bash
task run DISTRIBUTION=debian
```

### Alpine-based Run

```bash
task run DISTRIBUTION=alpine
```

## Configuration

The environment is configured through the `.env` file which contains all the necessary environment variables.

### Default Settings

- `EMAIL_DOMAIN`: example.com
  - Specifies the domain part of email addresses.
- `EMAIL_HOST_USER`: (empty)
  - Authentication username for the SMTP server.<br>
    Can be left empty when using Mailpit.
- `EMAIL_HOST_PASSWORD`: (empty)
  - Authentication password for the SMTP server.<br>
    Can be left empty when using Mailpit.
- `RELATE_DOMAIN`: localhost
  - Specifies the domain name for the RELATE application.<br>
    Can be kept as "localhost" for local environments.
- `RELATE_ADMIN_USER`: admin
  - Username for the administrator account.<br>
    Automatically created on first startup.
- `RELATE_ADMIN_PASSWORD`: ${RELATE_ADMIN_USER} (admin)
  - Password for the administrator account.<br>
    By default, it uses the same value as the username.
- `RELATE_ADMIN_EMAIL`: ${RELATE_ADMIN_USER}@${EMAIL_DOMAIN} (admin@example.com)
  - Email address for the administrator account.<br>
    Automatically generated from the username and email domain.
- `POSTGRES_USER`: relate
  - PostgreSQL database username.
- `POSTGRES_PASSWORD`: relate
  - PostgreSQL database password.<br>
    Recommended to change to a strong password in production environments.
- `POSTGRES_DB`: relate
  - PostgreSQL database name.
- `TZ`: UTC
  - Specifies the timezone.

## Services

The environment provides:

- Database: PostgreSQL
- Email testing: Mailpit (accessible at `http://localhost:8025`)
- RELATE Interface: `http://localhost`

## Shutdown

### Debian-based Shutdown

```bash
task shutdown DISTRIBUTION=debian
```

### Alpine-based Shutdown

```bash
task shutdown DISTRIBUTION=alpine
```

## License

See the [LICENSE](LICENSE) file for details.
