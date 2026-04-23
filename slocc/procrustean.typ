#import "/lib.typ": *

由于@thm:schmidt, 
构造 $d$ 维过滤算符（POVM）Alice 需要在她的 $d$ 维空间中构造一个极化依赖的吸收器（或反射器） 。在数学上，这对应于一个 $d times d$ 的对角广义测量算符 $cal(F)$：(见充分性证明)
$
  cal(F) = sum_(i = 1)^(d) c_d / c_i ketbra(alpha_i, alpha_i)
$
Alice 将 $cal(F)$ 作用于局部子系统 $A$：
$
(cal(F) times.o I_B) Psi(A,B)
=
sum_(i=1)^d
( frac(c_d, c_i) c_i )
ket(alpha_i) ⊗ ket(beta_i)
=
c_d sum_(i=1)^d ket(alpha_i) ⊗ ket(beta_i)
$
计算该操作的成功概率（即坍缩到这一分支的概率）：

$
  p_"success" = sum_(i = 1)^(d) abs(c_d)^2 = d dot c_d^2
$

一旦操作成功，归一化后的最终状态就是完美的 $d$ 维最大纠缠态：

$
  ket(Psi_"MES") = 1/sqrt(d) sum_(i = 1) ^d ketbra(alpha_i, beta_i)
$

只要原状态的施密特秩（Schmidt Rank）为 $d$（即没有系数为 0），普罗克汝斯忒斯方法*总是*可以将其提纯为 $d$ 维最大纠缠态 。但代价是，如果最小的系数 $c_d$ 非常小，成功率 $d dot c_d^2$ 会极低。