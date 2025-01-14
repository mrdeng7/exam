$(document).ready(function() {
    initMenu();
    getuserName();


    // 绑定点击事件到侧边栏的每个菜单项
    $('.sidebar ul li').click(function() {
        // 使用 data-content 属性来确定要加载哪个 HTML
        var contentName = $(this).data('content');
        if (contentName === 'question-manage') {
            // 嵌入 question-manage.html 到具有 id="content" 的元素中
            $('#content').load('question-manage.html', function(response, status, xhr) {
                if (status === "error") {
                    var msg = "Sorry but there was an error: ";
                    $("#content").html(msg + xhr.status + " " + xhr.statusText);
                }
            });
        }
        else if (contentName === 'user-manage'){
            // 嵌入 user-manage.html 到具有 id="content" 的元素中
            $('#content').load('user-manage.html', function(response, status, xhr) {
                if (status === "error") {
                    var msg = "Sorry but there was an error: ";
                    $("#content").html(msg + xhr.status + " " + xhr.statusText);
                }
            });
        }
        else if (contentName === 'module-manage'){
            // 嵌入 module-manage.html 到具有 id="content" 的元素中
            $('#content').load('module-manage.html', function(response, status, xhr) {
                if (status === "error") {
                    var msg = "Sorry but there was an error: ";
                    $("#content").html(msg + xhr.status + " " + xhr.statusText);
                }
            });
        }
        else if (contentName === 'kps-manage'){
            // 嵌入 kps-manage.html 到具有 id="content" 的元素中
            $('#content').load('kps-manage.html', function(response, status, xhr) {
                if (status === "error") {
                    var msg = "Sorry but there was an error: ";
                    $("#content").html(msg + xhr.status + " " + xhr.statusText);
                }
            });
        }
    });



});


