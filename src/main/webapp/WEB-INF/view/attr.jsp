<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2018/10/30
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
        }
        //跳转到spu添加页面，需要传递参数
        function toAddAttrPage(){
            var flbh2 = $("#class2_select_id").val();
            location.href="toAddAttrPage.do?flbh2="+flbh2;
        }

        //通过class2查询属性名和属性值
        function findAttr(flbh2) {
            $.post("findAttrByclass2.do",{"flbh2":flbh2},function (data) {
                $("#attrListDiv").html(data);
            })
        }
    </script>
</head>
<body>

            一级：
            <select id="class1_select_id" onchange="load_class2_tm(this.value)">
                <option>请选择</option>
            </select>
            二级：
            <select id="class2_select_id" onchange="findAttr(this.value)">
                <option>请选择</option>
            </select>
            <hr>
            <a href="javascript:toAddAttrPage()">查询数据</a>
            <hr>
            <div id="attrListDiv">

            </div>
</body>
</html>
