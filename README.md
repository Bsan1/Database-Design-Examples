# Database Systems Learning Projects

A collection of technical projects exploring how databases are modeled, normalized, queried, and organized for efficient storage and retrieval.

## Entity-relationship modeling

System requirements are translated into Chen-notation ER diagrams with entities, attributes, relationships, cardinalities, and participation constraints. The models cover practical domains such as network registration and event management.

This project develops the ability to turn written requirements into a consistent conceptual data model before implementation begins.

```text
Student -> owns -> Device -> has -> Registration
Registration -> approved by -> Network Engineer
```

## EER to relational mapping

Extended ER models introduce specialization and generalization, then map the resulting structure to relational tables with primary keys, foreign keys, and integrity constraints.

The work connects high-level domain modeling with the concrete schemas used by relational database systems.

## Normalization and relational algebra

Functional dependencies are used to identify candidate keys and decompose relations into 3NF and BCNF. Relational algebra expressions then describe selections, projections, joins, and grouped operations over the resulting schemas.

The project shows how normalization reduces duplicated data and prevents update, insertion, and deletion anomalies while preserving the meaning of the data.

```text
student_id -> student_phone, student_university
course_id  -> course_name
payment_id -> amount, date, lecture, course
```

## Oracle SQL and data modeling

An Oracle SQL dataset and supporting workbook model a network registration system. The material provides concrete data for exploring schema design, queries, constraints, and reporting.

```sql
SELECT model, os
FROM Device;
```

## File structures and indexing

Worked designs cover chained hashing, extendible hashing, B+ tree search and deletion, clustering indexes, and secondary indexes. They examine how storage structures affect the cost of lookup, insertion, and deletion operations.

## Contributors

- Barış Şan
- Bora Bedirhan Uyar
