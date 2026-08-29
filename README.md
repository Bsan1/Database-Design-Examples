# Database Design Examples

Database modeling, querying, normalization, and indexing examples built around network registration, event management, online tutoring, and racing-game systems.

## ER modeling example

Requirements are converted into Chen-notation ER diagrams with entities, attributes, relationships, cardinalities, and participation constraints. EER models add specialization and generalization before being mapped to relational tables.

```text
Student -> owns -> Device -> has -> Registration
Registration -> approved by -> Network Engineer
```

## Normalization example

Functional dependencies are used to decompose large relations into 3NF and BCNF schemas while preserving the meaning of the data.

```text
student_id -> student_phone, student_university
course_id  -> course_name
payment_id -> amount, date, lecture, course
```

## Querying example

Relational algebra and Oracle SQL are used for selections, projections, joins, and grouped reports across the sample databases.

```sql
SELECT model, os
FROM Device;
```

## Indexing example

The repository also contains worked examples of chained hashing, extendible hashing, B+ tree search/deletion, clustering indexes, and secondary indexes.

## Team

- Barış Şan - 2526689
- Bora Bedirhan Uyar - 2526788
