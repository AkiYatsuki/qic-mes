#import "/utils/_lib.typ": *
#show ref: theoretic.show-ref
#thm($"MES" => "Teleportation"$)[
  对于任意 $N$ 比特未知量子态 $ket(Psi)_(a_1,...,a_N)$，设发送方 A 与接收方 B 预先共享资源态

  $
  ket("MES")_(A_1,...,A_N;B_1,...,B_N)
  $

  则复合系统满足展开式

  $
  ket("MES")_(A_1,...,A_N;B_1,...,B_N)
  ⊗
  ket(Psi)_(a_1,...,a_N)
  =
  sum_(alpha,beta)
  ket("MES")_(a_1,...,a_N;A_1,...,A_N)
  ⊗
  hat(U)_(alpha beta)^dagger
  ket(Psi)_(B_1,...,B_N)
  $

  其中 $hat(U)_(alpha beta)$ 为由测量结果决定的一组酉算符。@lee_multipartite_2002

  故发送方对 $(a_1,...,a_N,A_1,...,A_N)$ 进行最大纠缠基测量后，
  接收方粒子塌缩为

  $
  hat(U)_(alpha beta)^dagger
  ket(Psi)_(B_1,...,B_N)
  $

  接收方施加逆变换 $hat(U)_(alpha beta)$ 后即可恢复原未知态

  $
  ket(Psi)_(B_1,...,B_N)
  $

]
//#pagebreak()
#pf[
$
  ket(Phi)_(a A B)
  &=
  ket(Psi)_(a_1,...,a_N)
  ⊗
  ket("MES")_(A_1,...,A_N;B_1,...,B_N)\
 
  &=
  (
    sum_(alpha,beta=1)^4 hat(M)_(alpha beta)
  )
  ket(Psi)_(a_1,...,a_N)
  ⊗
  ket("MES")_(A_1,...,A_N;B_1,...,B_N)\

  &在量子传输中Alice用测量算符测量未知量子态。由于测量算符是归一的，我们可以用一个求和算式表示出所有可能性。\

  &=
  sum_(alpha,beta=1)^4
  ket(mu_(alpha beta))
  bra(mu_(alpha beta))
  ket(Psi)_(a_1,...,a_N)
  ⊗
  ket("MES")_(A_1,...,A_N;B_1,...,B_N)\

  &=
  frac(1, 2^N)
  sum_(alpha,beta=1)^4
  ket(mu_(alpha beta))
  (
    ""_A bra(phi_(i j))
    ⊗
    ""_a bra(psi_(i j))
    hat(U)_(alpha beta)^dagger
  )
  (
    ket(phi_(i j))_A
    ⊗
    ket(psi_(i j))_B
  )
  ket(Psi)_(a_1,...,a_N)\

  &=
  frac(1, 2^N)
  sum_(alpha,beta=1)^4
  ket(mu_(alpha beta))
  ""_A braket(phi_(i j), phi_(i j))
  ket(psi_(i j))_(B a)
  bra(psi_(i j))
  hat(U)_(alpha beta)^dagger
  ket(Psi)_(a_1,...,a_N)\

  &=
  frac(1, 2^N)
  sum_(alpha,beta=1)^4
  ket(mu_(alpha beta))
  ⊗
  (
    hat(U)_(alpha beta)^dagger
    tau_(B a)
    ket(Psi)_(a_1,...,a_N)
  )\

  &=
  frac(1, 2^N)
  sum_(alpha,beta=1)^4
  ket(mu_(alpha beta))
  ⊗
  (
    hat(U)_(alpha beta)^dagger
    ket(Psi)_(B_1,...,B_N)
  )\

 &=
  frac(1, 2^N)
  sum_(alpha,beta=1)^4
  (
    I_A ⊗ hat(U)_(alpha beta)
  )
  ket("MES")_(a_1,...,a_N;A_1,...,A_N)
  ⊗
  hat(U)_(alpha beta)^dagger
  ket(Psi)_(B_1,...,B_N)\

  &=
  frac(1, 2^N)
  sum_(alpha,beta=1)^4
  ket("MES")_(a_1,...,a_N;A_1,...,A_N)
  ⊗
  ket(Psi prime)_(B_1,...,B_N)
$

故得证。
]
