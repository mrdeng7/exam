$(document).ready(function() {

// document.addEventListener('DOMContentLoaded', function() {
    initMenu();
    getuserName();

    // 首次载入时加载题型和默认数据
    loadQuestionTypes();

    // 当下拉框选择变化时，重新渲染表格
    const $questionTypeSelect = $('#question-type-select');
    $questionTypeSelect.on('change', function() {
        const selectedId = $(this).val(); // 获取选中的题型ID
        renderQuestionTable(selectedId); // 根据选中的ID重新渲染表格
    });


    // 监听表单的编辑和删除事件
    layui.use(['table', 'layer'], function () {
        var table = layui.table;
        var layer = layui.layer;


        // 监听操作栏事件
        table.on('tool(questions-table)', function (obj) {
            var data = obj.data; // 获得当前行数据
            var layEvent = obj.event; // 获得 lay-event 对应的值

            if (layEvent === 'edit') {
                // 编辑操作
                openEditForm(data);
            } else if (layEvent === 'del') {
                // 删除操作
                delQuestion(data);
            }
        });
    });

});


// 动态获取题型并填充下拉框
// function loadQuestionTypes() {
//     const data = {
//     }
//     $.ajax({
//         url: "http://3e7757722x.vicp.fun/question/queryQuestionTypeInfo",
//         // url: "/question/queryQuestionTypeInfo",
//         type: 'POST',
//         contentType: "application/json",
//         data: JSON.stringify(data),
//         dataType: 'json',
//
//         success: function(res) {
//             layer.closeAll();
//             if (res['code'] === 1) {
//                 var select = $('#question-type-select');
//                 select.empty(); // 清空下拉框
//                 types = res.data;
//                 $.each(types, function(index, type){
//                     var option = $('<option>').val(type.questionTypeId).text(type.questionTypeName);
//                     select.append(option);
//                 });
//                 layui.form.render('select'); // 更新渲染下拉框
//                 select.next().find('.layui-this').click(); // 选中第一个
//
//                 var firstOptionId = select.val();
//                 renderQuestionTable(firstOptionId);
//
//             } else {
//                 layui.layer.msg(res.msg, { icon: 2 });
//             }
//             layui.form.render('select'); // 更新渲染
//         },
//         error: function() {
//             layui.layer.closeAll();
//             $('#questionType').empty();
//             layui.form.render();
//             layui.layer.msg("获取题型错误！", { icon: 2 });
//         }
//     });
// }
function loadQuestionTypes() {
    layui.layer.closeAll();
    var types = queryQuestionTypes();
    if (types !== '') {
        var select = $('#question-type-select');
        select.empty(); // 清空下拉框
        $.each(types, function(index, type){
            var option = $('<option>').val(type.questionTypeId).text(type.questionTypeName);
            select.append(option);
        });
        layui.form.render('select'); // 更新渲染下拉框
        select.next().find('.layui-this').click(); // 选中第一个

        var firstOptionId = select.val();
        renderQuestionTable(firstOptionId);

    } else {
        layui.layer.msg("获取题型异常！", { icon: 2 });
    }
}

