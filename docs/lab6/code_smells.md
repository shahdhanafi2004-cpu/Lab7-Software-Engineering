# Part C - Code Smells Analysis

| Code Smell                | Location                  | Explanation                                                                                    | Principle Violated                    |
| ------------------------- | ------------------------- | ---------------------------------------------------------------------------------------------- | ------------------------------------- |
| Magic Number              | `ScholarshipPolicy.fee()` | The value `0.5` is hard-coded without explaining its meaning.                                  | Readability and Maintainability       |
| Multiple Responsibilities | `make_invoice()`          | The function selects the policy, calculates the fee, formats the invoice, and writes the file. | Single Responsibility Principle (SRP) |
| Tight Coupling            | `make_invoice()`          | The function creates a `FileWriter` directly when no writer is provided.                       | Dependency Inversion Principle (DIP)  |
| Limited Extensibility     | `POLICIES` dictionary     | Adding a new policy requires modifying the existing policy registry.                           | Open/Closed Principle (OCP)           |

## Conclusion

These code smells make the invoice module harder to maintain and extend.
Refactoring improves readability, separates responsibilities, and makes the code easier to test.
