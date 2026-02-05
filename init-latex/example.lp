symbol Cod: TYPE;
symbol IntCod : Cod;
symbol BitVectorCod : Cod;
symbol UF_Cod : Cod;

// Very Simple Universe for SMT types
symbol SimpleUnivSMT : Cod → TYPE;

// Natural numbers
constant symbol Nat : TYPE;
constant symbol zero : Nat;
constant symbol suc : Nat → Nat;

constant symbol pos    : Nat → SimpleUnivSMT IntCod;
constant symbol negsuc : Nat → SimpleUnivSMT IntCod;

// Addition on integers
symbol + : SimpleUnivSMT IntCod → SimpleUnivSMT IntCod → SimpleUnivSMT IntCod;
notation + infix right 6;

// x + 0 = x
rule $x + pos zero ↪ $x;
