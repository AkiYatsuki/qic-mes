#import "/utils/_lib.typ": *
#show ref: theoretic.show-ref

== 施密特分解定理
#theorem("Schmidt Decomposition Theorem", label: <thm:schmidt>)[
  任何纠缠态都可以通过施密特分解表示为双正交的形式，且系数为正实数 ：
  $
    Psi (A, B) = sum_(i = 1)^(d) c_i ket(alpha_i) times.o ket(beta_i)
  $
  其中, $d$为系统的希尔伯特空间维数, 即$d = 2^n$. 且系数满足归一化$sum_(i=1)^(d) c_i ^2 = 1$
]

== 最大纠缠态(MES)的定义
见@chen_general_2006 最大纠缠态(MES)的数学定义如下: 
$
  ket(M E S)_(arrow(A), arrow(B)) = 1/sqrt(2^N) sum_(J = 1)^(2^N) ket(J)_arrow(A) ket(J prime)_arrow(B)
$
即每一个纠缠基$ket(J)_arrow(A) ket(J prime)_arrow(B)$都是等概率的, 概率为概率辐的平方$p_i equiv (1/sqrt(2^N))^2 = 1/2^N$. 其中, $N$是隐形传态的量子比特数量, 而信道传输信息的维数为$d = 2^N$. 

