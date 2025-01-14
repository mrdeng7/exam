存放与数据库中一一对应的实体类，以及实体类的映射文件
```

```java
[]: # Path: src/main/java/com/exam/po/Exam.java



练习记录表 / 试卷表 ：id、名称、分数、总题数、错误数、正确率、学生id、用时、状态、创建时间、更新时间

记录详情表：id、所属的练习记录id、题目id、学生答案、正确答案、是否正确

题目表：id、题目、选项、正确答案、题目类型、题目解析


CREATE TABLE paper (
    paper_id INT NOT NULL AUTO_INCREMENT,
    paper_name VARCHAR(255),
    PRIMARY KEY (paper_id)
);

question_id：问题ID，主键，唯一标识问题。
paper_id：试卷ID，外键，用于链接到试卷表。
question_type：问题类型 （例如“选择题”、“判断题”、“填空题”、“计算题”、“简答题”）。
question_score：题目的分值。
question_difficulty：题目的难易程度。
question_section：题目所属的章节。

CREATE TABLE questions (
    question_id INT NOT NULL AUTO_INCREMENT,
    paper_id INT,
    question_type VARCHAR(255),
    question_content TEXT,
    question_score INT,
    question_difficulty VARCHAR(255),
    question_section VARCHAR(255),
    PRIMARY KEY (question_id),
    FOREIGN KEY (paper_id) REFERENCES paper(paper_id)
);


choice_id：选项ID，主键，唯一标识选项。
question_id：问题ID，外键，用于链接到问题表。
choice_content：选项的内容。
is_correct：一个标志位，表示此选项是否是正确答案。

CREATE TABLE choices (
    choice_id INT NOT NULL AUTO_INCREMENT,
    question_id INT,
    choice_content TEXT,
    is_correct BOOLEAN,
    PRIMARY KEY (choice_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)
);
