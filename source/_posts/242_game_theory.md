---
title: 博弈论入门
tags:
  - 时间管理
  - 数据人生
  - 财商
comments: true
toc: true
categories:
  - 生活点滴
  - 平淡生活
abstract: 'Welcome to my blog, enter password to read.'
message: 'Welcome to my blog, enter password to read.'
copyright: true
abbrlink: 3d0be540
keywords:
  - 2020年双十一
  - 数据人生
  - 双十一
  - 记账
description: 一个简单的博弈论入门，带你打开博弈论的大门。
photos:
  - /images/242/pre.jpg
date: 2020-11-26 01:00:00
password:
---
<script type="text/javascript" src="/js/src/bai.js"></script>

### 博弈论入门
------
> 一个简单的博弈论入门，带你打开博弈论的大门。
>
------

#### ★ 什么是博弈论？
> “博弈论”（英文 Game Theory），目前它是经济学的一个分支，该理论专门研究多个独立个体之间的竞争行为（对抗行为）。在某些中文书籍里面，它又被称作“对策论 or 赛局理论”。
>
> ![博弈论](/images/242/002.png)

#### ★ “博弈论”的起源
> 要聊“博弈论”，不得不提到的一个人就是“约翰·冯·诺伊曼”。
>
> 约翰·冯·诺伊曼是个“超级跨界牛人”（虽然用这么夸张的称呼，依然不足以体现此人的牛逼之处），他同时在“数学、物理学、经济学、计算机”等多个领域作出了划时代的贡献，并留下一大堆以他命名的东西，比如：程序员应该都听说过“冯诺依曼体系”、数学领域有“冯诺依曼代数、冯诺依曼遍历定理...”、理论物理领域有“冯诺依曼量子测量、冯诺依曼熵、冯诺依曼方程...”。另外还有很多东西，虽没有以他命名，也是他先搞出来滴，比如：量子力学的公理化表述、希尔伯特第5问题、连续几何（其空间维数不是整数）、蒙特卡洛方法、归并排序算法......。
>
> 1944 年，冯·诺伊曼与奥斯卡·摩根斯坦合作发表了《博弈论与经济行为》，一举奠定博弈论体系的基础，所以他也被称作“博弈论之父”。这个《博弈论与经济行为》一开始是以论文形式写成，长达 1200 页，基本上是冯·诺伊曼一个人完成的。
>
> ![约翰·冯·诺伊曼](/images/242/约翰·冯·诺伊曼.png)

#### ★ 博弈的类型
> “博弈的类型”是博弈论的基本概念，所以必须先看一看。

##### ◇ 合作博弈 VS 非合作博弈
> 不论是“合作博弈”还是“非合作博弈”，在博弈过程中都可能会出现“合作”的现象。差别在于：
>>
>> 1. 对于“合作博弈”，存在某种“外部约束力”，使得“背叛”的行为会受到这种外部约束力的惩罚。
>>
>> 2. 对于“非合作博弈”，“没有”上述这种“外部约束力”，对“背叛”的惩罚只能依靠博弈过程的其它参与者。
>
> 举例：商业活动中有“合同法”，就相当于上述所说的“外部约束力”。
>
> **通常所说的“博弈”大都指“‘非’合作博弈”。大多数博弈论的研究也是针对后者（非合作）。**

##### ◇ 同时博弈 VS 顺序博弈
> “同时博弈”有时也称作“静态博弈”，指的是 —— 博弈的“任何一个”参与者在选择自己的行为之前，并“不”知道其它参与者的行为信息。举例：“石头、剪刀、布”游戏。
>
> “顺序博弈”有时也称作“动态博弈”。在这类博弈中，参与者的动作有“时间上的先后”，并且后一个执行动作的博弈者可以看到其他博弈者之前的动作，然后根据别人的动作，思考自己的行为。举例：绝大部分棋牌类游戏都属于这种。

##### ◇ 零和博弈 VS 非零和博弈
> “零和博弈”指的是——在博弈结束之后，参与各方的利益总和为“常量”（可以是零，也可以是“正值”或“负值”）。举例：大多数棋类游戏属于这种；“石头、剪刀、布”也属于这种。
>
> “非零和博弈”指的是——在博弈结束之后，参与各方的利益总和为“变量”。所以这类博弈有时候称为“变和博弈”。对于这类博弈，在某些情况下可能会让参与各方的利益总和“变大”，从而使得各方存在合作的可能性。举例：在“非零和博弈”中，最有名的应该就是“囚徒困境”了。

