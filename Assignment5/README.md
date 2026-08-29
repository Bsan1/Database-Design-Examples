# Assignment 5 – File Structures and Indexing

**Topic:** (4% of grade) Disk storage, hashing, and indexing. Q1: static hash file
with chained overflow, two different hash functions, and a comparison.
Q2: Extendible hashing — load 13 records step by step, showing directory
doubling, global/local depth, and bucket splits. Q3: B+ tree (max degree 3) —
trace a SELECT lookup and perform a DELETE with underflow handling.
Q4: clustering index (on player_id) and secondary index (on car_name) over a
race/car relation.

**Included:**
- `CNG_351__Assignment_5_Fall_2024_2025.pdf` – assignment spec.
- `25256689_2526788_Assignment5.pdf` – Barış Şan & Bora Bedirhan Uyar's
  submission (filename uses slightly different digit ordering for the student
  IDs than other assignments, but title page confirms same authors/IDs
  2526689 / 2526788).

**Completeness assessment:** Complete. All four questions are answered with
handwritten (scanned) work as explicitly permitted by the spec: Q1 parts a–c
(both hash tables built with chained overflow, plus a justified comparison of
which hash function is better), Q2 (full step-by-step extendible hashing trace
across 13 inserts including two directory-doubling events), Q3 (B+ tree lookup
path highlighted and the delete/underflow/redistribution shown with the
resulting tree), and Q4 (both clustering-index and secondary-index diagrams).
No missing sections.
