# TimeClock - Microservices-based Time Management System

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](https://golang.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Kafka](https://img.shields.io/badge/Apache_Kafka-231F20?style=flat&logo=apache-kafka&logoColor=white)](https://kafka.apache.org/)

A modern, scalable time management system built with microservices architecture, designed to handle employee time tracking, company management, and comprehensive reporting.

## 🌟 Features

- **Authentication & Authorization**: Secure authentication using Keycloak
- **Employee Management**: Complete employee information management
- **Time Recording**: Track employee work hours and attendance
- **Company Management**: Handle multiple companies and departments
- **Timecard Processing**: Automated timecard generation and processing
- **API Documentation**: Swagger/OpenAPI documentation
- **Monitoring**: Elastic APM integration for performance monitoring
- **Event-Driven Architecture**: Kafka-based event processing

## 🏗 Architecture

The system is built using a microservices architecture with the following components:

- **Proxy Service**: Nginx-based API gateway
- **Auth Service**: Keycloak-based authentication and authorization
- **Employee Service**: Employee information management
- **Time Record Service**: Time tracking and attendance
- **Company Service**: Company and department management
- **Timecard Service**: Timecard processing and reporting

## 🚀 Getting Started

### Prerequisites

- Docker and Docker Compose
- Go 1.x
- Make (optional, for using Makefile commands)
- Git with SSH access configured

### Installation

1. Clone the repository with submodules:
```bash
git clone --recursive git@github.com:patricksferraz/timeclock.git
cd timeclock
```

If you've already cloned the repository without submodules, you can initialize them with:
```bash
git submodule update --init --recursive
```

2. Copy the environment file and configure it:
```bash
cp .env.example .env
```

3. Build and start the services:
```bash
make build
make up
```

### Project Structure

The project is organized as a monorepo with the following structure:

```
timeclock/
├── services/
│   ├── auth-keycloak-acl/     # Authentication service
│   ├── employee-service/      # Employee management service
│   ├── time-record-service/   # Time tracking service
│   ├── company-service/       # Company management service
│   └── timecard-service/      # Timecard processing service
├── swagger/                   # API documentation
├── .config/                   # Configuration files
└── docker-compose.yml         # Service orchestration
```

### Available Make Commands

- `make build` - Build all services
- `make up` - Start all services
- `make down` - Stop and remove all services
- `make logs` - View service logs
- `make ps` - Check service status
- `make attach SERVICE=<service_name>` - Attach to a service container

## 🔧 Configuration

The system can be configured through environment variables. Key configurations include:

- Service ports
- Database credentials
- Keycloak settings
- Kafka configuration

See `.env.example` for all available configuration options.

## 📚 API Documentation

Once the services are running, you can access the Swagger documentation at:
```
http://localhost:9191
```

## 🔍 Monitoring

The system includes Elastic APM integration for monitoring:

- APM Server: http://localhost:8200
- Kibana: http://localhost:5601
- Elasticsearch: http://localhost:9200

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Workflow

When working with submodules:

1. Make changes in the respective service submodule
2. Commit and push changes in the submodule
3. Update the main repository to point to the new submodule commit
4. Commit and push the main repository

## 📝 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Keycloak](https://www.keycloak.org/) for authentication
- [Apache Kafka](https://kafka.apache.org/) for event streaming
- [Elastic APM](https://www.elastic.co/apm) for monitoring
- [PostgreSQL](https://www.postgresql.org/) for data storage