##### ◇ 非重复博弈 VS 重复博弈
> “非重复博弈”有时也称作“单次博弈”；相应的，“重复博弈”也被称作“多次博弈”。
>
> 以“囚徒困境”为例。如果困境中的两个嫌疑人只被抓进去一次，那就是“单次博弈”；如果被抓进去不止一次，就是“多次博弈”。
>
> “重复博弈”还可以进一步细分为“有限重复博弈”（重复次数“确定”的博弈）与“无限重复博弈”（重复次数“不确定”的博弈）。

#### ★ 收益矩阵 VS 决策树

##### ◇ 概述
> “收益矩阵/普通形式”通常用来描述“静态博弈”（同时博弈）；由于“动态博弈”（顺序博弈）比较复杂，通常“不”用“收益矩阵”描述。“决策树/扩展形式”既可以用来描述“静态博弈”，也可以用来描述“动态博弈”。

##### ◇ 收益矩阵
> “收益矩阵”通常用来描述“静态博弈”，而且一般是用来描述“双人”的静态博弈（更多人的静态博弈，也可以用“收益矩阵”表述，但画起来会麻烦很多）。后续文章凡是提及“收益矩阵”都是指“双人静态博弈”。
>
> 通常的惯例是把自己这方的策略写在表格“左边”，把对方的策略写在表格“上边”。为了让大伙儿有个直观感受，写一个“石头、剪刀、布”的“收益矩阵”。
>
> “石头、剪刀、布”的“收益矩阵”（1 表示赢；-1 表示输；0 表示平局）
>>
|      | 石头 | 剪刀 | 布 |
|:--:  |:--:  |:--:  |:--:|
| 石头 |  0   |  1   | -1 |
| 剪刀 | -1   |  0   |  1 |
| 布   |  1   | -1   |  0 |

##### ◇ 决策树
> 下图是一个决策树的示意图，表示一个简单的“双人动态博弈”，两个博弈者分别称作 1 ＆ 2；两人的可选策略都只有 2 个（分别是：U ＆ D）。
>
> 1 先执行某个动作，然后 2 再执行对应的动作，然后博弈就结束了。这个树状图有 4 个叶子节点，表示该博弈最终有 4 种结局。每个叶子节点的括号中各有 2 个数字，分别表示两个博弈者在不同终局的收益。
>
> ![决策树](/images/242/003.png)

#### ★ 策略 ＆ 策略集合

##### ◇ 决策选项 VS 策略
> 决策选项 VS 策略：以象棋为例，完成一局需要经历很多个步骤。对每个步骤，你都有 N 个决策选项（要走哪个棋子，走到哪）。而“策略”指的是——从第一步到最后一步的所有决策选项的“总和”。你可以把“策略”通俗理解为某种“算法 or 指导思想”，它指导你从第一步走到最后一步。

##### ◇ 策略集合
> 所有可能的策略，构成了“策略集合”。以“石头、剪刀、布”为例，其“策略集合”只包含 3 个策略。

##### ◇ 有限策略集合 VS 无限策略集合
> “石头、剪刀、布”就是典型的“有限策略集合”（该集合只有 3 个元素）。
>
> 为了说明这种集合，举个“分蛋糕博弈”的例子。所谓的“分蛋糕博弈”很简单——这是双人博弈，其中一人先把蛋糕分为两块（可以随便分），然后另一个人先挑选其中一块。对于“负责分蛋糕”的人而言，其策略集合是无穷大（纯小数有无穷多个）。

##### ◇ 关于“有限/无限”的反直觉
> 直觉会认为：具有“无限策略集合”的博弈比“有限策略集合”的博弈更复杂。其实不然！
>
> 围棋虽然很复杂，但其“策略集合”依然是有限滴（只不过，要想描述这个集合，需要存储的信息量会超出整个宇宙的承受能力）。
>
> 作为对比，“分蛋糕博弈”比“围棋”简单多了（两者的复杂性相差 N 个数量级），但“分蛋糕博弈”反而具有“无限”的策略集合。

#### ★ 纯策略 VS 混合策略

