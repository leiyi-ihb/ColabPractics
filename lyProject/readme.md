**Yi Project**
### You’ll want to fix why the loss for this one is so high
`Why the loss is so high in Keras ??  `
[深度学习调参技巧](https://tsinghua-gongjing.github.io/posts/DL-tricks.html); [神经网络loss不下降问题](https://blog.ailemon.net/2019/02/26/solution-to-loss-doesnt-drop-in-nn-train/)   
**损失和损失函数:** 在优化算法中，用于评估候选解（即一组权重）的函数称为目标函数（objective function）。针对不同的问题，可能需要最大化或最小化目标函数，即找出具有最高或最低得分的候选解决方案。通常，使用神经网络将误差最小化。目标函数通常称为成本函数（cost function）或损失函数（loss function），由损失函数计算出的值简称为损失（loss）。`损失函数有重要作用，因为它必须将模型的表现精简为一个标量值，以使该数字的改善作为表征模型变好的标志`。因此，重要的是损失函数应该强有力地表征我们的设计目标。如果选择不合适的误差函数并获得不符合预期的结果，则表示错误地指定了损失函数。[常用的损失函数](https://blog.csdn.net/weixin_39653948/article/details/105961968)

**损失函数在训练过程中不下降的原因有很多，对于其调整可以从如下几个方面进行考虑**
`loss不下降包括三种情况：`训练集上loss不下降（本文主要讨论的问题），验证集上loss不下降，和测试集上loss不下降 

1、模型结构和特征工程存在问题  
  如果一个模型的结构有问题，那么它就很难训练，通常，自己“自主研发”设计的网络结构可能很难适应实际问题，通过参考别人已经设计好并实现和测试过的结构，以及特征工程方案，进行改进和适应性修改，可以更快更好的完成目标任务。当模型结构不好或者规模太小、特征工程存在问题时，其对于数据的拟合能力不足，是很多人在进行一个新的研究或者工程应用时，遇到的第一个大问题。  
2、权重初始化方案有问题  
神经网络在训练之前，我们需要给其赋予一个初值，但是如何选择这个初始值，则要参考相关文献资料，选择一个最合适的初始化方案`[常用的权重初始化方式](https://cloud.tencent.com/developer/article/1738216)`。合适的初始化方案很重要，用对了，事半功倍，用不对，模型训练状况不忍直视。初始化方案不对，有可能训练半天都训练不动，loss值迟迟居高不下，修改初始化方案，loss值就可能出现断崖式下降。
  `**怎样选择损失函数：**`[如何为神经网络选择损失函数](https://blog.csdn.net/weixin_39653948/article/details/105961968)
  
  ### You’ll want to avoid the non-reproducibility problems
  参考脚本
