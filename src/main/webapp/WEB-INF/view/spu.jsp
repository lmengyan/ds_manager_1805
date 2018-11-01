<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2018/10/29
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spu</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        //加载class1
        $(function () {
            //通过getjson异步加载json数据
            $.getJSON("json/class_1.js",function (json) {
                //dom对象转为jquery对象  通过   $()
                $(json).each(function (i,data) {
                    $("#class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'<option>')
                })
            })
        });
        //加载class2 tm代表品牌的意思
        function load_class2_tm(flbh1) {
            $.getJSON("json/class_2_"+flbh1+".js",function (json) {
                //清空 empty()
                $("#class2_select_id").empty();
                //dom对象转为jquery对象  通过   $()
                $(json).each(function (i,data) {
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'<option>')
                })
            })
            //加载品牌
            $.getJSON("json/tm_class_1_"+flbh1+".js",function (json) {
                //清空 empty()
                $("#tm_select_id").empty();
                $("#tm_select_id").append('<option >请选择<option>')
                //dom对象转为jquery对象  通过   $()
                $(json).each(function (i,data) {
                    $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'<option>')
                })
            })


        }
        //跳转到spu添加页面，需要传递参数
        function toAddSpuPage(){
            var flbh1 = $("#class1_select_id").val();
            var flbh2 = $("#class2_select_id").val();
            var ppId = $("#tm_select_id").val();
            location.href="toAddSpuPage.do?flbh1="+flbh1+"&flbh2="+flbh2+"&ppId="+ppId;
        }
    </script>
</head>
<body>

        一级：
        <select id="class1_select_id" onchange="load_class2_tm(this.value)">
            <option>请选择</option>
        </select>
        二级：
        <select id="class2_select_id">
            <option>请选择</option>
        </select>
        品牌：
        <select id="tm_select_id">
            <option>请选择</option>
        </select>
        <hr>
        <a href="javascript:toAddSpuPage()">增加数据</a>
</body>
</html>
