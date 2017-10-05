package body Stack
with SPARK_Mode => On
is
   -----------
   -- Clear --
   -----------

   procedure Clear is
   begin
      Last := Tab'First;
   end Clear;

   ----------
   -- Push --
   ----------

   procedure Push (V : Character) is
   begin
      Tab (Last) := V;
   end Push;

   ---------
   -- Pop --
   ---------

   procedure Pop (V : out Character) is
   begin
      Last := Last - 1;
      V := Tab (Last);
   end Pop;

   ---------
   -- Top --
   ---------

   function Top return Character is
   begin
      return Tab (1);
   end Top;

end Stack;
