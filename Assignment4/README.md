# Assignment 4 – SQL Revision (Quiz Prep, NOT Graded)

**Topic:** SQL revision material for a follow-up quiz (19 December 2024). Unlike
Assignments 1, 2, 3 and 5, the spec explicitly states: *"It will NOT be a graded
assignment, and you do NOT need to do a submission. However, you will have a
follow-up quiz from this assignment."* So there is no student "submission" PDF
for this one — the zip is the instructor-provided practice package.

Two use cases, both revising DDL/DML/SELECT/JOIN/aggregation in Oracle SQL:
- **Use Case 1 – METU NetRegister:** a full schema + data is provided
  (`NetRegister.sql`); the student is meant to load it into Oracle 21c XE and
  write 6 SELECT queries against it (listed in the spec PDF).
- **Use Case 2 – Desire for Velocity:** only a schema description and a data
  file (`DesireForVelocityData.xlsx`) are provided; the student is meant to
  write the `CREATE TABLE` statements themselves, load the Excel data, and
  then write 6 more SELECT queries (listed in the spec PDF).

**Included (from `CNG_351__Assignment_4_Fall_2024_2025_full.zip`, extracted into
`extracted/`, original zip kept alongside it):**
- `CNG_351__Assignment_4_Fall_2024_2025_full.pdf` – the spec/quiz-prep
  document itself, with both use cases' relations, domains, and the 12 query
  prompts (6 per use case).
- `NetRegister.sql` – Oracle SQL script: `DROP TABLE`/`CREATE TABLE` DDL for
  8 tables (Student, Device, DeviceSpecification, Registration,
  NetworkEngineer, BlockHistory, VPNConnectionHistory, NetworkIssues) plus
  `INSERT` statements populating sample data. This is provided setup data, not
  student-written query answers — it contains no `SELECT` statements.
- `DesireForVelocityData.xlsx` – sample data for Use Case 2, to be inserted
  into tables the student creates.

**Completeness assessment:** Not applicable in the usual sense — there was
nothing to submit, so there is no "student attempt" to grade here. What's in
the zip is exactly the instructor-provided starting material (spec + Use Case 1
DDL/data script + Use Case 2 raw data). If Barış/Bora went on to write the 12
SELECT queries described in the PDF, those query scripts are not present
anywhere in this zip.

**Note on execution:** `NetRegister.sql` and any queries written against it are
genuine Oracle SQL (uses `VARCHAR2`, `TO_TIMESTAMP`, etc.) and were NOT run
locally as part of this reorganization. To actually verify/execute them you'd
need an Oracle-compatible sandbox (e.g. Oracle 21c XE, as the spec specifies)
in a cloud environment — a local install was intentionally not attempted here.

## Re-checked (second pass)

Checked whether a real Oracle-compatible run was feasible in this sandbox
before leaving this as-is: no Docker daemon is available (checked directly),
and a from-scratch Oracle 21c XE install (RPM-based, needs specific kernel
params/swap/systemd) is out of proportion for a file that, per the spec
itself, **is not a graded student submission and has no student work to
verify** — `NetRegister.sql` is instructor-provided setup material, not
something Barış wrote. Skipping a heavier install attempt here was a
deliberate proportionality call, not an unexamined "can't verify."
