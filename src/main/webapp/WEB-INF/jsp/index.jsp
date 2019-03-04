<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
    <meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<title>Row Editing in DataGrid - jQuery EasyUI Demo</title>
	<link href="/css/layui.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/layui.js"></script>
	<script type="text/javascript" src="/js/nicePage1.js"></script>

    <link rel="stylesheet" href="/css/uikit.css">
    <link rel="stylesheet" href="/css/uikit.almost-flat.css">
    <link rel="stylesheet" href="/css/laydate.css">
    <link rel="stylesheet" href="/css/components/notify.css">
    <script src="/js/uikit.js"></script>
    <script src="/js/laydate.js"></script>
    <script src="/js/components/notify.js"></script>



</head>
<body>
    <nav class="uk-navbar">
    	<div class="uk-container ">
    		<h1 class="uk-navbar-brand uk-hidden-small"
    			style="font-size: 40px; color: white;">
    			<b>MONGDB</b>
    		</h1>
    		<ul class="uk-navbar-nav uk-hidden-small">
    			<li class="uk-active"><a href="page.jsp">mongdb数据管理页面</a></li>
    		</ul>
    	</div>
    	</nav>
    	<div class="main_content">
    		<nav class="uk-breader-container">
    		<div class="uk-container uk-container-center">
    			<div class="uk-grid">
    				<div class="uk-width-1-2">
    					<ul class="uk-breadcrumb ">
    						<li class="uk-active"><span>mongdb数据查询</span></li>
    					</ul>
    				</div>
    			</div>
    		</div>
    		</nav>
    		<div class="uk-container uk-container-center">
    			<ul class="uk-tab" id="rule_base_ul"
    				data-uk-switcher="{connect:'#rule_target_ul'}">
    				<li class="uk-active"><a href="" id="ss2">数据查询</a></li>
    			</ul>
    				<li id="ruleconf_3">
    					<form style="padding-top: 35px;">
    						表id: <input id="ruleName" type="text" name="ruleName" value=""
    							style="width: 150px; height: 25px;">
    						<div>
    							<button id="clickbutton" class="uk-button uk-button-primary"
    								style="margin: -30px; margin-left: 555px;" type="button">查询</button>
    						</div>
    					</form>
    				</li>
    			</ul>
    		</div>
    	</div>


    <div style="width: 90%;height:20%;padding-left: 20px;overflow: auto">
                <blockquote class="layui-elem-quote">查询数据显示</blockquote>
                <!--以下为两个必须div元素-->
                <div id="table" style="overflow: auto"></div>
                <div id="pageBar"></div>
        </div>

</body>

<script type="text/javascript">
	var nameList = ['日期', '日出时刻', '最高温', '最低温', '日落时间', '空气指数', '风向', '风力', '天气', '提示'] //table的列名
	var widthList = [100, 100, 100, 100, 100, 100, 100, 100, 100, 250] //table每列的宽度

	var reportUrl = "http://localhost:9010";


      //根据id获取到表的字段，然后按照逗号分隔开。

	    var reportId =document.getElementById("ruleName").value;
       // var nameList = ['日期', '日出时刻'] //table的列名
      //  var widthList = [100,250] //table每列的宽度

       var cc =aa(reportId);//从后台获de table 的列名,截取为字符串数组
       var nameList = cc.split(",");//table的列名
       var widthList=new Array(nameList.length);//列宽
       for(i in widthList){
           widthList[i] = 200;
        }

        var json = "";
        //初始化table列名
        function aa(reportId){
            var bb="";
            $.ajax({
                url:"/base/getLable",
                data:{"reportId":reportId},
                async: false,
                dataType:"text",
                success:function(data){
                    bb=data;
                }
            })
           // alert(bb);
           return bb;
        }

        //通过点击事件，获取数据集
            function datas(reportId,whereFields){
                var json="";
                $.ajax({
                    url:reportUrl + '/base/select',
                    data:{"reportId":reportId,"whereFields":whereFields},
                    async: false,
                    dataType:"json",
                    success:function(data){
                        json=data;
                    }
                });
                return json;
            }


   $(function () {
           //通过点击事件取得json字符串
           $("#clickbutton").click(function (){
               alert(">>>>>点击查询加载表格")
               var reportId = $("#ruleName").val();
               //获取input里面的值
               var aaa = $('form').serialize();
               //序列化中文时之所以乱码是因为.serialize()调用了encodeURLComponent方法将数据编码了
               //原因：.serialize()自动调用了encodeURIComponent方法将数据编码了
               //解决方法：调用decodeURIComponent(XXX,true);将数据解码
               var whereFields = decodeURIComponent(aaa,true); //关键点

               var json=datas(reportId,whereFields);

               layui.use("laypage",function(){
                   var a=layui.laypage;a.render({
                       elem:nicePage1.bar,
                       limit:nicePage1.limt,
                       theme:nicePage1.color,
                       count:json.length,
                       layout:nicePage1.layout,

                       jump:function(b){
                           document.getElementById(nicePage1.table).innerHTML=function(){
                               var c=[nicePage1.returnHtml(nameList,widthList)],
                                   d=nicePage1.returnList(json).concat().splice(b.curr*b.limit-b.limit,b.limit);
                               layui.each(d,function(e,g){
                                   var f=nicePage1.returnTable(g);
                                   c.push(f)
                               });

                               c.push(" </tbody></table></br>");

                               return c.join("")
                           }()
                       }

                   })
               })
               //刷新操作记录
               renovate();
           })
           nicePage1.setCfg({
               table: 'table',
               bar: 'pageBar',
               limit: 20,
               color: '#1E9FFF',
               layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
           })//初始化完成

       });
</script>

</html>