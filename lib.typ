#import "@preview/ctheorems:1.1.3": *
#let pf = thmproof("proof", "Proof")
#let def = thmbox("definition", "Definition", fill: rgb("#9ed5e0"))
#let thm = thmbox("theorem", "Theorem", fill: rgb("#a6edaa"))

#let bra(x, sub: none) = $""_#sub chevron.l #x |$
#let ket(x, sub: none) = $| #x chevron.r_#sub$
#let braket(x, y) = $chevron.l #x | #y chevron.r$
#let ketbra(x, y, sub: none) = {
  if sub == none {
    $ket(#x) bra(#y)$
  }
  else {
    $ket(#x)_(#sub) bra(#y)$
  }
}

#let Rank(x) = $"rank"(#x)$

#let boxed(x) = align(center, box(stroke: black + .5pt, inset: 10pt)[#x])