##### ◇ 纯策略
> 在实际博弈时，如果你总是“固定选择”“策略集合”中的某“一个”策略，这种情况称之为“纯策略”。以“石头、剪刀、布”为例：如果你每次总是出“石头”，这就是 —— 纯策略。

##### ◇ 混合策略
> 如果你在博弈时，总是“随机选择”“策略集合”中的某“几个”策略，这种情况称之为“混合策略”。以“石头、剪刀、布”为例：如果你一半概率出“石头”一半概率出“剪刀”，这就是 —— 混合策略。

##### ◇ 完全混合策略
> 如果某个“混合策略”包含了“策略集合”中的“每一个”元素，称之为“完全混合策略”。
>
> 上一个小节的举例（一半概率出“石头”一半概率出“剪刀”）属于“混合策略”，但“不是”“完全混合策略”。
>
> 作为对比，如果你 1/4 概率出“石头”，1/4 概率出“剪刀”，1/2 概率出“布”——这就是“完全混合策略”。


#### ★ 支配策略（优势策略）

##### ◇ 策略之间的“支配性”
> 假设你有两个策略 A ＆ B。如果在“任何”情况下，A 都比 B 更优，称作“A 支配 B”或者“B 被 A 支配”。

##### ◇ 支配策略
> “支配策略”又称“优势策略”。如果某个策略能够支配“所有”其它策略，那么它就是“支配策略/优势策略”。
>
> 通俗地说，不论你的对手采用何种策略，你的“支配策略”总是比你的其它策略有更好的结果。
>
> 在后面的某个小节，俺会举个很简单的例子，帮你理解“支配策略”这个概念。

##### ◇ 强支配策略 VS 弱支配策略
> 有时候会把“支配策略”进一步细分为“强支配”＆“弱支配”。对于前者，它在任何情况下都比其它策略更好；对于后者，它在某些情况下比其它策略更好，某些情况下与其它策略一样好。

##### ◇ 支配策略 VS 制胜策略
> 有些人会把“支配策略”与“制胜策略”搞混淆。
>
> “制胜策略”也称“必胜策略”，它通常只用于“零和博弈”，指的是——只要你采用这个策略（不论对方如何应对），你总是赢。
>
> “制胜策略”肯定是“支配策略”（最起码是“弱支配策略”）；但“支配策略”不一定是“制胜策略”。

##### ◇ “支配策略”的“罕见性”
> 一般来说，只有极其简单的博弈才存在“支配策略”。只要博弈再稍微复杂那么一丁点，“支配策略”可能就不存在了。举例：哪怕像“石头、剪刀、布”这么简单的游戏，就已经不存在“支配策略”了。

##### ◇ “支配策略”的“乏味性”
> 当某个博弈存在“支配策略”，这个博弈通常就显得索然无味。反过来想，你就能理解 —— 为什么绝大部分棋牌类游戏都“没有”“支配策略”。

#### ★ 最小最大定理
##### ◇ 概述
> 最大最小定理：最小化最大损失。更通俗的表述是：在最坏情况下最小化损失。

##### ◇ 举例：静态博弈
> 假设你是 A（你有三个策略：A1、A2、A3），你的对手是 B（也有三个策略：B1、B2、B3）。以下是针对 A（你）的收益矩阵：
>>
|      | B1   | B2   | B3 |
|:--:  |:--:  |:--:  |:--:|
| A1   | +3   | -2   | +4 |
| A2   | -1   |  0   | +2 |
| A3   | -4   | -3   | +1 |
>
> 针对上述收益矩阵，基于 Minimax 算法，你应该选择 A2 策略——此时你的最坏情况是 -1。

##### ◇ 举例：动态博弈 —— 切蛋糕博弈
> 分蛋糕博弈：一块蛋糕，甲和乙要吃，分蛋糕的人后选择哪哪一块，请问怎么做分蛋糕最好。
>
> 当双方都是足够理性，选蛋糕的人肯定会选大的那块。切蛋糕的人基于“最小最大原则”，应该在最坏情况下最小化自己的损失，所以他/她应该把蛋糕切成同等大小。

#### ★ 反向归纳法
##### ◇ 概述
> 反向归纳法：其精髓是“正向展望，反向推理”。
>
> 首先，你需要思考自己的每个决策，以及对方在应对你的决策时，会采用何种决策（这个思维过程类似于“决策树的展开”）
>
> 这个展开过程要一直推演到“最后一步”（也就是决策树的叶子节点）。此时你就可以看清双方在最后一步各自的最优选择；然后再反向回推到第一步。

