/*
 * @Author: linlinlin123456 37059062+linlinlin123456@users.noreply.github.com
 * @Date: 2024-04-08 00:32:19
 * @LastEditors: linlinlin123456 37059062+linlinlin123456@users.noreply.github.com
 * @LastEditTime: 2024-04-22 23:43:35
 * @FilePath: /exam/src/main/resources/static/js/common.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
//获取用户名
function getuserName() {
  const token = sessionStorage.getItem("token");
  const username = sessionStorage.getItem("username");
  if (username) {
    $("#login_area").hide();
    $("#user_area").empty();
    $("#user_area").append(
      `<span style="margin-right: 30px;">${username}</span>
        <span onclick="logout()"  style="margin-right: 30px;cursor: pointer;">退出</span>`
    );
    $("#user_area").show();
  } else {
    $("#login_area").show();
    $("#user_area").empty();
    $("#user_area").hide();
  }
}
//退出登录
function logout() {
  $.ajax({
    type: "GET",
    contentType: "application/json",
    dataType: "json",
    url: "/user/logout",
    // url: "http://3e7757722x.vicp.fun/user/logout",
    dataType: "json",
    beforeSend: function (xhr) {
      xhr.setRequestHeader("Authorization", sessionStorage.getItem("token"));
    },
    success: function (res) {
      sessionStorage.setItem("token", ""); //传输token
      sessionStorage.setItem("username", ""); //用户名
      sessionStorage.setItem("userId", ""); //用户Id
      sessionStorage.setItem("userType", ""); //用户type
      window.location.href = "./index.html";
    },
    error: function (err) {
      sessionStorage.setItem("token", ""); //传输token
      sessionStorage.setItem("username", ""); //用户名
      sessionStorage.setItem("userId", ""); //用户Id
      sessionStorage.setItem("userType", ""); //用户type

      window.location.href = "./index.html";
    },
  });
}
function initMenu() {
  const userType = sessionStorage.getItem("userType"); //用户type
  if (userType == "") {
    //未登录
    $("#practice_center").css("display", "none");
    $("#exam_center").css("display", "none");
    $("#review_question").css("display", "none");
    $("#test_paper_center").css("display", "none");
    $("#manager_center").css("display", "none");
  } else if (userType == 1) {
    //登录 学生
    $("#practice_center").css("display", "inline-block");
    $("#exam_center").css("display", "inline-block");
    $("#review_question").css("display", "inline-block");
    $("#test_paper_center").css("display", "none");
    $("#manager_center").css("display", "none");
  } else if (userType == 2) {
    //登录 老师
    $("#practice_center").css("display", "none");
    $("#exam_center").css("display", "none");
    $("#review_question").css("display", "none");
    $("#test_paper_center").css("display", "inline-block");
    $("#manager_center").css("display", "inline-block");
  }
}

function getDate(str) {
  var oDate = new Date(str),
    oYear = oDate.getFullYear(),
    oMonth = oDate.getMonth() + 1,
    oDay = oDate.getDate(),
    oHour = oDate.getHours(),
    oMin = oDate.getMinutes(),
    oSen = oDate.getSeconds(),
    oTime =
      oYear +
      "-" +
      addZero(oMonth) +
      "-" +
      addZero(oDay) +
      " " +
      addZero(oHour) +
      ":" +
      addZero(oMin) +
      ":" +
      addZero(oSen);
  return oTime;
}

//补零操作
function addZero(num) {
  if (parseInt(num) < 10) {
    num = "0" + num;
  }
  return num;
}
