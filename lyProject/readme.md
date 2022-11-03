**Yi Project**
### You’ll want to fix why the loss for this one is so high
`Why the loss is so high in Keras ??  `
[深度学习调参技巧](https://tsinghua-gongjing.github.io/posts/DL-tricks.html); [神经网络loss不下降问题](https://blog.ailemon.net/2019/02/26/solution-to-loss-doesnt-drop-in-nn-train/) 

**损失函数在训练过程中不下降的原因有很多，对于其调整可以从如下几个方面进行考虑**
`loss不下降包括三种情况：`训练集上loss不下降（本文主要讨论的问题），验证集上loss不下降，和测试集上loss不下降 

1、模型结构和特征工程存在问题  
  如果一个模型的结构有问题，那么它就很难训练，通常，自己“自主研发”设计的网络结构可能很难适应实际问题，通过参考别人已经设计好并实现和测试过的结构，以及特征工程方案，进行改进和适应性修改，可以更快更好的完成目标任务。当模型结构不好或者规模太小、特征工程存在问题时，其对于数据的拟合能力不足，是很多人在进行一个新的研究或者工程应用时，遇到的第一个大问题。  
  `**怎样选择损失函数：**`[如何为神经网络选择损失函数](https://blog.csdn.net/weixin_39653948/article/details/105961968)
