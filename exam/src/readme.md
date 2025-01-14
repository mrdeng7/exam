生成 练习题 流程：
    1、生成 “练习题” 的基本介绍
    2、选题
        2.1、随机生成
        2.2、按知识点生成
        2.3、按章节模块生成
        2.4、按错题生成
        2.5、系统推荐（错误率高的知识点 > 低频练习的知识点 > 错误率高的题所在的章节模块）
    3、生成 “练习题” 存储到数据库

--------------可能在做题中途退出了，所以下面流程可单独抽取为一个方法-------------------
    4、选择 “练习题” 
    5、查询 “练习题” 信息，并返回给前端，需要将已做完的题目的结果也返回，
    6、开始答题
        6.1、执行题目答案校验接口，判断是否正确
        6.2、生成做题记录
        6.3、返回解析结果，展示在页面上
    7、所以题目全部操作完毕，点击提交后执行，生成答题记录，返回最终的结果（正确率）

要点：对于主观题，采取“文本相似度”比对的方式，比对结果不可能与预期结果一致，存在误差

登录的参数
{
"password": "tp5tpg",
"phone": "18472613257"
}


<sql id="selectRandomQuestion">
    SELECT * FROM your_table WHERE knowledge_point = #{knowledgePoint} ORDER BY RAND() LIMIT #{limit}
</sql>


<mapper namespace="com.example.mapper.QuestionMapper">

    <select id="selectRandomQuestionsByKnowledgePoints" resultType="com.example.model.Question">
        <foreach collection="knowledgePoints" item="knowledgePoint" separator="UNION ALL">
            <include refid="selectRandomQuestion">
                <property name="knowledgePoint" value="${knowledgePoint.kp}" />
                <property name="limit" value="${knowledgePoint.limit}" />
            </include>
        </foreach>
    </select>

</mapper>




知识点：简单随机取样

模块：分层抽样 + 蓄水池抽样

随机：分层抽样 + 蓄水池抽样

推荐：分层随机取样





























