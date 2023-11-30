// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModelVoting {
    struct Model {
        string ipfsHash; // IPFS地址，用于存储模型和数据
        address submitter; // 提交模型的用户地址
        uint256 yesVotes; // 支持票数
        uint256 noVotes; // 反对票数
        mapping(address => bool) voted; // 记录是否已投票
    }

    address[] public experts; // 专家列表
    Model[] public models; // 提交的模型列表

    // 事件定义
    event ModelSubmitted(uint256 modelId, string ipfsHash, address submitter);
    event VoteCast(uint256 modelId, bool vote, address voter);

    // 构造函数，初始化专家名单
    constructor(address[] memory _experts) {
        experts = _experts;
    }

    // 提交模型
    function submitModel(string memory _ipfsHash) public {
        models.push(Model({
            ipfsHash: _ipfsHash,
            submitter: msg.sender,
            yesVotes: 0,
            noVotes: 0
        }));
        emit ModelSubmitted(models.length - 1, _ipfsHash, msg.sender);
    }

    // 投票
    function vote(uint256 _modelId, bool _vote) public {
        require(isExpert(msg.sender), "Only experts can vote");
        require(!models[_modelId].voted[msg.sender], "Already voted on this model");

        models[_modelId].voted[msg.sender] = true;
        if (_vote) {
            models[_modelId].yesVotes++;
        } else {
            models[_modelId].noVotes++;
        }

        emit VoteCast(_modelId, _vote, msg.sender);
    }

    // 检查地址是否为专家
    function isExpert(address _user) private view returns (bool) {
        for (uint i = 0; i < experts.length; i++) {
            if (experts[i] == _user) {
                return true;
            }
        }
        return false;
    }
}
