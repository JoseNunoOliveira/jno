
import WikiScore
import Stave
import Abc

----------------------------------------------------------------------------------------------
------------------------  Te Deum : a 8 voci con Strumenti -----------------------------------
----------------------------------------------------------------------------------------------
-- Prj attributes
namespace = A "namespace" "totti"
musicby   = "Giuseppe Totti (17__-1832)"
title     = A "title" "Te Deum : a 8 voci con Strumenti"
facsimile = A "facsimile" "https://www4.di.uminho.pt/~jno/WS/fcr-216-73_0000.pdf"
--facsimile = A "facsimile" "https://purl.pt/32941/2/
--libreto   = A ""
latex     = A "latex" ""
introd = A "Introduction" "(TBC) From the score: \"All attual servizio di S. M. Fedelis.ma in qualità di Soprano. Esequito p[er] ordine del Eminentiss.mo Sig.re Cardilale [Cardinale] Bellisomi per il Solennis.mo rendimento di grazie a Dio del felice nascimento di S. A. R. Il Sig. D. Antonio Principe della Beira, nella Chiesa di N. S.ra di Loreto in Lisbona\""

-- Prj Parts
-- Prima orchestra
pt1  = Prt  1 "bass"     "Corni in Elafa [I]"    "Cor.I"  (Mid "1" "69") []
pt2  = Prt  2 "bass"     "Corni in Elafa [II]"   "Cor.II" (Mid "1" "69") []
pt3  = Prt  3 "treble"   "Oboe I"     "Ob.I"   (Mid "1" "68") []
pt4  = Prt  4 "treble"   "Oboe II"    "Ob.II"  (Mid "1" "68") []
pt5  = Prt  5 "treble"   "Violino Primo"  "Vl.I"   (Mid "1" "40") []
pt6  = Prt  6 "treble"   "Violini Secondo" "Vl. II" (Mid "1" "40") []
pt7  = Prt  7 "alto"     "Viola"      "V."     (Mid "1" "41") []
pt8  = Prt  8 "bass"     "Bassi"    "B."     (Mid "1" "42") []
---
pt9 = Prt 9 "bass"     "Violoncello Oblig.to"    "V.ob."     (Mid "1" "42") []
-- S.da orchestra
pt10 = Prt 10 "treble"   "Trombe in B fa [I]"   "Trb. I" (Mid "1" "56") []
pt11 = Prt 11 "treble"   "Tromba in B fa [II]"  "Trb.II" (Mid "1" "56") []
pt12 = Prt 12 "treble"   "Flauti [I]"           "Fl.I"   (Mid "1" "73") []
pt13 = Prt 13 "treble"   "Flauti [II]"          "Fl.II"  (Mid "1" "73") []
pt14 = Prt 14 "bass"     "Fagotti [I]"          "Fg. I"  (Mid "1" "68") []
pt15 = Prt 15 "bass"     "Fagotti [II]"         "Fg. II" (Mid "1" "68") []
pt16 = Prt 16 "treble"   "Violino Primo"        "Vl.I"   (Mid "1" "40") []
pt17 = Prt 17 "treble"   "Violini Secondo"      "Vl. II" (Mid "1" "40") []
pt18 = Prt 18 "alto"     "Viola"      "V."     (Mid "1" "41") []
pt19 = Prt 19 "bass"     "Bassi"                "B."     (Mid "1" "42") []
-- ..........
pt20 = Prt 20 "bass"     "Timpano"              "T."      Unspec        []
-- soloists
pt21 = Prt 21 "alto1"    "Canto P.mo"           "C.I"     Unspec  []
pt22 = Prt 22 "alto1"    "Canto S.do"           "C.II"    Unspec  []
pt23 = Prt 23 "alto"     "Alto P.mo"            "A.I"     Unspec  []
pt24 = Prt 24 "alto"     "Alto s.do"            "A.II"    Unspec  []
pt25 = Prt 25 "tenor"    "Tenore"               "T."      Unspec  []
pt26 = Prt 26 "bass"     "Basso"                "B."      Unspec  []
-- Primo coro
pt27 = Prt 27 "alto1"    "Canto"                 "C."     Unspec  []
pt28 = Prt 28 "alto"     "Alto"                  "A."     Unspec  []
pt29 = Prt 29 "tenor"    "Tenore"                "T."     Unspec  []
pt30 = Prt 30 "bass"     "Basso"                 "B."     Unspec  []
-- S.do coro
pt31 = Prt 31 "alto1"    "Canto"                 "C."     Unspec  []
pt32 = Prt 32 "alto"     "Alto"                  "A."     Unspec  []
pt33 = Prt 33 "tenor"    "Tenore"                "T."     Unspec  []
pt34 = Prt 34 "bass"     "Basso"                 "B."     Unspec  []
--

