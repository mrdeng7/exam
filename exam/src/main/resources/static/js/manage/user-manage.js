$(document).ready(function() {
    initMenu();
    getuserName();

    // 首次载入时加载用户类型
    loadUserTypes();

    // 当下拉框选择变化时，重新渲染表格
    const $userTypeSelect = $('#user-type-select');
    $userTypeSelect.on('change', function() {
        const userType = $(this).val(); // 获取选中的题型ID
        // 切换时  清空 输入框
        document.getElementById("searchWord").value = '';
        renderTable(userType, null); // 根据选中的ID重新渲染表格
    });


    // 监听表单的编辑和删除事件
    layui.use(['table', 'layer'], function () {
        var table = layui.table;
        var layer = layui.layer;

        // 监听操作栏事件
        table.on('tool(test-filter)', function (obj) {
            var data = obj.data; // 获得当前行数据
            var layEvent = obj.event; // 获得 lay-event 对应的值

            if (layEvent === 'edit') {
                alert("开始编辑");
                // 编辑操作
                openEditForm(data);
            } else if (layEvent === 'delete') {
                // 删除操作
                layer.confirm('确定删除这条记录吗?', function (index) {
                    alert("开始删除");
                    // 发起删除请求
                    $.ajax({
                        url: '/api/deleteData/' + data.id, // 或者以POST方式发送data
                        type: 'GET', // 或者DELETE
                        success: function () {
                            layer.close(index);
                            // 删除成功，重新加载表格数据
                            table.reload('test-table');
                        },
                        error: function () {
                            // 删除失败的逻辑处理...
                        }
                    });
                });
            }
        });

    });

});

// 加载用户类型
function loadUserTypes(){
    layui.layer.closeAll();
    // 默认三种类型，游客、老师、学生
    var types = [
        {"userType":3, "value":"游客"},
        {"userType":1, "value":"学生"},
        {"userType":2, "value":"老师"}
    ];

    var select = $('#user-type-select');
    select.empty(); // 清空下拉框

    $.each(types, function(index, type){
        var option = $('<option>').val(type.userType).text(type.value);
        select.append(option);
    });
    layui.form.render('select'); // 更新渲染下拉框
    select.next().find('.layui-this').click(); // 选中第一个

    var firstOptionId = select.val();

    // 加载表单信息
    renderTable(firstOptionId);
}

// 渲染用户信息 到表单中
function renderTable(userType, searchWord){
    // 学生
    if (userType == 1){
        renderStudentTable(searchWord);
    }
    // 老师
    else if (userType == 2){
        renderTeacherTable(searchWord);
    }
    // 游客
    else if (userType == 3){
        renderTourist(searchWord);
    }

}

// 获取老师信息
function renderTeacherTable(searchWord) {
    layui.use(['table'], function(){
        var table = layui.table;

        table.render({
            elem: '#users-table',
            // url: 'http://3e7757722x.vicp.fun/teacher/queryUserList', // 你的API接口URL
            url: '/teacher/queryUserList', // 你的API接口URL
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
                    {field: 'teacherId', title: 'ID', sort: true}
                    ,{field: 'teacherName', title: '姓名'}
                    ,{field: "gender", title: "性别", templet : function (d){
                        if (d == null || d === ''){
                            return "";
                        }
                        return d.gender  === 1?"男":"女";
                    }}
                    ,{field: 'email', title: '邮箱'}
                    ,{field: 'employeeId', title: '编号'}
                    ,{field: 'schoolName', title: '学校名称'}
                    ,{field: 'phone', title: '手机号'}
                    ,{field: 'status', title: '账号状态', templet: function (d){
                        return statusJudgement(d.status);
                    }}
                    ,{field: 'expireTime', title: '到期时间', templet: function(d) {
                        return formatDate(d.expireTime);  // 使用自定义的格式化函数
                    }}
                    // ,{title: '操作', align:'center', toolbar: '#users-actions'}
                ]
            ],
            page: true
        });
    });
}

