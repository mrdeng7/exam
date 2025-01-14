$(document).ready(function() {
    initMenu();
    getuserName();

    // 首次载入时加载题型和默认数据
    renderKpsTable();


    // 监听表单的编辑和删除事件
    layui.use(['table', 'layer'], function () {
        var table = layui.table;
        var layer = layui.layer;


        // 监听操作栏事件
        table.on('tool(kps-table)', function (obj) {
            var data = obj.data; // 获得当前行数据
            var layEvent = obj.event; // 获得 lay-event 对应的值

            if (layEvent === 'edit') {
                // 编辑操作
                openEditForm(data);
            } else if (layEvent === 'del') {
                // 删除操作
                delKps(data);
            }
        });
    });
});


// 编辑知识点的函数
function openEditForm(data) {

}

// 添加知识点
function addKps(){

}


// 获取知识点信息
function renderKpsTable(searchWord) {
    layui.use(['table'], function(){
        var table = layui.table;

        table.render({
            elem: '#kps-table',
            url: '/kps/queryKpsInfo', // 你的API接口URL
            method: 'post',
            contentType: 'application/json',
            request: {
                pageName: 'pageIndex' //页码的参数名称，默认：page
                ,limitName: 'pageSize' //每页数据量的参数名称，默认：limit
            },
            where:  {
                // 向后端发送的其它参数
                searchWord: searchWord || '', // 可以通过函数参数传递不同的题目类型ID
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
                    {field: 'kpsId', title: 'ID', sort: true}
                    ,{field: 'kpsName', title: '知识点名称'}
                    // ,{title: '操作', align:'center', toolbar: '#kps-actions'}
                ]
            ],
            page: true
        });
    });
}

// 删除知识点
function delKps(data) {
    layui.layer.confirm('确定删除这条记录吗?', function (index) {
        var delQuestionParam = {
            "kpsId":data.kpsId,
        }
        // 发起删除请求
        $.ajax({
            url: "/kps/delKpsInfo",
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
// 其他代码....
