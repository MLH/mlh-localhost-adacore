package body Stack
with SPARK_Mode => On
is
   -----------
   -- Clear --
   -----------

   procedure Clear is
   begin
      Last := Tab'First - 1;
   end Clear;

   ----------
   -- Push --
   ----------

   procedure Push (V : Character) is
   begin
      Last := Last + 1;
      Tab (Last) := V;
   end Push;

   ---------
   -- Pop --
   ---------

   procedure Pop (V : out Character) is
   begin
      V := Tab (Last);
      Last := Last - 1;
   end Pop;

   ---------
   -- Top --
   ---------

   function Top return Character is
   begin
      return Tab (Last);
   end Top;

end Stack;
