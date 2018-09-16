package body Stack
with SPARK_Mode => On
is
   -----------
   -- Clear --
   -----------

   procedure Clear is
   begin
      Last := Storage'First;
   end Clear;

   ----------
   -- Push --
   ----------

   procedure Push (V : Character) is
   begin
      Storage (Last) := V;
   end Push;

   ---------
   -- Pop --
   ---------

   procedure Pop (V : out Character) is
   begin
      Last := Last - 1;
      V := Storage (Last);
   end Pop;

   ---------
   -- Top --
   ---------

   function Top return Character is
   begin
      return Storage (1);
   end Top;

end Stack;
