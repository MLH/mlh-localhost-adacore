with Ada.Text_IO; use Ada.Text_IO;
with Stack;       use Stack;

procedure Example is
   Done : Boolean := False;

   --------------------
   -- Get_User_Input --
   --------------------

   function Get_User_Input return Character is
   begin
      loop
         declare
            User_Input : String := Get_Line;
         begin
            if User_Input'Length = 1 then
               return User_Input (User_Input'First);
            end if;

            Put_Line ("Invalid Input, please try again!");
            Put ("input > ");
         end;
      end loop;
   end Get_User_Input;

   -----------
   -- Debug --
   -----------

   procedure Debug is
   begin
      Put_Line ("**************************************");

      Put_Line ("Size: " & Integer'Image(Stack.Size));
      Put_Line ("Max Size: " & Integer'Image(Stack.Max_Size));

      if not Stack.Empty then
         Put_Line ("Top: " & Stack.Top);

         Put ("Stack: [");
         for I in Stack.Tab'First .. Stack.Size loop
            Put (Stack.Tab(I) & ", ");
         end loop;
         Put_Line ("]");
      else
         Put_Line ("Top: Null");
         Put_Line ("Stack: []");
      end if;

      Put_Line ("**************************************");
   end Debug;

begin

   ----------
   -- Main --
   ----------

   while not Done = True loop
      Put ("input > ");

      declare
         S : Character := Get_User_Input;
      begin
         if S = 'q' then
            Done := True;
         elsif S = 'd' then
            Debug;
         elsif S = 'p' then
            if not Stack.Empty then
               Stack.Pop (S);
               Put_Line ("Popped: " & S);
            else
               Put_Line ("Nothing to Pop, Stack is empty!");
            end if;
         else
            if not Stack.Full then
               Stack.Push (S);
               Put_Line ("Pushed: " & S);
            else
               Put_Line ("Could not push '" & S & "', Stack is full!");
            end if;
         end if;
      end;
   end loop;

   Put_Line ("Example ended.");
end Example;
