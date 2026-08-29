# Assignment 2 – EER Design and Logical Mapping

**Topic:** Extends Assignment 1 (6% of grade). Part 1: revise two of the four use
cases (ACM Fest Management System, Desire for Velocity) with more detailed/
updated requirements, modeled using EER (specialization/generalization,
union types, etc.). Part 2: map two use cases (METU NetRegister, Desire for
Velocity), given as EER diagrams in the spec, down to a logical (relational)
design using the PK/FK notation defined in the spec.

**Included:**
- `CNG_351__Assignment_2_Fall_2024_2025.pdf` – assignment spec.
- `BarisBora351Assignment2.pdf` – Barış Şan & Bora Bedirhan Uyar's submission.

**Completeness assessment:** Complete. Part 1 has EER diagrams with assumptions
for both required use cases (ACM Fest, Online Tutoring System — note: the
submission's Part 1 covers "ACM Fest" and "Online Tutoring System", matching
the spec's actual Part 1 use cases). Part 2 has logical-mapping tables for both
METU NetRegister and Desire for Velocity, using the underline/dotted-underline
PK/FK notation requested. Minor issue: a couple of foreign-key references in the
Part 2 NetRegister mapping (e.g. `Registration.ApprovedBy[]`,
`Block.RegistrationID[]`) have empty/unfinished `[FK: ...]` target annotations —
worth double-checking against the grading rubric, but the overall structure and
all required relations are present.