// 获取题目
function renderQuestionTable(questionTypeId) {
    layui.use(['table', 'layer', 'form'], function(){
        var table = layui.table;
        var layer = layui.layer;
        var form = layui.form;

        table.render({
            elem: '#questions-table',
            // url: 'http://127.0.0.1:18010/question/queryQuestions', // 你的API接口URL
            url: '/question/queryQuestions', // 你的API接口URL
            method: 'post',
            contentType: 'application/json',
            request: {
                        pageName: 'pageIndex' //页码的参数名称，默认：page
                        ,limitName: 'pageSize' //每页数据量的参数名称，默认：limit
                    },
            where:  {
                // 向后端发送的其它参数
                questionTypeId: questionTypeId || '', // 可以通过函数参数传递不同的题目类型ID
                // pageSize: 10
            },
            parseData: function(res) {
                if (res['code'] === 1) {
                    var code = res.code === 1 ? 0 : res.code;
                    return {
                        "code": code, //解析接口状态
                        "msg": res.msg, //解析提示文本
                        "count": res.total, //解析数据长度
                        "data": res.data //解析数据列表
                    };
                }else {
                    // 如果 API 返回一个错误或者status字段不是期望的值，我们可以传递一个错误消息给用户
                    return {
                        "code": -1, // 非0值表明一个错误
                        "msg": res.msg, // 可能是一个错误消息
                        "count": 0, // 没有有效数据
                        "data": [] // 空数据列表
                    };
                }
            },
            cols: [
                [ // 表头
                    {field: 'questionId', title: 'ID', sort: true}
                    // ,{field: 'questionTypeId', title: '题型'}
                    ,{field: 'moduleName', title: '模块'}
                    ,{field: 'kpsName', title: '知识点'}
                    ,{field: 'question', title: '题干'}
                    ,{field: 'questionKey', title: '参考答案'}
                    ,{field: 'difficulty', title: '难易程度'}
                    ,{field: 'analysis', title: '解析'}
                    // ,{field: 'score', title: '分值'}
                    ,{title: '操作', align:'center', toolbar: '#question-actions'}
                ]
            ],
            page: true
        });
    });
}

// 编辑题目的函数
function openEditForm(data) {
    layui.layer.open({
        type: 1,
        area: ['700px', '500px'], // 宽高
        title: '编辑表单',
        content: $('#editForm'), // 弹层DOM 或 字符串 比如：$("#editForm").html()
        btn: ['保存', '取消'], // 按钮
        success: function (layero, index) {
            document.getElementById("questionTypeSelectId").style = "display: none;";
            document.getElementById("options").style = "display: none;";
            // var formData = layui.form.val('editFormFilter');

            var options = queryModuleAndKps();
            // 将数据填充到下拉框中
            var parentSelect = $('#parentSelect');
            parentSelect.empty(); // 清空下拉框
            parentSelect.append('<option value="">请选择模块</option>');
            $.each(options, function(index, option){
                option = $('<option>').val(option.moduleId).text(option.moduleName);
                parentSelect.append(option);
            });

            // 监听父级下拉框选择，填充子级下拉框
            layui.form.on('select(parentSelect)', function (data) {
                var childSelect = $("#childSelect");
                childSelect.empty(); // 清空子级下拉框选项

                // 查找选中的父级中的子级数组并填充
                $.each(options, function (index, parent) {
                    if (parent.moduleId == data.value) {
                        $.each(parent.kpsBeanList, function (index, child) {
                            child = $('<option>').val(child.kpsId).text(child.kpsName);
                            childSelect.append(child);
                        });
                    }
                });
                // 更新渲染子级下拉框
                layui.form.render('select');
            });

            var questionTypes = queryQuestionTypes();
            var questionTypeSelect = $('#questionTypeSelect');
            questionTypeSelect.empty(); // 清空下拉框
            questionTypeSelect.append('<option value="">请选择题型</option>');
            $.each(questionTypes, function(index, option){
                option = $('<option>').val(option.questionTypeId).text(option.questionTypeName);
                questionTypeSelect.append(option);
            });

            // 更新渲染下拉框
            layui.form.render('select');

            // 监听题型选择的下拉框更改事件
            layui.form.on('select(questionTypeSelect)', function(data){
                // 如果选择了选择题
                if(data.value == 1 || data.value == 2) {
                    $('.options').show(); // 显示选项字段
                } else {
                    $('.options').hide(); // 如果不是选择题，隐藏选项字段
                }
                layui.form.render('radio'); // 调用这个来更新单选按钮的渲染
            });

            // 这里打开一个弹窗，填入 data 的内容，让用户编辑
            layui.form.val('editFormFilter', {
                "kpsName": data.kpsName,
                "question": data.question,
                "questionKey": data.questionKey,
                "difficulty": data.difficulty,
                "analysis": data.analysis
            });
        },
        btn1: function (index, layero, that) {
            // 编辑框中的数据
            var formData = layui.form.val('editFormFilter');
            var updateQuestionParam = {
                "questionId":data.questionId,
                "question":formData.question,
                "questionKey":formData.questionKey,
                "difficulty":formData.difficulty,
                "analysis":formData.analysis,
                "moduleId":formData.parent,
                "kpsId":formData.child
            }
            if (validateParams(updateQuestionParam)){
                $.ajax({
                    // url: "http://127.0.0.1:18010/question/updateQuestions",
                    url: "/question/updateQuestions",
                    type: 'POST',
                    contentType: "application/json",
                    data: JSON.stringify(updateQuestionParam),
                    dataType: 'json',

                    success: function(res) {
                        if (res['code'] === 1 && res['data']) {
                            layui.layer.msg('操作成功！', {
                                icon: 1,
                                time: 500 //2秒关闭（如果不配置，默认是3秒）
                            }, function(){
                                layui.layer.close(index);
                                // 重新加载表格数据
                                layui.table.reload('questions-table');
                                // window.parent.layer.getFrameIndex();
                                // window.parent.layer.close(index);
                                // parent.location.reload();
                                return false;
                            });
                            // 将编辑框设置为不可见
                            document.getElementById("editForm").style = "display: none;";
                        } else {
                            layui.layer.msg(res.msg, { icon: 2 });
                        }
                    },
                    error: function() {
                        // 将编辑框设置为不可见
                        document.getElementById("editForm").style = "display: none;";
                        layui.layer.msg("修改失败！", { icon: 2 });
                    }
                });
            } else {
                layui.layer.msg("检查字段是否未填写！", { icon: 2 });
            }


        },
        btn2: function (index, layero, that) {
            // 将编辑框设置为不可见
            document.getElementById("editForm").style = "display: none;";
        },

    });
}

