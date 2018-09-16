package body Stack
with SPARK_Mode => On
is
   -----------
   -- Clear --
   -----------

   procedure Clear is
   begin
      Last := Storage'First - 1;
   end Clear;

   ----------
   -- Push --
   ----------

   procedure Push (V : Character) is
   begin
      Last := Last + 1;
      Storage (Last) := V;
   end Push;

   ---------
   -- Pop --
   ---------

   procedure Pop (V : out Character) is
   begin
      V := Storage (Last);
      Last := Last - 1;
   end Pop;

   ---------
   -- Top --
   ---------

   function Top return Character is
   begin
      return Storage (Last);
   end Top;

end Stack;
