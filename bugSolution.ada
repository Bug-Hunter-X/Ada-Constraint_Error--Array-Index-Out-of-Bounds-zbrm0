```ada
procedure Example is
   subtype Positive_Index is Integer range 1 .. 10;
   type My_Array is array (Positive_Index) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array
begin
   -- Check index before access
   if 1 <= 11 and 11 <= Positive_Index'Last then
      My_Arr(11) := 5; 
   else
      Put_Line("Index out of bounds");
   end if;
   -- Or use a more robust solution
   -- Use a container like a bounded vector
   use Ada.Containers.Bounded_Vectors;
   My_Bounded_Vector : Bounded_Vector(1 .. 10, Integer); -- creates a bounded vector of Integer of size 10
   My_Bounded_Vector.Append(5); 
   -- Using exception handling
   begin
     My_Arr(11) := 5;  
exception
     when Constraint_Error =>
       Put_Line("Index out of bounds");
   end;
end Example;
```