
sig Word {}

sig Block { 
  var Next  : lone Block,  -- simple
  var hash  : one Word, 
  var Phash : lone Word 
}

pred inv1 { Phash = ~Next . hash } -- hash of the previous block, if it exists

pred inv2 {  no Next & iden  }     -- Next is irreflexive

pred inv3 { Next . ~Next in iden }  -- Next is injective

pred inv5 {   no ^Next & iden } -- acyclic

-- actions -------------------------------------------------

-- Nothing happens
pred nop {
    Next '= Next
    hash' = hash
    Phash' = Phash
}

pred addBlock [b:Block, w : Word]{
    //guards
--     let last = Block - Block.(Next.~Next & iden) 
        { b not in (Block.(Next.~Next + ~Next.Next))
        }

    //effects
    hash' = hash + b -> w  
    let last = Block - Block.(Next.~Next & iden) 
        { Next' = Next + last -> b
          -- no b.Next'     
          Phash' = Phash + b -> last.hash 
       }

        //frame conditions
}

-- behaviour -------------------------------------------------

fact init { 
    inv1
    inv2
    inv3
    hash . ~hash in iden -- injective
    inv5
   # Next = 2
}

fact Traces {
    always (-- nop or 
            some b : Block, w : Word | addBlock[b,w])
}

run { } for 5 Block, 5 Word


