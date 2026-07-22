<p align="center">
  <img src="assets/bootcamp-header.svg" alt="Dart Zero to Hero Bootcamp" width="800">
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0-lightgrey.svg" alt="License CC BY-NC-SA 4.0"></a>
  <a href="#"><img src="https://img.shields.io/badge/weeks-10-yellow.svg" alt="10 Weeks"></a>
  <a href="#"><img src="https://img.shields.io/badge/hours-60-orange.svg" alt="60 Hours"></a>
  <a href="#"><img src="https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white" alt="Dart"></a>
</p>

<p align="center">
  <a href="README.md"><img src="https://img.shields.io/badge/🇪🇸_Español-0969DA?style=for-the-badge&logoColor=white" alt="Versión en Español"></a>
</p>

---

## 📋 Description

Intensive **10-week (~2.5 months)** bootcamp focused on **pure Dart** — the language, with no
framework on top. Designed to take developers with **prior programming experience (OOP, control
flow, functions) but no Dart** to a deep command of the language: null safety, collections,
advanced OOP, generics, pattern matching, asynchrony, testing and packaging — with the final
week as an explicit bridge into [`bc-flutter`](https://github.com/ergrato-dev/bc-flutter).

### 🎯 Objectives

By the end of the bootcamp, students will be able to:

- ✅ Master null safety and Dart's type system (`var/final/const`, `?`, `??`, `late`)
- ✅ Write idiomatic functions: closures, named/optional parameters, arrow functions
- ✅ Work with collections (`List/Set/Map`) using functional operators (`map/where/fold/reduce`)
- ✅ Design classes with `const`/`factory` constructors, inheritance, mixins and extension methods
- ✅ Use generics, records and pattern matching (`switch` with destructuring, sealed classes)
- ✅ Handle errors with custom exceptions and the Result pattern
- ✅ Write asynchronous code with `Future`/`async`/`await`, `Stream` and `Isolate`
- ✅ Test code with `dart test`, package with `pub`, and work with JSON and `dart:io`
- ✅ Design a layered architecture (domain/data/state) reusable in Flutter

### 🚀 Why pure Dart before Flutter?

> **Master the language before the framework** — null safety, async and OOP are learned better
> without the simultaneous cognitive load of widgets, layout and a mobile app's lifecycle.

This bootcamp follows the same "bridge language → framework" pattern used across this catalog
(e.g. TypeScript before React). `bc-flutter/week-01` already covers a self-contained 16h intro
to Dart — this repo does not replace it: it goes much deeper (generics, records/pattern
matching, sealed classes, isolates, testing, packaging) than that introductory 16h ever covers,
and both bootcamps are independently completable.

---

## 🗓️ Bootcamp Structure

|              Phase              | Weeks | Hours | Main Topics                                                              |
| :------------------------------: | :---: | :---: | -------------------------------------------------------------------------- |
| **Language Fundamentals**         |  1-2  |  12h  | Environment/tooling, variables, null safety, control flow, functions       |
| **OOP and Advanced Types**        |  3-6  |  24h  | Collections, classes, inheritance/mixins/extensions, generics, pattern matching |
| **Error Handling and Asynchrony** |  7-8  |  12h  | Exceptions, Result pattern, Future/async/await, Streams, isolates          |
| **Tooling and Final Project**     | 9-10  |  12h  | Testing, packages/pub, JSON, CLI apps, bc-flutter bridge project           |

**Total: 10 weeks** | **60 hours** of intensive training

---

## 📚 Weekly Content

Every week includes:

```
bootcamp/week-XX-main_topic/
├── README.md                 # Description and objectives
├── rubrica-evaluacion.md     # Grading criteria
├── 0-assets/                 # Images and diagrams
├── 1-teoria/                 # Theory material
├── 2-practicas/              # Guided exercises
├── 3-proyecto/               # Weekly project
├── 4-recursos/               # Additional resources
│   ├── ebooks-free/
│   ├── videografia/
│   └── webgrafia/
└── 5-glosario/               # Key terms
```

See the full week-by-week syllabus in [docs/plan-estudios.md](docs/plan-estudios.md).

### 🔑 Key Components

- 📖 **Theory**: Fundamental concepts with real-world examples
- 💻 **Practice**: Progressive exercises and hands-on projects
- 📝 **Evaluation**: Knowledge, performance and product evidence
- 🎓 **Resources**: Glossaries, references and supplementary material

---

## 🛠️ Tech Stack

| Technology            | Use                                   |
| ----------------------- | -------------------------------------- |
| Dart (stable channel)    | Sole course language (null safety)    |
| `test`                    | Unit testing                          |
| `args`                    | CLI argument parsing                  |
| `path`                    | Cross-platform path handling          |
| `lints`                   | Static analysis rules                 |
| Docker / Docker Compose   | Reproducible environment (100% of the workflow, no GUI limitation) |
| GitHub Actions            | External PR auto-management         |

> Exact pinned versions and audit calendar in [docs/stack-versions.md](docs/stack-versions.md) — fixed at the start of each cohort for reproducibility.

**Development environment**: Docker (100% of the workflow: run/analyze/test/build) **or** local Dart SDK — both paths are equally valid, see [docs/setup/README.md](docs/setup/README.md).

> 🐳 Unlike `bc-flutter`, Docker has **no GUI limitation** here: a Dart console program runs
> identically inside the container and on the host.

---
## 🚀 Quick Start

### Prerequisites

- **Dart SDK** (stable channel) **or** **Docker 27+** + **Docker Compose 2.31+** (see [docs/setup/README.md](docs/setup/README.md) to choose)
- **Git** for version control
- **VS Code** (recommended) with the included extensions
- Basic object-oriented programming knowledge (no prior Dart required)

### 1. Clone the Repository

```bash
git clone https://github.com/ergrato-dev/bc-dart.git
cd bc-dart
```

### 2. Install VS Code Extensions

```bash
# Open in VS Code
code .

# Recommended extensions will appear automatically
# Or run: Ctrl+Shift+P → "Extensions: Show Recommended Extensions"
```

### 3. Go to the Current Week

```bash
cd bootcamp/week-01-fundamentos_dart_y_entorno
```

### 4. Follow the Instructions

Each week contains a `README.md` with detailed instructions.

### 5. Validate Your Code

```bash
# With Docker
docker compose run --rm dart dart analyze
docker compose run --rm dart dart test

# With local SDK
dart analyze
dart test
```

See [docs/setup/README.md](docs/setup/README.md) for the full flow.

---

## 📊 Learning Methodology

### Teaching Strategies

- 🎯 **Project-Based Learning (PBL)**
- 🏛️ **Unique Domains**: Each learner applies concepts to their assigned domain (anti-copy)
- 🧩 **Deliberate Practice**
- 🌉 **Bridge Language**: real depth in Dart before introducing any framework
- 👥 **Peer Code Review**
- 🎮 **Live Coding**

### Time Distribution (6h/week)

- **Theory**: 2 hours
- **Practice**: 2 hours
- **Project**: 2 hours

### Evaluation

Every week includes three types of evidence:

1. **Knowledge 🧠** (30%): Quizzes and theoretical assessments
2. **Performance 💪** (40%): In-class practical exercises
3. **Product 📦** (30%): Gradable deliverables (functional projects)

**Passing criteria**: Minimum 70% in each evidence type. Implementation consistent with the assigned domain. Originality: no copying between learners.

---

## 🏛️ Unique Domains Policy (Anti-Copy)

Each learner receives a **unique domain assigned by the instructor** from day one, used across
every project in the bootcamp. Domains are **not defined in this repo** — they're assigned and
tracked by the `sena/eval-semanal` app over the shared catalog
`bc-sql/scripts/assign_domains.py` (150 domains, 15 reserved for examples). The canonical domain
used across all theory/examples in this repo is **Library** (`Biblioteca`) — never assigned to
a student.

**Goal:**

- ✅ Prevent copying between students
- ✅ Encourage original implementations
- ✅ Apply general concepts to specific contexts
- ✅ Develop abstraction and adaptation skills

**Instructor responsibilities:**

1. Assign a unique domain to each learner at the start (via `sena/eval-semanal`)
2. Keep a record of assigned domains
3. Never repeat domains within the same group
4. Validate domain consistency during evaluations

---

## 📞 Support

- 💬 **Discussions**: [GitHub Discussions](https://github.com/ergrato-dev/bc-dart/discussions)
- 🐛 **Issues**: [GitHub Issues](https://github.com/ergrato-dev/bc-dart/issues)

---

## ⚠️ Disclaimer

This repository is an **educational** resource created for learning purposes. By using it, you accept the following terms:

- **Educational purposes only**: Content, code examples and projects are designed exclusively for teaching and learning. They do not constitute professional, legal or security advice.
- **No warranties**: The material is provided **"as is"**, without warranties of any kind, express or implied, including fitness for a particular purpose or absence of errors.
- **Production code**: Code examples are illustrative. Before using them in production environments, perform security, performance and context-specific reviews.
- **Software versions**: Library and tool versions mentioned may become outdated. Always check the latest official documentation.
- **Limitation of liability**: The authors and contributors are not responsible for data loss, direct or indirect damages, service interruptions, or any other harm arising from the use of this material.
- **Student responsibility**: Each student is responsible for their own implementations, development environments and technical decisions.

---

## 📄 License

This project is licensed under **[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)** (Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International).

**You can:** share and adapt the material, even create educational forks.<br>
**You cannot:** use this material for commercial purposes.<br>
**You must:** give appropriate credit and distribute adaptations under the same license.

See the [LICENSE](LICENSE) file for the full text.

---

## 🏆 Acknowledgments

- [Dart](https://dart.dev/) — For the language
- Dart Community — For resources and examples
- All contributors

---

## 📚 Additional Documentation

- [🤖 Copilot Instructions](.github/copilot-instructions.md)
- [📜 Code of Conduct](CODE_OF_CONDUCT.md)
- [🔒 Security Policy](SECURITY.md)
- [🗓️ Detailed Study Plan](docs/plan-estudios.md)

---

<p align="center">
  <strong>🎓 Dart Bootcamp - Zero to Hero</strong><br>
  <em>From zero Dart knowledge to deep language mastery in 2.5 months</em>
</p>

<p align="center">
  <a href="bootcamp/week-01-fundamentos_dart_y_entorno">Start Week 1</a> •
  <a href="https://github.com/ergrato-dev/bc-dart/issues">Report Issue</a>
</p>

<p align="center">
  Made with ❤️ for the developer community
</p>
