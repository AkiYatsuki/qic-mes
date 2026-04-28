#import "/utils/_lib.typ": *
#show ref: theoretic.show-ref

#def("局域随机态")[
  对一个多体纠缠系统中的任意量子比特，将其余量子比特构成的子系统（记为 $bar(k)$）求偏迹，得到的局域约化密度矩阵：
  $ rho_k = "Tr"_k(rho) = sum_j braket(j_k, Psi) braket(Psi, j_k) $ 是子系统 $bar(k)$ 的任意一组正交完备基）
  态 $ket(Psi)$ 处于“局域随机态”，当且仅当对于所有的 $k$，其约化密度矩阵都严格正比于单位阵
]

#def("SLOCC")[
  SLOCC（Stochastic Local Operations and Classical Communication), 即随机局域操作与经典通信. SLOCC引入了概率——局域非幺正变换。这样的变换将不再是一定成功的（幺正变换）而将有一定的*失败几率*。不过基于此，可以相互转化（也即概率不为0地相互变化）更为容易。我们脱离了局域幺正变化（对应$U(2N)$）
]

*这种情况下我们一定能发现无穷的等价类, 转而寻求一般线性变换*

只要作用在单个比特上的矩阵是一个可逆矩阵（属于一般线性群 $G L(2, bb(C)$，即行列式不为 0），它就是一个合法的 SLOCC 操作。
基于此，*仅有九种四体纠缠家族*。
#figure(
  image("/figure/9class.PNG", width: 50%),
  caption: [*九个四体纠缠家族*],
)
具体的纠缠以及数学分析我们留在后面，这里先解释其余的理论内容。

=== LU
LU 操作（Local Unitary）相当于在数学上乘上一个酉矩阵 $U_A times.o U_B$。

如果 Alice 对总状态求偏迹，得到她自己的约化密度矩阵 $rho_A = "Tr"_B (ketbra(Psi, Psi))$。

=== 九种四体纠缠
#thm($"complex matrix" => "Jordan block"$)[
  给定一个复 $n times n$ 矩阵 $R$，总是存在复正交方阵 $O_1$ 和 $O_2$，使得 $R' = O_1 R O_2$ 是一系列以下形式的块的唯一直和：
  - $m times m$ 的块，形式为 $(lambda_j I_m + S_m)$，它们是对称约当块，其中 $lambda_j$ 是复参数（注意 $m=1$ 的情况对应于标量）。
  - $m times m$ 的块，由两部分拼合而成：左上角是一个 $(m_1+1) times m_1$ 的矩阵，它是通过取一个 $(2m_1+1) times (2m_1+1)$ 对称约当块的奇数行和偶数列得到的；
  右下角是一个 $(m-m_1-1) times (m-m_1)$ 的矩阵，它是取一个 $(2(m-m_1)-1) times (2(m-m_1)-1)$ 对称约当块的奇数行和偶数列所得到矩阵的转置。
  @verstraete_four_2002
]
对于对于给定的 4-qubit 按照前两个比特和后两个比特的指标，可以折叠成一个 $4 times 4$ 的复矩阵 $tilde(psi)$。

为了通过约尔当块划分不同的SLOCC族，我们需要找到不同操作对应的复正交方阵 $O_1$ 和 $O_2$
#def("变换矩阵 $T$")[
  $
    T = mat(
      1, 0, 0, 1;
      0, i, i, 0;
      0, -1, 1, 0;
      i, 0, 0, -i
    )
  $]
令:$R = T tilde(psi) T^dagger$

$ R' = T tilde(psi)' T^dagger = T [ (A_1 times.o A_2) tilde(psi) (A_3 times.o A_4)^T ] T^dagger $

因为 $T^dagger T = I$：
$ R' = [ T(A_1 times.o A_2)T^dagger ] ( T tilde(psi) T^dagger ) [ T(A_3 times.o A_4)^T T^dagger ] $
即
$ R' = O_1 R O_2 $
其中 $O_1 = T(A_1 times.o A_2)T^dagger$，$O_2 = T(A_3 times.o A_4)^T T^dagger$。
根据李群理论的同构关系 $"SL"(2, CC) times.o "SL"(2, CC) tilde.equiv "SO"(4, CC)$，我们只需要证明经过 $T$ 矩阵夹逼后得到的 $O_1$ 和 $O_2$，变成了复正交矩阵。由此，其适用定理，就可以将其分解。

下面证明 $O$ 为复正交矩阵。

*1. 行列式为 1*
$ det(O) = det(T) dot det(A_1 times.o A_2) dot det(T^dagger) $
$ det(T) dot det(T^dagger) = det(T T^dagger) = det(I) = 1 $
$ det(A_1 times.o A_2) = det(A_1)^2 dot det(A_2)^2 = 1 $

