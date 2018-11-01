<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2018/10/29
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui/jquery.easyui.min.js"></script>

</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>
<div data-options="region:'west',title:'West',split:true" style="width:100px;">
    <!-- tree -->
    <ul id="tree" class="easyui-tree">
        <li>
            <span>Folder</span>
            <ul>
                <li>
                    <span>Sub Folder 1</span>
                    <ul>
                        <li>
                            <span><a href="javascript:addGoods('spu','<%=request.getContextPath()%>/toSpuPage.do.do')">spu</a></span>
                        </li>
                        <li>
                            <span><a href="javascript:addGoods('attr','<%=request.getContextPath()%>/toAttrPage.do')">attr</a></span>
                        </li>
                        <li>
                            <span><a href="javascript:addGoods('sku','<%=request.getContextPath()%>/toSkuPage.do')">sku</a></span>
                        </li>
                        <li>
                            <span>File 12</span>
                        </li>
                        <li>
                            <span>File 13</span>
                        </li>
                    </ul>
                </li>
                <li>
                    <span>File 2</span>
                </li>
                <li>
                    <span>File 3</span>
                </li>
            </ul>
        </li>
        <li>
            <span>File21</span>
        </li>
    </ul>
    <!-- tree -->
</div>
<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    <!-- tabs -->

    <div id="tab" class="easyui-tabs" style="width:500px;height:250px;">
        <div title="Tab1" style="padding:20px;display:none;">
            tab1
        </div>
        <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;display:none;">
            tab2
        </div>
        <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;display:none;">
            tab3
        </div>
    </div>
    <!-- tabs -->
</div>
</body>
<script type="text/javascript">
    function addGoods(title , url ){
        if($('#tab').tabs('exists',title)){
            $('#tab').tabs('select',title)
        }else{
            $('#tab').tabs('add',{
                title:title,
                content:'Tab Body',
                closable:true,
                content:'<iframe style="width:100%;height:100%;position:relative;" src="'+url+'" frameborder="0" scrolling="true" ></iframe>',
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        var tab = $('#tab').tabs('getSelected');  // 获取选择的面板
                        $('#tab').tabs('update', {
                            tab: tab,
                            options: {

                            }
                        });

                    }
                }]
            });
        }
    }

</script>
</html>