// 获取学生信息
function renderStudentTable(searchWord) {
    layui.use(['table'], function(){
        var table = layui.table;

        table.render({
            elem: '#users-table',
            // url: 'http://3e7757722x.vicp.fun/student/queryUserList', // 你的API接口URL
            url: '/student/queryUserList', // 你的API接口URL
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
                    {field: 'studentId', title: 'ID', sort: true}
                    ,{field: 'studentName', title: '姓名'}
                    ,{field: "gender", title: "性别", templet : function (d){
                        if (d == null || d === ''){
                            return "";
                        }
                        return d.gender  === 1?"男":"女";
                    }}
                    ,{field: 'email', title: '邮箱'}
                    ,{field: 'studentNo', title: '学号'}
                    ,{field: 'className', title: '班级名称'}
                    ,{field: 'phone', title: '手机号'}
                    ,{field: 'status', title: '账号状态', templet: function (d){
                        return statusJudgement(d.status);
                    }}
                    ,{field: 'expireTime', title: '到期时间', templet: function(d) {
                        return formatDate(d.expireTime);  // 使用自定义的格式化函数
                    }}
                    // ,{title: '操作', align:'center', toolbar: '#users-actions'}
                ]
            ],
            page: true
        });
    });
}

// 获取游客信息
function renderTourist(searchWord){
    layui.use(['table'], function(){
        var table = layui.table;

        table.render({
            elem: '#users-table',
            // url: 'http://3e7757722x.vicp.fun/user/queryTouristInfo', // 你的API接口URL
            url: '/user/queryTouristInfo', // 你的API接口URL
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
                    {field: 'userId', title: 'ID', sort: true}
                    ,{field: 'phone', title: '手机号'}
                    ,{field: 'status', title: '账号状态', templet: function (d){
                        return statusJudgement(d.status);
                    }}
                    ,{field: 'expireTime', title: '到期时间', templet: function(d) {
                        return formatDate(d.expireTime);  // 使用自定义的格式化函数
                    }}
                    // ,{title: '操作', align:'center', toolbar: '#users-actions'}
                ]
            ],
            page: true
        });
    });
}

