#import "lib.typ"
#import lib:*
#show: thmrules.with(qed-symbol: $square$)

== 等概率原理的信息论表述
而我们也可以证明, MES的施密特分解等概率性, 是信息论中使得冯诺伊曼熵最大的充分必要条件. 
#def("Von Neumann Entropy")[
  冯诺伊曼熵(Von Neumann Entropy)是对于信息论中香农熵(Shannon Entropy)的推广, 其形式为: 
  $
    S(rho) := -rho tr(rho)
  $
]<def:von-neumann>

在@yeo_teleportation_2006 中, 将Alice后观测态的密度矩阵表述为: 
$
  & 1/p_i "tr"_(A_1 A_2) [(ket(psi)_(A_1) times.o ket(Psi^0_"Bell")_(A_2 B)bra(Psi^0_"Bell"))(ketbra(Psi^i_"Bell", Psi^i_"Bell", sub: A_1 A_2)) times.o I_B)] \
  &= 1/p_i bra(Psi^0_"Bell", sub: A_1 A_2) (sigma_(A_1)^i ket(psi, sub: A_1) times.o ket(Psi^0_"Bell", sub: A_2 B)) (bra(psi, sub: A_1) sigma_(A_1)^i times.o bra(Psi^0_"Bell", sub: A_2 B))ket(Psi^0_"Bell", sub: A_1 A_2) \
  & = 1/(4 p_i) sigma^i _B ketbra(psi, psi, sub: B) sigma^i _B
$
于是我们开始证明: 
#pf[
  $
    S(rho)  &= -rho tr(rho) \
          &= - sum_(i) tr(rho_i log_2 rho_i) \
          &= - sum_i tr(lambda_i log_2 lambda_i) \
          &= - sum_i lambda_i log_2 lambda_i
  $
  而由@def:von-neumann 
  $
    rho = -sum_(i, j)^(2^n) c_i c_j ket(Psi)_(A) braket(Psi, Psi)_B bra(Psi)
  $
  可知, $lambda_i = abs(c_i)^2$. 于是我们有
  $
    S(rho) = -sum_i abs(c_i)^2 log_2 abs(c_i)^2
  $
  在$sum_i abs(c_i)^2 = 1$的条件下, 定义拉格朗日量:
  $
    cal(L) := -sum_i lambda_i log_2 lambda_i + t (sum_i lambda_i -1)
  $
  对$lambda_i$和使用拉格朗日乘数法得到: 
  $
    (partial cal(L))/(partial lambda_i) = - (ln 2 + log_2 lambda_i) + t = 0
  $
  即$forall i = 1, 2, ... 2^n, log_2 lambda_i + ln 2 equiv t$. 
  因此$lambda_i$都互相相等, 即$c_1 = c_2 = ... = c_(2^n)$, 又由于归一性$sum_i c_i = 2^n c_i equiv 1$, 我们可以得到

  #boxed( $c_i = 1/sqrt(2^n)$)
]

