## Kryptonite for Kafka 🫶 Kroxylicious

This repository contains a growing list of  self-contained demo scenarios showcasing a development snapshot of the upcoming **[Kryptonite for Kafka](https://hpgrahsl.github.io/kryptonite-for-kafka/dev/)** proxy filter for  **[Kroxylicious](https://kroxylicious.io)**. Each scenario uses Docker Compose to spin up the minimum viable local stack needed to demonstrate various field-level encryption capabilities applied at the Kafka proxy layer.

### About the Stack

- **[Kroxylicious](https://kroxylicious.io):** is an Apache Kafka® protocol-aware proxy. It can be used to layer uniform behaviours onto a Kafka based system in areas such as data-governance, security, policy enforcement and audit without needing to change either the applications or the Kafka Cluster.
- **[Kryptonite for Kafka](https://github.com/hpgrahsl/kryptonite-for-kafka):** is a client-side 🔒 field level 🔓 cryptography "suite" for Apache Kafka® offering an Apache Kafka Connect SMT, ksqlDB UDFs, Apache Flink® UDFs, a standalone HTTP API service, and will soon add a proxy filter plugin for Kroxylicious. It's an UNOFFICIAL community project.

---

## Scenarios

| # | Scenario | Description |
|---|----------|-------------|
| 1 | [Basic Field-Level Encryption & Decryption](scenario_01/README.md) | Transparent encryption and decryption of selected JSON payload fields at the proxy layer using a single AES-256-GCM keyset. Kafka console producers and consumers use the proxy endpoint unchanged; direct broker consumers see partially encrypted records only. |

#### Stay tuned! Several additional examples to showcase more sophisticated capabilities are in the making...
