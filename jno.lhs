
sig Ne { 
  R  : set Ne,
  Si : lone Sig,
  S  : lone Sw
  }

sig Sig, Sw {} 

-- all joins have signals

fact{
   R.~R - Si.(Sig->Sig).~Si in iden
}

-- all forks have switches

fact{
   ~R.(R - S.(Sw->Ne)) in iden
}

-- R is irreflexive

fact{
  R - iden = R
  R - ~R = R
  no (^R & iden)
 -- no (^R & R)
}

-- signals are not shared and switches are not shared

fact{
   S.~S in iden
   Si.~Si in iden
}

run { 
  some R
  some Si
  some S
  not (R.~R in iden) -- there are joins
  not (~R.R in iden) -- theres are forks
} for exactly 4 Ne, 4 Sig, 4 Sw


