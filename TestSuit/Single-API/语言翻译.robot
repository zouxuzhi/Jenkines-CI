*** Settings ***
Resource          ../../Keyword/API-Keyword/语言翻译.txt
Resource          ../../Keyword/Assert-Keyword/Assert.robot
Resource          ../../Vars/常用参数.robot

*** Test Cases ***
中翻英示例1
    ${resuqlt}    语言翻译    你好
    log    翻译前内容为：${resuqlt}[text]---------------- 翻译后的内容为：${resuqlt}[tst]
    codeAssert    ${resuqlt}[text]    你好

中翻英示例2
    ${resuqlt}    语言翻译    随机
    log    翻译前内容为：${resuqlt}[text]---------------- 翻译后的内容为：${resuqlt}[tst]
    codeAssert    ${resuqlt}[text]    随机

中翻英示例3
    ${resuqlt}    语言翻译    春节
    log    翻译前内容为：${resuqlt}[text]---------------- 翻译后的内容为：${resuqlt}[tst]
    codeAssert    ${resuqlt}[text]    春节

中翻英示例4
    ${resuqlt}    语言翻译    元旦
    log    翻译前内容为：${resuqlt}[text]---------------- 翻译后的内容为：${resuqlt}[tst]
    codeAssert    ${resuqlt}[text]    元旦

中翻英示例5
    ${resuqlt}    语言翻译    晴天
    log    翻译前内容为：${resuqlt}[text]---------------- 翻译后的内容为：${resuqlt}[tst]
    codeAssert    ${resuqlt}[text]    晴天
