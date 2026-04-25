#import "/utils/_lib.typ": *
#show ref: theoretic.show-ref

== 从$E_T$看MES
在@rigolin_quantum_2005 中, 作者使用$E_T$来表征一组纠缠基是否为最大纠缠态. 具体表示为, 
#def[
  $
    E_T(Psi)  := 1/(2^n) sum_(j=1)^(L)  C(Psi_j)\
  $
  当$E_T = 1$的时候, 为最大纠缠. 其中, $C(Psi)$定义为@wong_potential_2001
  $
    C(Psi):= abs(bra(tilde(Psi)) sigma_y^(times.o 2N)ket(Psi))
  $
]


我们对于GHZ, G-state, 以及W-state一一验证了其$E_T$, 计算结果是: 

- GHZ: $E_T = 1/2$, 在对每一个基底施加了$u_j$之后, 我们发现仅仅得到了8个相互正交的基. 
- G-State: $E_T = 1$, 这意味着@rigolin_quantum_2005 中的G-State是一组完全纠缠的基. 
- W-State: $E_T = 0$
/*
#figure(
  image("figure/mhr-ghz1.JPG", width: 80%), 
  caption: ["*GHZ的$E_T$计算1*"]
)
#figure(
  image("figure/mhr-ghz1.JPG", width: 80%), 
  caption: ["*GHZ$E_T$的计算2*"]
)
最后我们对于每一个GHZ态施加$u_j$得到的态, 仅有8个互相正交的基, $E_T$的计算结果为$1/2$. 
== G-State(GS)
#figure(
  image("figure/mhr-gs1.JPG", width: 80%), 
  caption: ["*GS的$E_T$计算1*"]
)
#figure(
  image("figure/mhr-gs2.JPG", width: 80%), 
  caption: ["*GS的$E_T$计算2*"]
)
*/

=== 4 qubit 情况（G-state）

对 $ket("G")$-state（式 4 至式 19）：

如 $ket(g_1)$，则

$
ket(g_1)
=
ket(g_1)+0 ket(g_2)+0 ket(g_3)+dots+0 ket(g_(16))
=
ket(e_1)
$

则

$
c(ket(g_1)) = abs(1+0+0+dots+0)=1
$

对 $ket(g_1)$ 施加 $U_j$（由 table 2），得到 $ket(g_j)$，实际上即为 16 个正交 Bell 基：

$
ket(g_1)
=
frac(1,2)(
ket(0000)+ket(0101)+ket(1010)+ket(1111)
)
$

有：

$
sigma^x ket(0)=ket(1), quad sigma^x ket(1)=ket(0)
$

$
sigma^z ket(0)=ket(0), quad sigma^z ket(1)=-ket(1)
$

$
sigma^z sigma^x ket(0)=-ket(1), quad sigma^z sigma^x ket(1)=ket(0)
$

$
sigma^x sigma^z ket(0)=ket(1), quad sigma^x sigma^z ket(1)=-ket(0)
$

① $U_1=I$

$
U_1 ket(g_1)=ket(g_1)=ket(e_1)
$

$
C(Psi_1)=1
$

② $U_2=sigma_1^z$

$
U_2 ket(g_1)
=
frac(1,2)(
ket(0000)+ket(0101)-ket(1010)-ket(1111)
)
=
ket(g_2)
$

$
ket(Psi_2)=ket(g_2)=(-i)ket(e_2)
$

$
C(Psi_2)=abs(-i)^2=1
$

③ $U_3=sigma_2^z$

$
U_3 ket(g_1)
=
frac(1,2)(
ket(0000)-ket(0101)+ket(1010)-ket(1111)
)
=
ket(g_3)
$

$
ket(Psi_3)=ket(g_3)=(-i)ket(e_4)
$

$
C(Psi_3)=1
$

④ $U_4=sigma_2^z sigma_1^z$

$
U_4 ket(g_1)
=
frac(1,2)(
ket(0000)-ket(0101)-ket(1010)+ket(1111)
)
=
ket(g_4)
$

$
ket(Psi_4)=ket(e_3), quad C(Psi_4)=1
$

...（其余 $U_5$ 至 $U_(16)$ 同理）