-- Prj Stave

base = [ Sq -- prima orchestra
            [ pa [1,2], pa [3,4], br [5,6], the 7, the 8, the 9 ],
         Sq -- seconda orchestra
            [ pa [10,11], pa [12,13], pa [14,15], br [16,17], the 18, the 19 ],
         the 20,
         Sq [ sq [ 21 .. 26 ]],
         Sq [ sq [ 27 .. 30 ]],
         Sq [ sq [ 31 .. 34 ]]
       ]

-- Prj Sections

status     = A "status" "just started"

shiftedBy n k = gurl (show (n+k)) (show n)

gurl s t = url (facfol s) t
           where facfol s = "https://purl.pt/28948/4/cic-12_PDF/cic-12_PDF_24-C-R0150/cic-12_0000_capa-capa_t24-C-R0150.pdf"++"#page="++s

-- Sections

s1= Sct "[Orchestral]" 1
        (Sel [1..19])
        (MLK "Bb" "1/4" "C")
        [ A "fol." $ 1 `shiftedBy` 0, status ]
s2= Sct "O Salutaris" 2
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 30 `shiftedBy` 0, status ]

s3= Sct "Te Deum" 3
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 49 `shiftedBy` 0, status ]

s4= Sct "Tibi omnes" 4
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 82 `shiftedBy` 0, status ]

s5= Sct "Sanctus" 5
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 87 `shiftedBy` 0, status ]

s6= Sct "Te gloriósus" 6
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 98 `shiftedBy` 0, status ]

s7= Sct "Te per orbem" 7
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 118 `shiftedBy` 0, status ]

s8= Sct "Tu Rex" 8
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 118 `shiftedBy` 0, status ]

s9= Sct "Tu, devicto" 9
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 141 `shiftedBy` 0, status ]

s10= Sct "Judex" 10
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 151 `shiftedBy` 0, status ]

s11= Sct "Aeterna fac" 11
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 161 `shiftedBy` 0, status ]

s12= Sct "Et rege" 12
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 182 `shiftedBy` 0, status ]

s13= Sct "Et laudamus" 13
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 197 `shiftedBy` 0, status ]

s14= Sct "Fiat misericordia" 14
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 204 `shiftedBy` 0, status ]

s15= Sct "In te" 15
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 207 `shiftedBy` 0, status ]

s16= Sct "Tantum ergo" 16
        (Sel [])
        (MLK "C" "1/4" "G")
        [ A "fol." $ 224 `shiftedBy` 0, status ]

-- the END

-- abbreviations

prj = initWSPproject
         "totti"
         musicby 
         [ title, facsimile, namespace, introd, latex ]
         [ pt1, pt2, pt3, pt4, pt5, pt6, pt7, pt8, pt9, pt10, pt11, pt12, pt13, pt14, pt15, pt16, pt17, pt18, pt19, pt20, pt21, pt22, pt23, pt24, pt25, pt26, pt27, pt28, pt29, pt30, pt31, pt32, pt33, pt34 ]
         [ s1, s2, s3, s4, s5  ]
         base

main = prj2jsonFile prj

-- checking invariants

ok = (matrixOk prj) && (riSP prj) && (riSS prj) && (matts prj)

