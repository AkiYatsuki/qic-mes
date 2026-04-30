#set page(paper: "a4", numbering: "1")
#set text(font: ("Canela Text", "Songti SC"))
#set heading(numbering: "1.1")

//#let title = "从等概率到完美隐形传态"
#let title = "从等概率到完美量子隐形传态"
#let subtitle = "最大纠缠态及熵最大化"
#let author = "颜子涵(组长), 张智铭, 曹秦畅, 马豪嵘"
#let authors = ("颜子涵(组长)", "张智铭", "曹秦畅", "马豪嵘")

#align(center)[
  #block(text(weight: "bold", size: 3em)[#title])
  #v(1em)
  #block(text(size: 1.5em, fill: luma(100))[#subtitle])
  #v(2em)
  #align(center)[#authors.join(h(2em))]
  #v(1em)
  #block(datetime.today().display("[year]年[month]月[day]日"))
  #v(4em)
]

#outline()
#pagebreak()
= 摘要
本文系统探讨了最大纠缠态（Maximally Entangled State, MES）在量子隐形传态中的核心作用，并从信息论与纠缠提纯两个维度揭示了"等概率"结构的深层物理内涵。
首先，基于施密特分解定理，我们给出了 MES 的严格数学定义，并引入纠缠度量$E_T$对典型的多体量子态——包括四比特 G-state、GHZ 态以及 W 态——进行了对比分析。计算表明，G-state 满足$E_T = 1$，构成一组完全纠缠的基；GHZ 态仅满足$E_T= 1/2$；而 W 态的$E_T = 0$。随后，我们严格证明了 MES 是实现完美量子隐形传态的充分必要条件。
其次，从信息论视角出发，我们将 MES 的等概率性质与冯·诺依曼熵最大化问题相联系。通过拉格朗日乘数法，我们证明了施密特系数均匀分布 $c_i = 1/sqrt(2^n)$是使冯·诺依曼熵达到最大的充分必要条件，从而阐明了"等概率即最大信息"的物理根源。
最后，我们讨论了如何通过随机局域操作与经典通信（SLOCC）从部分纠缠态构建最大纠缠态。引入施密特秩（Schmidt Rank）作为判据，证明了双体纯态可经 SLOCC 转化为 MES 的充要条件是其系数矩阵满秩。在此基础上，我们构造了具体的过滤算符$cal(F)$，并分析了纠缠提纯的成功概率与最小施密特系数的关系。

*关键词*：最大纠缠态；量子隐形传态；冯·诺依曼熵；SLOCC；施密特分解；过滤算符

= 最大纠缠态(MES)是什么
//  MES的定义
#include "on-mes/mes-def.typ"
//  MES的工作方式
//  ==E_T如何表征MES
#include "on-mes/et-calc.typ"
//  ==MES为隐形传态的充要条件
#pagebreak()
== MES为隐形传态的充分条件
#include "on-mes/mes-tele-pf.typ"
= 信息论视角: 为什么等概率蕴涵了最大信息?
#include "equiprob/equiprob.typ"
= 从部分纠缠构建最大纠缠: 过滤算符与SLOCC等价类
== SLOCC(Stochastic Local Operations and Classical Communication)
#include "slocc/slocc.typ"
== 可以转化为MES的态: 双体纯态(Bipartite Pure State)的系数矩阵施密特满秩
#include "slocc/schmidt-rank.typ"
== 实际操作: 过滤算符$cal(F)$
#include "slocc/procrustean.typ"

= 结论
本文围绕"从等概率到完美量子隐形传态"这一主线，从定义、信息论本质及实验可实现性三个层面展开了系统研究。

在理论定义层面，我们借助施密特分解定理明确了最大纠缠态的数学结构，并通过纠缠度量$E_T$定量区分了不同多体纠缠态的纠缠能力。结果表明，并非所有常见的多体纠缠态（如 GHZ、W 态）都具备完美的隐形传态能力，只有满足$E_T$的等概率叠加态才能作为理想的量子信道资源。

在信息论层面，我们将 MES 的等概率特征归结为冯·诺依曼熵最大化问题。严格的变分分析表明，均匀分布的施密特系数是熵最大的唯一解，这为"最大纠缠态蕴含最大信息"提供了坚实的数学依据，也揭示了量子隐形传态中信息守恒与熵最大化之间的深刻联系。

在操作层面，我们超越了理想化的 MES 假设，探讨了从实际可制备的部分纠缠态出发，利用 SLOCC 协议和过滤算符$cal(F)$进行纠缠提纯的可行性。施密特满秩条件的提出，为判断一个给定的双体纯态是否可被提纯为 MES 提供了简洁而普适的判据。同时，我们也指出提纯过程的成功概率受限于最小施密特系数，这在实际量子通信工程中构成了需要权衡的核心参数。

综上所述，最大纠缠态的等概率结构既是信息论中熵最大化的自然结果，也是实现完美量子隐形传态的物理基础。

#bibliography(("ref/refs.bib", "ref/zzm-ref.bib", "ref/mhr-ref.bib"), style: "ieee")