##### ◇ 局限性
> 当你要用“反向归纳”进行展望与推理，前提是 —— 你要获得充分的信息；或者说，如果某个博弈者所知的信息不够充分，就“无法”运用该方法。

#### ◇ 重复博弈中的“囚徒困境”
> 前面提到的“囚徒困境”属于“单次”静态博弈。如果把这个局面改为“多次”，并且两个囚徒足够理性且相互认识，并且两人也都知道自己处于“多次”博弈的场景，那么就有可能达成合作。
>
> 无限重复博弈（次数不确定）
>>
>> 在这个博弈场景中，由于两个囚徒都知道未来还会有多次类似的博弈局面，所以他们在第一次被抓的时候，就会选择合作（双方都抵赖），并且未来也会每次都选择合作。他们之所以选择合作，是为了给将来博弈中的合作建立基础。
>
> 有限重复博弈（次数确定）
>>
>> 假设次数确定为“10 次”。这种情况下，是否还可能达成合作捏？很多同学凭直觉认为：还是可以合作。其实不然！
>>
>> 对于有限重复的情形，就需要用到本章节的“反向归纳法”了。
>>
>> 先分析“最后一次”（第 10 次）博弈的情形。因为不再有后续的博弈，此时的局面等价于“单次”博弈（单次囚徒困境）——也就是说，双方会选择背叛。
>>
>> 如果两人都足够理性，当他们在进行第 9 次博弈的时候，就应该能想到 —— 下一次博弈是最后一次，不会有合作。既然如此，那么本次博弈，当然也没必要合作了（请注意：合作是为了下次能继续合作）
>>
>> 上述反推可以一直持续到第一次。所以，如果双方都足够理性，在第一次就会选择互相背叛。

#### ★ 纳什均衡

##### ◇ 概述
> 所谓的“纳什均衡”，通俗地说是指——在多人的“非合作博弈”中，如果每个博弈者都无法“单方面”改善自己的境地，此时的局面称作“纳什均衡”。
>
> 冯·诺伊曼已经在《博弈论与经济行为》一书中证明了：零和博弈必定存在这样的均衡点。纳什的贡献在于——他从“零和博弈”推广到“非零和博弈”，并证明了：这样的均衡点依然存在。
>
> 这里有几个定语需要注意：
>> 1. “纳什均衡”的前提是“非合作博弈”。不要望文生义，把“非合作博弈”误解为“没有合作的博弈”。
>>
>> 2. “单方面”指的是——在其他博弈者都没有改变策略的情况下，自己改变策略。

##### ◇ “纳什均衡”的“稳定性”
> 当博弈的局面处于“纳什均衡”，此时的系统是“稳定”的 —— 如果每个博弈者都足够理性，他们都“不愿意”主动改变当前的策略。

##### ◇ 实例：囚徒困境
> 几乎每一个讲“纳什均衡”的资料（书/文章）都会拿“囚徒困境”来举例，以下是“囚徒困境”的收益矩阵（被判刑的年数以负数表示，零表示立即释放）：
>>
|             | 囚犯 B 坦白 | 囚犯 B 抵赖 |
|:---------:  |:---------:  |:---------:  |
| 囚犯 B 坦白 | (-2, -2)    | (0, -5)     |
| 囚犯 B 抵赖 | (-5, 0)     | (-1, -1)    |
>
> 基于上述矩阵，“双方都坦白”的局面是“纳什均衡点”—— 在这个均衡局面下，任何一个囚犯“单方面”改变策略，只会让自己更不利。
>
> 作为对比，“双方都抵赖”虽然是双赢的局面，但这个局面是“不”稳定滴。因为在这个局面下，任何一个囚犯都有动机去改变策略，从而让自己的获益更多。

##### ◇ 实例：石头、剪刀、布
> 对这个游戏，有一个稳定的“混合策略” —— 其中每个策略各占 1/3 的权重（以相等的概率随机使用这 3 个策略）。
>
> 当双方都采用这个混合策略，此时博弈处于“纳什均衡”。
>
> 对于“石头、剪刀、布”而言，这是“唯一”的“纳什均衡点”。不信的话，你可以试着考虑其它各种局面，会发现其它的局面都不稳定，（只要双方足够理性）最终都会演化到上述的均衡点。

