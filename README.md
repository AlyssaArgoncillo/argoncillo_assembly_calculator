# argoncillo_assembly_calculator

## Problem Title
Design a Basic Calculator in Assembly Language

---

### 🎯 Objective
Write an assembly language program that performs basic arithmetic operations (addition, subtraction, multiplication, and division) on two numbers.

---

### 📝 Problem Description
Create a program that:
- Accepts two integer inputs (stored in registers or defined in memory).
- Accepts an operation choice:
  - `1 → Addition`
  - `2 → Subtraction`
  - `3 → Multiplication`
  - `4 → Division`
- Performs the selected operation.
- Stores the result in a register (e.g., AX).
- Displays or returns the result.

---

### ⚙️ Requirements
- Use **8086 Assembly Language instructions**.
- Use the following registers:
  - `AX`, `BX` → operands
  - `CX` → operation selector
- Use appropriate instructions:
  - `ADD`, `SUB`, `MUL`, `DIV`
- Handle division carefully (clear `DX` before division).

---

### 💻 Sample Input
AX = 10
BX = 5
Operation = 1 (Addition)

---

### ✅ Expected Output
Result = 15