function validateParams(params){
    if (params.moduleId == null || params.moduleId === undefined || params.moduleId === ''){
        return false;
    } else if (params.kpsId == null || params.kpsId === undefined || params.kpsId === '') {
        return false;
    } else if (params.questionId == null || params.questionId === undefined || params.questionId === '') {
        return false;
    } else if (params.question == null || params.question === undefined || params.question === '') {
        return false;
    } else if (params.questionKey == null || params.questionKey === undefined || params.questionKey === '') {
        return false;
    }

    return true;
}

// 删除题目
function delQuestion(data) {
    layui.layer.confirm('确定删除这条记录吗?', function (index) {
        var delQuestionParam = {
            "questionId":data.questionId,
        }
        // 发起删除请求
        $.ajax({
            // url: "http://127.0.0.1:18010/question/delQuestions",
            url: "/question/delQuestions",
            type: 'POST',
            contentType: "application/json",
            data: JSON.stringify(delQuestionParam),
            dataType: 'json',
            success: function(res) {
                if (res['code'] === 1 && res['data']) {
                    layui.layer.msg('操作成功！', {
                        icon: 1,
                        time: 500 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        layui.layer.close(index);
                        // 删除成功，重新加载表格数据
                        layui.table.reload('questions-table');
                        return false;
                    });
                } else {
                    layui.layer.msg(res.msg, { icon: 2 });
                }
            },
            error: function() {
                layui.layer.msg("修改失败！", { icon: 2 });
            }
        });
    });
}

