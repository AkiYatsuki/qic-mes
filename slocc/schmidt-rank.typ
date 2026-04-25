#import "/utils/_lib.typ": *
#show ref: theoretic.show-ref

#def("施密特秩(Schmidt Rank)")[
    量子态 $ket(Psi)$的*施密特秩（Schmidt Rank）*，在数学上严格等于其系数矩阵的矩阵秩，即 $Rank(C)$。
]
#theorem("施密特满秩")[
    如果$ket(Psi)$可以通过SLOCC转化成$ket("MES"_d)$, 则初始施密特秩必须为$d$. 反之亦然. @horodecki_quantum_2009
]
#v(1em)
#pf([*必要性*])[
    对于 $A,B$ 共享态 $ket(Psi)$，对于两可逆矩阵 $F_A$ 和 $F_B$，

    $
    ket(Psi') = (F_A ⊗ F_B) ket(Psi)
    $

    基于

    $
    ket(Psi)
    =
    sum_(i=1)^d sum_(j=1)^d
    C_(i j)\,
    ket(i)_A ⊗ ket(j)_B
    $

    新的系数矩阵 $C'$ 与旧矩阵 $C$ 之间满足极其简单的矩阵乘法关系：

    $
    C' = F_A dot C dot F_B^T
    $

    运用 Sylvester's rank inequality：

    $
    Rank(C prime) <= Rank(C)
    $

    如果提纯成功，最终得到的态是 $ket("MES"_d)$，其系数矩阵为

    $
    C' = C_("MES")
    $

    而

    $
    Rank(C_("MES")) = d
    $

    因此，必须有：

    $
    d <= Rank(C)
    $

    由于在 $d times d$ 空间中，矩阵秩的最大值就是 $d$，所以：

    $
    Rank(C) = d
    $

    *必要性证毕。*
]
#v(1em)
#line()
#pf([*充分性*])[
    $
ket(Psi)
=
sum_(i=1)^d
lambda_i
ket(u_i)_A ⊗ ket(v_i)_B
$

因为是满秩的，所以所有施密特系数 $lambda_i$ 都严格大于 $0$，即

$
lambda_i > 0
$

且

$
sum lambda_i^2 = 1
$

设其中最小的一个系数为

$
lambda_(min) > 0
$

基于此构造一个非幺正算符

$
F_A
=
sum_(i=1)^d
frac(lambda_(min), lambda_i)
ket(u_i)_A bra(u_i)_A
$

施加该算符：

$
(F_A ⊗ I_B) ket(Psi)
=
sum_(i=1)^d
lambda_i
(F_A ket(u_i)_A)
⊗
ket(v_i)_B
$

由 $braket(u_i, u_j) = delta_(i j)$，

$
=
sum_(i=1)^d
lambda_i
(
frac(lambda_(min), lambda_i)
ket(u_i)_A
)
⊗
ket(v_i)_B
$

$
=
lambda_(min)
sum_(i=1)^d
ket(u_i)_A ⊗ ket(v_i)_B
$

== 归一化与成功率

这个坍缩后未归一化的态，其模长平方就是过滤操作成功概率 $P$：

$
P
=
sum_(i=1)^d abs(lambda_(min))^2
=
d lambda_(min)^2
$

一旦实验成功，状态瞬间归一化：

$
ket(Psi_("final"))
=
frac(1, sqrt(P))
lambda_(min)
sum_(i=1)^d
ket(u_i)_A ⊗ ket(v_i)_B
$

$
=
frac(1, sqrt(d lambda_(min)^2))
lambda_(min)
sum_(i=1)^d
ket(u_i)_A ⊗ ket(v_i)_B
$

$
ket(Psi_("final"))
=
frac(1, sqrt(d))
sum_(i=1)^d
ket(u_i)_A ⊗ ket(v_i)_B
$

*充分性证毕。*
]