*2. $O O^T = O^T O = I$*
$ O^T O = (T^dagger)^T (A_1 times.o A_2)^T T^T dot T (A_1 times.o A_2) T^dagger $
$ O^T O = (T^dagger)^T [ (A_1 times.o A_2)^T Sigma (A_1 times.o A_2) ] T^dagger $

利用度规不变性：
$
  (A_1 times.o A_2)^T Sigma (A_1 times.o A_2) = (A_1^T sigma_y A_1) times.o (A_2^T sigma_y A_2) = sigma_y times.o sigma_y = Sigma
$
其中，$A^T sigma_y A = sigma_y dot det(A) = sigma_y$。

$
  O^T O & = (T^dagger)^T Sigma T^dagger \
        & = (T^dagger)^T (T^T T) T^dagger \
        & = (T T^dagger)^T dot I \
        & = I^T dot I \
        & = I
$
综上, 对于$ R' = O_1 R O_2 $，我们总能通过适当的操作将其化简为具有同样约尔当块构造的矩阵。基于此

仅有九个四体纠缠的SLOCC族，在这之中，只有唯一一个未退化纠缠族 $G_"abcd"$ 该族所有成员均可变换为局域随机态，但是在该族中只是最大纠缠态的必要不充分条件(该族中依然存在不少不能被转化为MES的态,例如GHZ)。
究其原因，局域随机态不关注秩, 关注的是约而当块的形式. 这意味着矩阵可能出现等于0的特征值，但是 $1 times 1$ 的零特征值块不算退化约当块。而这在等概率定义下是不被称为MES的。后文我们将引入施密特秩作为等概率定义下MES的充分必要条件。

同时还能发现：最大化真正的四方纠缠的操作正是破坏所有局部关联（即使局部密度算符变为随机化）并且还破坏三方纠缠（即通过追踪一个方得到的态的三环纠缠为零）的操作。另一方面，在四方之间共享最大二或三方纠缠的态恰好是具有零真正四方纠缠的态（即四粒子纠缠全为零）@verstraete_four_2002

// ==================== 四量子比特 SLOCC 九族 ====================

+ *$G_(a b c d)$ 族（通用族）*
  $
    G_(a b c d) = frac(a + d, 2)(ket("0000") + ket("1111")) + frac(a - d, 2)(ket("0011") + ket("1100")) \
    + frac(b + c, 2)(ket("0101") + ket("1010")) + frac(b - c, 2)(ket("0110") + ket("1001"))
  $

+ *$L_(a b c_2)$ 族*
  $
    L_(a b c_2) = frac(a + b, 2)(ket("0000") + ket("1111")) + frac(a - b, 2)(ket("0011") + ket("1100")) \
    + c(ket("0101") + ket("1010")) + ket("0110"))
  $
// 注：原文末项 |0110| 已补全为 |0110⟩

+ *$L_(a_2 b_2)$ 族*
  $
    L_(a_2 b_2) = a(ket("0000") + ket("1111")) + b(ket("0101") + ket("1010")) + ket("0110") + ket("0011"))
  $

+ *$L_(a b_3)$ 族*
  $
    L_(a b_3) = a(ket("0000") + ket("1111")) + frac(a + b, 2)(ket("0101") + ket("1010")) \
    + frac(a - b, 2)(ket("0110") + ket("1001")) + frac(i, sqrt(2))(ket("0001") + ket("0010") + ket("0111") + ket("1011"))
  $

+ *$L_(a_4)$ 族*
  $
    L_(a_4) = a(ket("0000") + ket("0101") + ket("1010") + ket("1111")) + (i ket("0001") + ket("0110") - i ket("1011"))
  $

+ *$L_(a_2 0_(3 plus.o 1))$ 族*
  $
    L_(a_2 0_(3 plus.o 1)) = a(ket("0000") + ket("1111")) + (ket("0011") + ket("0101") + ket("0110"))
  $

+ *$L_(0_(5 plus.o overline(3)))$ 族*
  $
    L_(0_(5 plus.o overline(3))) = ket("0000") + ket("0101") + ket("1000") + ket("1110")
  $

+ *$L_(0_(7 plus.o 1))$ 族*
  $
    L_(0_(7 plus.o 1)) = ket("0000") + ket("1011") + ket("1101") + ket("1110")
  $

+ *$L_(0_(3 plus.o 1) 0_(3 plus.o 1))$ 族*
  $
    L_(0_(3 plus.o 1) 0_(3 plus.o 1)) = ket("0000") + ket("0111")
  $