// 添加题目
function addQuestion(){
    layui.use(['table', 'layer', 'form'], function(){
        var table = layui.table;
        var layer = layui.layer;
        var form = layui.form;
        var options  = '';

        // 加载编辑框
        layer.open({
            type: 1,
            area: ['700px', '700px'], // 宽高
            title: '添加表单',
            content: $('#editForm'), // 弹层DOM 或 字符串 比如：$("#editForm").html()
            success: function (){
                document.getElementById("questionTypeSelectId").style = "";
                options = queryModuleAndKps();
                // 将数据填充到下拉框中
                var parentSelect = $('#parentSelect');
                parentSelect.empty(); // 清空下拉框
                parentSelect.append('<option value="">请选择模块</option>');
                $.each(options, function(index, option){
                    option = $('<option>').val(option.moduleId).text(option.moduleName);
                    parentSelect.append(option);
                });

                // 监听父级下拉框选择，填充子级下拉框
                form.on('select(parentSelect)', function (data) {
                    var childSelect = $("#childSelect");
                    childSelect.empty(); // 清空子级下拉框选项

                    // 查找选中的父级中的子级数组并填充
                    $.each(options, function (index, parent) {
                        if (parent.moduleId == data.value) {
                            $.each(parent.kpsBeanList, function (index, child) {
                                child = $('<option>').val(child.kpsId).text(child.kpsName);
                                childSelect.append(child);
                            });
                        }
                    });
                    // 更新渲染子级下拉框
                    form.render('select');
                });

                var questionTypes = queryQuestionTypes();
                var questionTypeSelect = $('#questionTypeSelect');
                questionTypeSelect.empty(); // 清空下拉框
                questionTypeSelect.append('<option value="">请选择题型</option>');
                $.each(questionTypes, function(index, option){
                    option = $('<option>').val(option.questionTypeId).text(option.questionTypeName);
                    questionTypeSelect.append(option);
                });

                // 更新渲染下拉框
                form.render('select');

                // 监听题型选择的下拉框更改事件
                form.on('select(questionTypeSelect)', function(data){
                    // 如果选择了选择题
                    if(data.value == 1 || data.value == 2) {
                        $('.options').show(); // 显示选项字段
                    } else {
                        $('.options').hide(); // 如果不是选择题，隐藏选项字段
                    }
                    form.render('radio'); // 调用这个来更新单选按钮的渲染
                });
            },
            btn: ['保存', '取消'], // 按钮
            btn1: function (index, layero, that) {
                // 编辑框中的数据
                var formData = layui.form.val('editFormFilter');

                var correctAnswer = formData.correctAnswer;
                var optionA = formData.optionA;
                var optionB = formData.optionB;
                var optionC = formData.optionC;
                var optionD = formData.optionD;

                var optionBeans = [];
                if (correctAnswer != null && correctAnswer !== ''){
                    if (optionA != null){
                        optionBeans.push({
                            "optionNumber": "A",
                            "content": optionA,
                            "keyWhether": correctAnswer === "A"
                        })
                    }
                }
                if (correctAnswer != null && correctAnswer !== ''){
                    if (optionB != null){
                        optionBeans.push({
                            "optionNumber": "B",
                            "content": optionB,
                            "keyWhether": correctAnswer === "B"
                        })
                    }
                }
                if (correctAnswer != null && correctAnswer !== ''){
                    if (optionC != null){
                        optionBeans.push({
                            "optionNumber": "C",
                            "content": optionC,
                            "keyWhether": correctAnswer === "C"
                        })
                    }
                }
                if (correctAnswer != null && correctAnswer !== ''){
                    if (optionD != null){
                        optionBeans.push({
                            "optionNumber": "D",
                            "content": optionD,
                            "keyWhether": correctAnswer === "D"
                        })
                    }
                }


                var addQuestionParam = {
                    "question":formData.question,
                    "questionKey":formData.questionKey,
                    "difficulty":formData.difficulty,
                    "analysis":formData.analysis,
                    "moduleId":formData.parent,
                    "kpsId":formData.child,
                    "questionTypeId":formData.questionType,
                    "optionBeans": optionBeans
                }
                if (validateAddQuestionParams(addQuestionParam)){
                    $.ajax({
                        // url: "http://127.0.0.1:18010/question/addQuestions",
                        url: "/question/addQuestions",
                        type: 'POST',
                        contentType: "application/json",
                        data: JSON.stringify(addQuestionParam),
                        dataType: 'json',

                        success: function(res) {
                            if (res['code'] === 1 && res['data']) {
                                layui.layer.msg('操作成功！', {
                                    icon: 1,
                                    time: 500 //2秒关闭（如果不配置，默认是3秒）
                                }, function(){
                                    layui.layer.close(index);
                                    // 重新加载表格数据
                                    layui.table.reload('questions-table');
                                    // window.parent.layer.getFrameIndex();
                                    // window.parent.layer.close(index);
                                    // parent.location.reload();
                                    return false;
                                });
                            } else {
                                layui.layer.msg(res.msg, { icon: 2 });
                            }
                            // 将编辑框设置为不可见
                            document.getElementById("editForm").style = "display: none;";
                            document.getElementById("questionTypeSelectId").style = "display: none;";
                            document.getElementById("options").style = "display: none;";
                        },
                        error: function() {
                            layui.layer.msg("修改失败！", { icon: 2 });
                        }
                    });
                }else {
                    layui.layer.msg("检查字段是否未填写！", { icon: 2 });
                }

            },
            btn2: function (index, layero, that) {
                // 将编辑框设置为不可见
                document.getElementById("editForm").style = "display: none;";
                document.getElementById("questionTypeSelectId").style = "display: none;";
                document.getElementById("options").style = "display: none;";
            },
            cancel: function (){
                // 右上角 x 回调
                document.getElementById("editForm").style = "display: none;";
                document.getElementById("questionTypeSelectId").style = "display: none;";
                document.getElementById("options").style = "display: none;";
            },
            end: function (){
                document.getElementById("editForm").style = "display: none;";
                document.getElementById("questionTypeSelectId").style = "display: none;";
                document.getElementById("options").style = "display: none;";
                // close 关闭回调
            }

        });



    });

}
function validateAddQuestionParams(params){
    if (params.moduleId == null || params.moduleId === undefined || params.moduleId === ''){
        return false;
    } else if (params.kpsId == null || params.kpsId === undefined || params.kpsId === '') {
        return false;
    } else if (params.questionId == null || params.questionId === undefined || params.questionId === '') {
        return false;
    } else if (params.question == null || params.question === undefined || params.question === '') {
        return false;
    } else if (params.questionKey == null || params.questionKey === undefined || params.questionKey === '') {
        return false;
    } else if (params.questionTypeId == null || params.questionTypeId === undefined || params.questionTypeId === '') {
        return false;
    }
    // 选择题、判断题  需要要有选项
    if (params.questionTypeId == 1 || params.questionTypeId ==2){
        if (params.optionBeans == null || params.optionBeans === undefined || params.optionBeans === ''){
            return false;
        }
    }

    return true;
}


// 查询模块和知识点
function queryModuleAndKps(){
    var options = ''; // 假设获取到的下级选项
    const data = {
    }

    $.ajax({
        // url: "http://127.0.0.1:18010/module/queryModuleAndKps",
        url: "/module/queryModuleAndKps",
        type: 'POST',
        contentType: "application/json",
        data: JSON.stringify(data),
        dataType: 'json',
        async:false,
        success: function(res) {
            if (res['code'] === 1) {
                options = res['data'];
            } else {
                options = '';
            }
        }
    });
    return options;
}


// 查询题型
function queryQuestionTypes(){
    const data = {
    }
    var result = '';
    $.ajax({
        // url: "http://127.0.0.1:18010/question/queryQuestionTypeInfo",
        url: "/question/queryQuestionTypeInfo",
        type: 'POST',
        contentType: "application/json",
        data: JSON.stringify(data),
        dataType: 'json',
        async:false,
        success: function(res) {
            if (res['code'] === 1) {
                result = res.data;
            } else {
                layui.layer.msg(res.msg, { icon: 2 });
            }
        },
        error: function() {
            layui.layer.msg("获取题型异常！", { icon: 2 });
        }
    });
    return result;
}

// 其他代码....