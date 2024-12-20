# Ada Constraint_Error Example

This repository demonstrates a common error in Ada programming: attempting to access an array element outside of its defined index range.  The `bug.ada` file shows the erroneous code, resulting in a `Constraint_Error` exception. The solution, provided in `bugSolution.ada`, shows how to prevent this error using proper bounds checking and potentially dynamic arrays if needed.