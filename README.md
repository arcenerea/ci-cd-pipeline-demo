# 🚀 CI/CD Pipeline Demo

A practical DevOps pipeline demonstration using Jenkins and GitHub Actions. Covers automated testing, Docker image building and continuous deployment.

Built and documented by [Nerea Arce](https://www.linkedin.com/in/nerea-arce/) · SysAdmin & DevOps Engineer

---

## Pipeline overview

| Stage | Tool | Description |
|-------|------|-------------|
| Source control | GitHub | Push to main triggers the pipeline |
| Build | Docker | Builds a container image |
| Test | Shell/pytest | Runs automated tests |
| Deploy | GitHub Actions | Deploys to GitHub Pages |

---

## Repository structure

    ci-cd-pipeline-demo/
    ├── .github/
    │   └── workflows/
    │       └── ci-cd.yml        # GitHub Actions pipeline
    ├── Jenkinsfile               # Jenkins pipeline definition
    ├── Dockerfile                # Container image definition
    ├── app/
    │   └── index.html           # Sample application
    └── README.md

---

## GitHub Actions pipeline

The workflow triggers on every push to `main` and runs the following stages:

1. Checkout code
2. Build Docker image
3. Run tests
4. Deploy to GitHub Pages

See `.github/workflows/ci-cd.yml` for the full pipeline definition.

---

## Jenkins pipeline

The `Jenkinsfile` defines a declarative pipeline with the following stages:

1. **Checkout** — clones the repository
2. **Build** — builds the Docker image
3. **Test** — runs automated tests inside the container
4. **Deploy** — deploys the application

---

## How to run locally

Clone the repository:

    git clone https://github.com/arcenerea/ci-cd-pipeline-demo
    cd ci-cd-pipeline-demo

Build and run with Docker:

    docker build -t ci-cd-demo .
    docker run -p 8080:80 ci-cd-demo

Open your browser at `http://localhost:8080`

---

## Tech stack

![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=flat-square&logo=jenkins&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![HTML](https://img.shields.io/badge/HTML-E34F26?style=flat-square&logo=html5&logoColor=white)

---

## Author

**Nerea Arce** — SysAdmin · DevOps · Cloud Infrastructure

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nerea-arce/)
[![GitHub](https://img.shields.io/badge/GitHub-arcenerea-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/arcenerea)
