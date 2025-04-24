# Assignment 1 - ANTLR Lexical Analyzer

**Student:** Moamen Abdelrahman  
**ID:** 52-13244  
**Tutorial Number:** 10  
**Course:** Compilers - Spring 2025  
**Instructor:** Assoc. Prof. Haythem O. Ismail  
**University:** German University in Cairo

---

## 🧠 Objective

The goal of this assignment is to implement a simple **lexical analyzer** using ANTLR 4.  
The program takes as input a non-empty binary string and processes it into segments, each producing an associated output.

---

## 📋 Requirements

Each input is segmented into substrings as follows:

- A segment is always 3 bits if 3 bits are available.
- If the segment is exactly `"101"` → output is `101,4`
- If the segment has 3 bits but not `"101"` → output is `segment,sum`, where `sum` is the sum of its bits.
- If the segment has fewer than 3 bits → output is `segment,ERROR`

The final result is a semicolon-separated list of `segment,value` entries.

---

## 🧪 Examples

| Input       | Output                    |
|-------------|----------------------------|
| `11010`     | `110,2;10,ERROR`           |
| `101111110` | `101,4;111,3;110,2`        |
| `0`         | `0,ERROR`                 |
| `11`        | `11,ERROR`                |

---

## ✅ Files Included

- `Assignment1.g4` – the grammar file (ANTLR v4)
- `README.md` – this file (project summary)
