# Cremodeva
BC4AI：Blockchain Used to Guarantee Credibility of AI Model Evaluations

这是我的毕业论文项目，十分欢迎对这个项目感兴趣的大佬加入开发。

这个项目的目的是实现算法模型的可信度保障，包括测试结果的真实性，保障论文模型的效果是真实可信的。

## 项目初期

### 项目规划

#### 1. **需求分析和规划**

- 确定项目的具体需求和目标。
- 制定项目的时间表和里程碑。
- 确定团队成员和责任分配。【单干】

#### 2. **技术选型**

- **Solidity**：用于编写智能合约，实现去中心化的信任机制。
- **Python**：用于处理机器学习模型的训练和评估。
- **前端技术**（如React, Vue等）：用于创建用户界面，与智能合约交互。

#### 3. **智能合约开发（Solidity）**

- 设计智能合约逻辑，包括模型提交、评估、奖励分配等。
- 编写和测试智能合约。
- 部署智能合约到以太坊测试网或主网。

#### 4. **机器学习模型（Python）**

- 开发或选用适合的机器学习模型。
- 实现模型训练和评估逻辑。
- 确保模型的输出可以与智能合约交互。

#### 5. **前端开发**

- 设计用户界面。
- 实现与智能合约的交互功能。
- 集成机器学习模型的输出显示。

#### 6. **测试和部署**

- 对整个系统进行综合测试，包括单元测试、集成测试和用户测试。
- 部署前端应用到服务器。
- 确保系统安全和性能符合预期。

#### 7. **文档和维护**

- 编写项目文档和用户手册。
- 计划后续的维护和更新。

### 关键点

- **安全性**：确保智能合约的安全性，防止攻击。
- **可扩展性**：设计时考虑系统的可扩展性。
- **用户体验**：前端设计应注重用户体验，使操作直观易用。
- **数据处理**：保证数据的准确性和有效性。

### 参考文献

[1] 冯晨. 基于区块链的可信深度学习隐私保护方案研究[D]. 福建师范大学, 2021.

[2] 卢浩文. 基于图像匹配和区块链存储的大仪实验可信度研究[D]. 杭州电子科技大学, 2023.

[3] Jiang R, Li J, Bu W, et al. A Blockchain-Based Trustworthy Model Evaluation Framework for Deep Learning and Its Application in Moving Object Segmentation[J]. Sensors, 2023, 23(14): 6492.

[4] Wang T, Du M, Wu X, 等. An Analytical Framework for Trusted Machine Learning and Computer Vision Running With Blockchain[C]//Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition Workshops. 2020: 6-7.

[5] Shafay M, Ahmad R W, Salah K, et al. Blockchain for deep learning: review and open challenges[J]. Cluster Computing, 2023, 26(1): 197-221.

[6] Weng J, Weng J, Zhang J, 等. DeepChain: Auditable and Privacy-Preserving Deep Learning with Blockchain-Based Incentive[J]. IEEE Transactions on Dependable and Secure Computing, 2021, 18(5): 2438-2455.

[7] Goel A, Agarwal A, Vatsa M, 等. DeepRing: Protecting Deep Neural Network With Blockchain[C]//Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition Workshops. 2019: 0-0.

### 项目思路

#### 需要实现的功能

- 数据托管（IPFS)
- 模型评估真实性保证
- 代码封存（尤其是训练完毕的模型和评估部分代码）
- 模型真实性投票（适用于论文发布审稿）
- 模型和代码一致性检验
- 多次测试取平均值数据认证
