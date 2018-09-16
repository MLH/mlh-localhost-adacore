package Stack with SPARK_Mode => On is

   procedure Push (V : Character)
     with Pre => not Full,
     Post => Size = Size'Old + 1;

   procedure Pop (V : out Character)
     with Pre => not Empty,
     Post => Size = Size'Old - 1;

   procedure Clear
     with Post => Size = 0;

   function Top return Character
     with Post => Top'Result = Storage(Last);

   Max_Size : constant := 9;
   --  The stack size.

   Last : Integer range 0 .. Max_Size := 0;
   --  Indicates the top of the stack. When 0 the stack is empty.

   Storage : array (1 .. Max_Size) of Character;
   --  The stack. We push and pop pointers to Values.

   function Full return Boolean is (Last >= Max_Size);

   function Empty return Boolean is (Last < 1);

   function Size return Integer is (Last);

end Stack;