##### ◇ 对“纳什均衡”的“误解”
> 误解 1：把“纳什均衡”误解为“各方利益总和最大化”。
>>
>> 实际情况是：“纳什均衡”与利益最大化没啥关系。甚至可能出现相反的情况——当局面处于“纳什均衡”时，对博弈的各方都不利。典型的例子参见“囚徒困境”——均衡的时候，反而是“双输”的局面。
>
> 误解 2：认为“纳什均衡点”是唯一的。
>>
>> 实际情况是：对某些博弈，可以有“多个”“纳什均衡点”。

##### ◇ “纳什均衡”的“局限性”
> 局限性 1:
>>
>> 纳什的证明是“非建设性”的。也就是说，他只是证明了这个均衡点必定存在，但“没有”给出“如何找到均衡点”的方法论。
>>
>> 那么，如何找到均衡点呢？进入 21 世纪之后，数学家已经证明：即使对于某些比较简单的博弈，找到纳什均衡点所消耗的计算量也会超出整个宇宙的承受力。
>
> 局限性 2：
>>
>> 对于任何一个稍微复杂点的博弈，要想达到“纳什均衡点”，需要依赖于非常非常多的约束条件；在现实生活中，不太可能达到。

#### ★ 博弈中的“信息”因素
> 聊完“均衡”，重要的概念基本上讲差不多了。下面开始聊博弈中涉及的一些因素，首先是“信息”因素。

##### ◇ 信息完美 VS 信息不完美
> 这两个概念通常针对“顺序博弈”（动态博弈）而言。　在博弈过程中，如果每个参与者在做每个决策时，都能知道已经发生的每个事件的信息，称作“信息完美”；反之则是“信息不完美”。
>
> “信息完美”的例子：大部分棋类游戏（围棋、象棋、跳棋...）属于这类。
>
> “信息不完美”的例子：某些军棋游戏只能看到己方的棋子，属于这类；大部分扑克游戏（比如：桥牌、麻将...）也是这类。

##### ◇ 信息完备 VS 信息不完备
> “完备 VS 不完备”的讨论主要针对“博弈者”。如果每个博弈者的特征都是公开的（每个人都知道其他人的特征），则称为“完备”；反之是“不完备”。
>
> “博弈者的特征”是什么呢？通俗地说包括：博弈目标、效用函数（为达到不同级别的目标愿意付出多大代价）等等。
>
> “信息完备”，几乎有所有的“棋牌类游戏”都属于“信息完备” —— 双方的目标是公开且固定的（比如象棋的目标是干掉对方的王），而且也不用考虑“效用函数”之类的概念。
>
> “信息不完备”，“拍卖”属于这类博弈 —— 有些人是真的买家，有些人只是为了抬价；即使是真正的买家，各自的底线也不公开。

##### ◇ 贝叶斯博弈 ＆ 贝叶斯纳什均衡
> 对于“信息不完备”的博弈，由于每个博弈者“无法”精确掌握其它博弈者的特征。对这类博弈，需要引入“贝叶斯定理”进行概率分析，从而猜测其它对手的特征。所以这类博弈也称作“贝叶斯博弈”。
>
> 贝叶斯定理”是概率论的重要工具，对于“贝叶斯博弈”，其纳什均衡称之为“贝叶斯纳什均衡”。

#### ★ 博弈中的“心理”因素

##### ◇ 换位思考
> 很多博弈相关技能（比如：最小最大原则、反向归纳法），都依赖于“换位思考”这个能力——你需要站在“对手”的角度进行思考，才能看清局面，从而更好地选择自己的策略。
>
> “换位思考”的好处不仅仅体现在博弈中，还体现在其它很多方面。一般来说，那些“换位思考”能力越强的人，也越善于进行“强”批判思维。
>
> 另一个提升“换位思考”能力的方法是——通过某些复杂的博弈游戏，进行练习。可以学习“围棋”，围棋属于“全局强耦合”，围棋的这个特点，使得棋手必须要建立很好的“大局观”。

##### ◇ 装疯策略
> “理性的博弈者”把自己伪装成“非理性的博弈者”，这么干可以获得某种“虚张声势”的唬人效果，称之为“装疯策略”。


