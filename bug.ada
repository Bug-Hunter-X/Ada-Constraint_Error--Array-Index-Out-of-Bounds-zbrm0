```ada
procedure Example is
   subtype Positive_Index is Integer range 1 .. 10;
   type My_Array is array (Positive_Index) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array
begin
   My_Arr(11) := 5; -- This will raise Constraint_Error
end Example;
```