则对 $j=1$ 到 $16$，

$
C(Psi_j)=1
$

共 16 个正交基（已有 $braket(g_i,g_j)=delta_(i j)$）：

$
E_T
=
frac(1,16) sum_(j=1)^(16) C(Psi_j)
=
frac(1,16) dot 16
=
1
$

=== 对 GHZ 态

取

$
ket("GHZ")
=
frac(1,sqrt(2))(ket(0000)+ket(1111))
=
frac(1,sqrt(2))(ket(g_1)+ket(g_4))
$

对 $ket("GHZ")$ 作 $U_j$ 操作：

① $U_1=I$

$
U_1 ket("GHZ")
=
frac(1,sqrt(2))(ket(g_1)+ket(g_4))
$

② $U_2=sigma_1^z$

$
U_2 ket("GHZ")
=
frac(1,sqrt(2))(ket(g_2)+ket(g_3))
$

③ $U_3=sigma_2^z$

$
U_3 ket("GHZ")
=
frac(1,sqrt(2))(ket(g_3)+ket(g_2))
$

故：

$
U_2 ket("GHZ") = U_3 ket("GHZ")
$

④ $U_4=sigma_2^z sigma_1^z$

$
U_4 ket("GHZ")
=
frac(1,sqrt(2))(ket(g_4)+ket(g_1))
$

故：

$
U_4 ket("GHZ") = U_1 ket("GHZ")
$

...（其余 $U_5$ 至 $U_(16)$ 同理）

最终仅得到 8 个正交基：
$
  
  cases(
    u_1 ket("GHZ") = u_4 ket("GHZ") = 1/sqrt(2)(ket(g_1) + ket(g_4)), 
    u_2 ket("GHZ") = u_3 ket("GHZ") = 1/sqrt(2)(ket(g_2) + ket(g_3)), 
    u_5 ket("GHZ") = u_8 ket("GHZ") = 1/sqrt(2)(ket(g_5) + ket(g_8)), 
    u_6 ket("GHZ") = u_7 ket("GHZ") = 1/sqrt(2)(ket(g_6) + ket(g_7)),
    u_9 ket("GHZ") = u_12 ket("GHZ") = 1/sqrt(2)(ket(g_9) + ket(g_12)), 
    u_10 ket("GHZ") = u_11 ket("GHZ") = 1/sqrt(2)(ket(g_10) + ket(g_11)), 
    u_13 ket("GHZ") = u_16 ket("GHZ") = 1/sqrt(2)(ket(g_13) + ket(g_16)), 
    u_14 ket("GHZ") = u_15 ket("GHZ") = 1/sqrt(2)(ket(g_14) + ket(g_15))
  )
$

$
L=8
$

因此：

$
E_T(ket("GHZ"))
=
frac(1,16) sum_(j=1)^(16) C(Psi_j)
=
frac(8,16)
=
frac(1,2)
$

=== W-state

取

$
ket("W")
=
frac(1,2)(
ket(0001)+ket(0010)+ket(0100)+ket(1000)
)
$

亦可写作：

$
ket("W")
=
frac(1,2)(
ket(g_5)+ket(g_6)+ket(g_9)+ket(g_(11))
)
$

施加 $U_j$ 操作：

① $U_1=I$

$
U_1 ket("W")
=
frac(1,2)(
ket(g_5)+ket(g_6)+ket(g_9)+ket(g_(11))
)
$

其展开到 $ket(e_i)$ 后得：

$
C(Psi_1)=0
$

② $U_2=sigma_1^z$

$
U_2 ket("W")
=
frac(1,2)(
ket(g_6)+ket(g_5)-ket(g_(10))-ket(g_(12))
)
$

$
C(Psi_2)=0
$

③ $U_3=sigma_2^z$

$
U_3 ket("W")
=
frac(1,2)(
-ket(g_7)-ket(g_8)+ket(g_(11))+ket(g_9)
)
$

$
C(Psi_3)=0
$

...（其余 $U_4$ 至 $U_(16)$ 同理）

因此：

$
forall j in {1,2,...,16}, quad C(U_j ket("W"))=0
$

故对 $ket("W")$ 态，总有：

$
E_T = 0
$