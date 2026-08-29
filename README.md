# CNG351 Data Management and File Structures

Database design and data-organization work built around several case studies, including METU NetRegister, ACM Fest, Desire for Velocity, and an online tutoring system.

## Data modeling

The first stage models each system with Chen-notation ER diagrams. The designs identify entities, attributes, relationships, cardinalities, participation constraints, and assumptions. They are then extended with EER concepts such as specialization and generalization and mapped into relational schemas with primary and foreign keys.

## Relational design

The schemas are checked against 1NF, 2NF, 3NF, and BCNF. Functional dependencies are used to explain each decomposition. Relational-algebra expressions cover filtering, projection, joins, and aggregation over the NetRegister database.

## SQL implementation

The SQL work uses Oracle-style DDL and DML to create tables, define constraints, load data, and answer queries across the NetRegister and racing-game datasets.

## File structures and indexing

The final part explores how records are stored and located on disk. It includes static hashing with chained overflow, extendible hashing with bucket splits, B+ tree search and deletion, clustering indexes, and secondary indexes.

## Topics

- ER and EER modeling
- Relational schema design
- Normalization and functional dependencies
- Relational algebra and SQL
- Hash files, B+ trees, and indexes

## Team

- Barış Şan - 2526689
- Bora Bedirhan Uyar - 2526788
