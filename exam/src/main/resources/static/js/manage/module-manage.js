$(document).ready(function() {
    initMenu();
    getuserName();

    // 首次载入时加载题型和默认数据
    renderModuleTable();


    // 监听表单的编辑和删除事件
    layui.use(['table', 'layer'], function () {
        var table = layui.table;
        var layer = layui.layer;


        // 监听操作栏事件
        table.on('tool(modules-table)', function (obj) {
            var data = obj.data; // 获得当前行数据
            var layEvent = obj.event; // 获得 lay-event 对应的值

            if (layEvent === 'edit') {
                // 编辑操作
                openEditForm(data);
            } else if (layEvent === 'del') {
                // 删除操作
                delModule(data);
            }
        });
    });

});

// 用户检索搜索
function queryModuleInfo(){
    var searchWord = document.getElementById("searchWord").value;
    renderModuleTable(searchWord);
}

// 获取模块信息
function renderModuleTable(searchWord) {
    layui.use(['table'], function(){
        var table = layui.table;

        table.render({
            elem: '#modules-table',
            url: '/module/queryModuleInfo', // 你的API接口URL
            method: 'post',
            contentType: 'application/json',
            request: {
                pageName: 'pageIndex' //页码的参数名称，默认：page
                ,limitName: 'pageSize' //每页数据量的参数名称，默认：limit
            },
            where:  {
                // 向后端发送的其它参数
                moduleName: searchWord || '', // 可以通过函数参数传递不同的题目类型ID
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
                    {field: 'moduleId', title: 'ID', sort: true}
                    ,{field: 'moduleName', title: '模块名称'}
                    ,{field: 'moduleDescription', title: '模块描述'}
                    ,{title: '操作', align:'center', toolbar: '#module-actions'}
                ]
            ],
            page: true
        });



    });
}

// 编辑模块的函数
function openEditForm(data) {
    layui.layer.open({
        type: 1,
        area: ['700px', '500px'], // 宽高
        title: '编辑表单',
        content: $('#editForm'), // 弹层DOM 或 字符串 比如：$("#editForm").html()
        btn: ['保存', '取消'], // 按钮
        success: function (layero, index) {
            // 这里打开一个弹窗，填入 data 的内容，让用户编辑
            layui.form.val('editFormFilter', {
                "moduleName": data.moduleName,
                "moduleDescription": data.moduleDescription
            });
        },
        btn1: function (index, layero, that) {
            // 编辑框中的数据
            var formData = layui.form.val('editFormFilter');
            var updateQuestionParam = {
                "moduleId":data.moduleId,
                "moduleName":formData.moduleName,
                "moduleDescription":formData.moduleDescription
            }
            $.ajax({
                url: "/module/updateModuleInfo",
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
                            layui.table.reload('modules-table');
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
                    layui.layer.msg("修改失败！", { icon: 2 });
                    // 将编辑框设置为不可见
                    document.getElementById("editForm").style = "display: none;";
                }
            });
        },
        btn2: function (index, layero, that) {
            // 将编辑框设置为不可见
            document.getElementById("editForm").style = "display: none;";
        },
        cancel: function (){
            // 右上角 x 回调
            document.getElementById("editForm").style = "display: none;";
        },
        end: function (){
            // close 关闭回调
            // $('#editForm').hide(); // 隐藏选项字段
            document.getElementById("editForm").style = "display: none;";
        }

    });
}

// 删除模块
function delModule(data) {
    layui.layer.confirm('确定删除这条记录吗?', function (index) {
        var delQuestionParam = {
            "moduleId":data.moduleId,
        }
        // 发起删除请求
        $.ajax({
            url: "/module/delModuleInfo",
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
                        layui.table.reload('modules-table');
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

// 添加模块
function addModule(){
    layui.use(['table', 'layer', 'form'], function(){
        var table = layui.table;
        var layer = layui.layer;
        var form = layui.form;

        // 加载编辑框
        layer.open({
            type: 1,
            area: ['700px', '700px'], // 宽高
            title: '添加表单',
            content: $('#editForm'), // 弹层DOM 或 字符串 比如：$("#editForm").html()
            success: function (){
                // 将编辑框设置为不可见
            },
            btn: ['保存', '取消'], // 按钮
            btn1: function (index, layero, that) {
                // 编辑框中的数据
                var formData = layui.form.val('editFormFilter');
                var addModuleParam = {
                    "moduleName":formData.moduleName,
                    "moduleDescription":formData.moduleDescription
                }
                $.ajax({
                    url: "/module/addModuleInfo",
                    type: 'POST',
                    contentType: "application/json",
                    data: JSON.stringify(addModuleParam),
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
                    },
                    error: function() {
                        layui.layer.msg("修改失败！", { icon: 2 });
                    }
                });
            },
            btn2: function (index, layero, that) {
                // 将编辑框设置为不可见
                document.getElementById("editForm").style = "display: none;";
            },
        });



    });

}

// 其他代码....