// 添加用户
function addUser(){
    layui.use(['table', 'layer', 'form', 'laydate'], function(){
        var table = layui.table;
        var layer = layui.layer;
        var form = layui.form;
        var laydate = layui.laydate;
        var types  =  types = [
            {"userType":1, "value":"学生"},
            {"userType":2, "value":"老师"}
        ];
        laydate.render({
            elem: '#expireTime',
            type: 'datetime'
        });

        // 加载编辑框
        layer.open({
            type: 1,
            area: ['700px', '700px'], // 宽高
            title: '添加表单',
            content: $('#editForm'), // 弹层DOM 或 字符串 比如：$("#editForm").html()
            success: function (){
                // 加载用户类型
                var select = $('#userTypeSelect');
                select.empty(); // 清空下拉框
                select.append('<option value="">请选择用户类型</option>');
                $.each(types, function(index, type){
                    var option = $('<option>').val(type.userType).text(type.value);
                    select.append(option);
                });

                let roleDatas = queryRole();
                // 监听用户类型下拉框选择
                // 加载班级
                form.on('select(userTypeSelect)', function(data){
                    let roleDataTmp = [];
                    // 如果选择了 学生
                    if(data.value == 1) {
                        var classDatas = queryClass();
                        var classSelect = $("#classSelect");
                        classSelect.empty(); // 清空子级下拉框选项
                        $.each(classDatas, function (index, child) {
                            classSelect.append($('<option>').val(child.classId).text(child.className));
                        });
                        // 更新渲染子级下拉框
                        layui.form.render('select');
                        $('.classSelect').show(); // 显示选项字段
                        $('.studentNo').show(); // 显示选项字段
                        $('.employee').hide(); // 隐藏选项字段

                        roleDatas.forEach(item => {
                            if (item.roleName !== "admin" && item.roleName !== "teacher") {
                                roleDataTmp.push(item);
                            }
                        });
                    } else if (data.value == 2){
                        $('.classSelect').hide(); // 隐藏选项字段
                        $('.studentNo').hide(); // 隐藏选项字段
                        $('.employee').show(); // 显示选项字段
                        roleDatas.forEach(item => {
                            if (item.roleName !== "student") {
                                console.log(item);
                                roleDataTmp.push(item);
                            }
                        });
                    }
                    // 加载角色
                    var roleSelect = $("#roleSelect");
                    roleSelect.empty(); // 清空子级下拉框选项
                    $.each(roleDataTmp, function (index, child) {
                        roleSelect.append($('<option>').val(child.roleId).text(child.roleName));
                    });
                    form.render('select');
                });

                // 加载学校
                var schoolDatas = querySchool();
                var schoolSelect = $("#schoolSelect");
                schoolSelect.empty(); // 清空子级下拉框选项
                $.each(schoolDatas, function (index, child) {
                    schoolSelect.append($('<option>').val(child.schoolId).text(child.schoolName));
                });

                // 更新渲染下拉框
                form.render('select');

            },
            btn: ['保存', '取消'], // 按钮
            btn1: function (index, layero, that) {
                // 编辑框中的数据
                var formData = layui.form.val('editFormFilter');
                var gender = formData.gender;
                if (gender === "男"){
                    gender = 1;
                }else if (gender === "女"){
                    gender = 0;
                }
                var roleIds = [formData.roleSelect];
                var addUserParam = {
                    "type":formData.userTypeSelect,
                    "phone":formData.phone,
                    "password":formData.password,
                    "email":formData.email,
                    "name":formData.name,
                    "expireTime": new Date(formData.expireTime).getTime(),
                    "roleIds":roleIds,
                    "classId": formData.classSelect,
                    "schoolId": formData.schoolSelect,
                    "gender": gender,
                    "employee": formData.employee,
                    "studentNo": formData.studentNo
                }

                if (validateAddUserParams(addUserParam)){
                    $.ajax({
                        url: "/user/add",
                        type: 'POST',
                        contentType: "application/json",
                        data: JSON.stringify(addUserParam),
                        dataType: 'json',

                        success: function(res) {
                            if (res['code'] === 1 && res['data']) {
                                layui.layer.msg('操作成功！', {
                                    icon: 1,
                                    time: 500 //2秒关闭（如果不配置，默认是3秒）
                                }, function(){
                                    layui.layer.close(index);
                                    // 重新加载表格数据
                                    layui.table.reload('users-table');
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
                }else {
                    layui.layer.msg("检查字段是否未填写！", { icon: 2 });
                }

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
                document.getElementById("editForm").style = "display: none;";
            }

        });



    });
}

function validateAddUserParams(params){
    if (params.schoolId == null || params.schoolId === undefined || params.schoolId === ''){
        return false;
    } else if (params.phone == null || params.phone === undefined || params.phone === '' || params.phone.length > 11) {
        return false;
    } else if (params.password == null || params.password === undefined || params.password === '') {
        return false;
    } else if (params.name == null || params.name === undefined || params.name === '') {
        return false;
    } else if (params.classId == null || params.classId === undefined || params.classId === '') {
        return false;
    } else if (params.type == null || params.type === undefined || params.type === '') {
        return false;
    } else if (params.roleIds == null || params.roleIds === undefined || params.roleIds === '') {
        return false;
    }
    return true;
}

// 用户检索搜索
function queryUserInfo(){
    var userType = document.getElementById("user-type-select").value;
    var searchWord = document.getElementById("searchWord").value;

    renderTable(userType, searchWord);
}


// 获取学校
function querySchool(){
    var options = ''; // 假设获取到的下级选项
    const data = {
        "pageIndex": 1,
        "pageSize":-1,
        "schoolName":""
    }

    $.ajax({
        url: "/school/querySchoolInfo",
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

// 获取班级
function queryClass(){
    var options = ''; // 假设获取到的下级选项
    const data = {
        "pageIndex": 1,
        "pageSize":-1,
        "className":""
    }

    $.ajax({
        url: "/class/queryClassInfo",
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

// 获取角色
function queryRole(){
    let options = ''; // 假设获取到的下级选项
    const data = {
    }

    $.ajax({
        url: "/rbac/queryAllRoles",
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

// 其他代码....

// 时间戳转换为年月日的格式化函数
function formatDate(timestamp) {
    if (timestamp == null || timestamp === ''){
        return "";
    }
    var date = new Date(timestamp);  // 将时间戳转换为 Date 对象
    var year = date.getFullYear();    // 获取年份
    var month = date.getMonth() + 1;  // 获取月份，月份是从 0 开始的，所以需要 +1
    var day = date.getDate();         // 获取日期
    return year + '-' + padStart(month) + '-' + padStart(day);  // 返回格式化的日期字符串
}

// 如果数字小于10，则在前面补0
function padStart(number) {
    return number < 10 ? '0' + number : number;
}

// 校验账号的状态
function statusJudgement(status){
    if (status == null || status === ''){
        return "";
    }
    if (status === 0){
        return "启用";
    }
    else if (status === 1){
        return "到期";
    }
    else if (status === 2){
        return "冻结";
    }
    else if (status === 3){
        return "注销";
    }
}