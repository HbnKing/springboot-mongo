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
    			style="font-size: 50px; color: white;padding-top:10px"">
    			<b>MONGDB</b>
    		</h1>
    		<%--<ul class="uk-navbar-nav uk-hidden-small">
    			<li class="uk-active"><a href="index.jsp">mongdb数据查询页面</a></li>
    		</ul>--%>
    	</div>
    	</nav>
    <!-- 	<div class="main_content">
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
    								style="margin: -30px; margin-left: 555px;" type="button">查询单个文档</button>
								<button id="clickbuttonfindall" class="uk-button uk-button-primary"
										style="margin: -30px; margin-left: 155px;" type="button">查询全部文档</button>
    						</div>
    					</form>
    				</li>
    			</ul>
    		</div>
    	</div> -->


  <!--   <div style="width: 90%;height:20%;padding-left: 20px;overflow: auto">
                <blockquote class="layui-elem-quote">查询数据显示</blockquote>
                以下为两个必须div元素
                <div id="table" style="overflow: auto"  style="transform: translate(-600px);"></div>
                <div id="pageBar"></div>
        </div> -->



<!--11111111111111-->
	<div style="margin: 15px ; ">
	<!-- 	<fieldset class="layui-elem-field layui-field-title"
				  style="margin-top: 20px;">
			<legend>添加</legend>
			
			
		</fieldset> -->
	
		
		<form id="addf" class="form-inline layui-form">
		<fieldset class="layui-elem-field layui-field-title"
				  >
		
			<legend 	>
					<h5 >添加
				<div class="layui-input-inline">
						<input id="jobIdinput" type="text" class="jobIdinput" lay-verify="required" name="jobIdinput" placeholder="请输入jobId" autocomplete="off"
						style="  height: 32px;
						  padding-left: 10px;
						   border-style: solid; 
						    border-width: 1px;
						   font-size: 14px;
						    border-color: #e6e6e6;background-color: #fff;
						    border-radius: 2px;"/>
						

				</div>
			</legend>
		</fieldset>	
			
			
			<div style="padding: 10px;border: 1px #b2b2b2 solid;width: 1200px">
			
				<div id="formpart" class="itemdiv layui-form-item">
				
					<div class="layui-input-inline inheight" style="width: 10px;">
						<label>条件：</label><br/>
					</div>
					
					<div class="layui-input-inline">
						<select lay-verify="required" name="factory2" id="factory" lay-filter="" lay-search="lay-search">
							<option value="" selected="selected">请选择影响因素</option>
							<option value="identity">identity</option>
						</select>
					</div>
				
					<div class="layui-input-inline">
						<select name="operator" id="operator" lay-verify="required" lay-filter="" lay-search="lay-search">
							<option value="" selected="selected">字段类型</option>
							<option value="String">String</option>
							<option value="Double">Double</option>
							<option value="Int">Int</option>
							<option value="Long">Long</option>
							<option value="Date">Date</option>
							<option value="Boolean">Boolean</option>
						</select>
					</div>
				
					<div class="layui-input-inline">
						<input class="layui-input f_val" lay-verify="required" name="f_val" placeholder="请输入因素数值" autocomplete="off"/>
					</div>
					
						
					<div class="layui-btn" style="transform: translateX(400px);" id="addform">+</div>
					
					<div class="layui-btn" style="transform: translateX(400px);" id="rabkool">-</div>

					<button class="layui-btn" lay-submit="" style="transform:translateX(400px);"
					id="but_sub" lay-filter="formsub" >确认
					</button>
					
				</div>
			</div>

		</form>
	</div>
	
	<div class="main_content">
    		<nav class="uk-breader-container">
    		<div class="uk-container uk-container-center">
    			<div class="uk-grid">
    				<div class="uk-width-1-2">
    					<!-- <ul class="uk-breadcrumb ">
    						<li class="uk-active"><span>mongdb数据查询</span></li>
    					</ul> -->
    				</div>
    			</div>
    		</div>
    		</nav>
    				
    			<ul class="uk-tab" id="rule_base_ul"
    				data-uk-switcher="{connect:'#rule_target_ul'}">
    				<li class="uk-active"><a href="" id="ss2">数据查询</a></li>
    			</ul>
    				<li id="ruleconf_3">
    				
    					<form style="padding-top: 35px;">
    						JobId: <input id="ruleName" type="text" name="ruleName" value=""
    						style="height: 30px ; padding-left: 10px;"
    							>
    	<!-- 	<div style="transform: translate(400px,-24px);"> -->		
    							<button id="clickbutton" class="uk-button uk-button-primary"
    								 type="button">查询单个文档</button>
								<button id="clickbuttonfindall" class="uk-button uk-button-primary"
										type="button">查询全部文档</button>
    	<!-- </div>	 -->	
    					</form>
    					
    				</li>
    			</ul>
    		</div>
	
	  <div style="width: 90%;height:20%;padding-left: 20px;overflow: auto">
                <blockquote class="layui-elem-quote">查询数据显示</blockquote>
                <!--以下为两个必须div元素-->
                <div id="table" style="overflow: auto"  style="transform: translate(-600px);"></div>
                <div id="pageBar"></div>
        </div>
	<%--<table id="tabledata" lay-filter="the_table" ></table>--%>
<!--1111112222222-->
</body>

<script type="text/javascript">
	<!--  11111111    -->

    layui.use(['table','layer','form'], function(){
        var table = layui.table;
        var layer = layui.layer ;
        var laytpl = layui.laytpl;
        var form = layui.form;
        var $ = layui.$ ;


        table.render({
            elem: '#tabledata', //指定原始表格元素选择器（推荐id选择器）
            url:"http://localhost:9010/job/findall",
            page:true,
            limits: [10,20,30],
            limit: 10,
            skin:'row',
            even:true,
            id:'the_table',
            cols: [[
                //{field: 'id', title: 'id', width: '20%', align:'center',sort: true, },
                //{field: 'sop_id', title: 'SOP编号', width: '20%', align:'center',sort: true},
               // {field: 'condition_expert', title: '条件', width: '20%', align:'center',sort: true},
                //{field: 'condition_onenet', title: '动作', width: '19%', align:'center',sort: true},
                //{fixed: 'right',title:'工具栏', width:'19%', align:'center', toolbar: '#toolbtn'}
            ]]
        });

      table.on('tool(the_table)', function(obj){
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if(layEvent === 'del'){
                layer.confirm('确认删除么', function (index) {
                    $.ajax({
                        type: "post",
                        url: 'http://localhost:9010/itemdel?id=' + data.id,
                        data: {
                            id: data.id
                        },
                        dataType: "json",
                        sync: "false",
                        success: function (data) {
                            layer.msg(data.message);
                        },
                        error: function () {
                        }
                    })
                    table.reload("the_table");
                });
            }
        });


        $("#add_btn").click(function(){
            layer.open({
                type: 2,
                title:['添加','font-size:22px'],
                area: ['400px', '420px'],
                content: '/additem',
                cancel: function(index, layer){
                    table.reload("the_table");
                }
            });
        });

        form.on('submit(formsub)', function(data){
            console.info("try to  submit  form")
            var $elements = $('.itemdiv');
            var len = $elements.length;
            var condition_expert='';
            var condition_onenet='';

            var ids = [] ;

            console.info($("#jobIdinput").val())
            var jobId = $("#jobIdinput").val();
            console.info("jobid is "+jobId);

            for(var i=0;i<len;i++){
                var f=$(".itemdiv").eq(i).children().eq(1).children().eq(1).children().eq(0).children().eq(0).val();
                var o=$(".itemdiv").eq(i).children().eq(2).children().eq(1).children().eq(0).children().eq(0).val();
                var v=$(".f_val").eq(i).val();
                console.info("f is "+f);
				console.info("o is "+o);
				console.info("v is" +v);

                /**
				  *
                 * @type {*|void}
                 */

                ids.push(v);

                var fv = $("select[name='factory']").eq(i).val();
                var ov = $("select[name='operator']").eq(i).val();

                console.info("fv is" +fv);
                console.info("ov is" +ov);

                if(i==0){
                    condition_expert=f+o+v;
                    condition_onenet='{'+fv+'}'+ov+v;
                }else{
                    condition_expert=condition_expert+'并且'+f+o+v;
                    condition_onenet=condition_onenet+'&'+'{'+fv+'}'+ov+v;
                }
            }
            if(len>1){
                condition_onenet='('+condition_onenet+')';
            }
            console.log(condition_expert);
            console.log(condition_onenet);



            var json="";


            //新增 和修改
			if(jobId==null || jobId == ""){

			console.info("插入");
            $.ajax({
                url: reportUrl + '/job/insert',
                type : 'POST',
                data : {
                    "identity":ids,
                },
                success : function(returndata) {
                    $('#addf')[0].reset();
                    table.reload("the_table");
                },
                error : function(returndata) {
                }
            });

            }else {
			    console.info("更新")
			    json = dataUpdate(jobId,ids);
			    $('#addf')[0].reset();
                table.reload("the_table");

			}



            return false;
            return false;

        });

        $("#addform").click(function () {
            //添加的内容
            var addform =        	'            <div id="rab" class="itemdiv layui-form-item">\n' +
                '                <div class="layui-input-inline inheight" style="width: 10px;">\n' +
                '                    <label>并且：</label><br/>\n' +
                '                </div>\n' +
                '                <div class="layui-input-inline">\n' +
                '                    <select lay-verify="required" name="factory" id="factory" lay-filter="" lay-search="lay-search">\n' +
                '                        <option value="" selected="selected">请选择影响因素</option>\n' +
                '                        <option value="identity">identity</option>\n' +
               /* '	<option value="" selected="selected">权重级别</option>\n' +
				'	<option value=">">高</option>\n' +
				'	<option value="=">等</option>\n' +
				'	<option value="=">小</option>\n' +*/
                
                /*  '                     <option value="" selected="selected">字段类型</option>\n' +
				'				<option value="String">String</option>\n' +
				'				<option value="Double">Double</option>\n' +
				'				<option value="Int">Int</option>\n' +
				'				<option value="Long">Long</option>\n' +
				'				<option value="Date">Date</option>\n' +
				'				<option value="Boolean">Boolean</option>\n' + */
               /*  '                        <option value="" selected="selected">请选择影响因素</option>\n' +
                '                        <option value="identity">identity</option>\n' +
                '                        <option value="profile">profile</option>\n' +
                '                        <option value="tag">tag</option>\n' + */
                '                    </select>\n' +
                '                </div>\n' +
                '                <div class="layui-input-inline">\n' +
                '                    <select name="operator" id="operator" lay-verify="required" lay-filter="" lay-search="lay-search">\n' +
                '                     <option value="" selected="selected">字段类型</option>\n' +
				'				<option value="String">String</option>\n' +
				'				<option value="Double">Double</option>\n' +
				'				<option value="Int">Int</option>\n' +
				'				<option value="Long">Long</option>\n' +
				'				<option value="Date">Date</option>\n' +
				'				<option value="Boolean">Boolean</option>\n' +
			/* 	'	<option value="" selected="selected">权重级别</option>\n' +
				'	<option value=">">高</option>\n' +
				'	<option value="=">等</option>\n' +
				'	<option value="=">小</option>\n' + */
                '                    </select>\n' +
                '                </div>\n' +
                '                <div class="layui-input-inline">\n' +
                '                    <input class="layui-input f_val" lay-verify="required" name="f_val" placeholder="请输入因素数值" autocomplete="off"/>\n' +
                '                </div>\n' +
                '            </div>';
                
            $("#formpart").after($(addform));

			form.render();
        }); 
        
        
        
        
    $("#rabkool").click(function () {
     
        
        	console.info("deldeeee")
        	
                     $("#rab").remove()
                   
                     form.render();
             }); 
        

        

        var $ = layui.$, active = {
            reload : function() {
                var demoReload = $('#demoReload');

                //执行重载
                table.reload('the_table', {
                    page : {
                        curr : 1
                        //重新从第 1 页开始
                    },
                    where : {
                        name : demoReload.val()
                    }
                });	
            }
        };

        $('.demoTable .layui-btn').on('click', function() {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });



    <!--  2222222222    -->

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
            function datasbak(reportId,whereFields){
                var json="";
                $.ajax({
                    url:reportUrl + '/base/select',
                    data:{"id":reportId,"whereFields":whereFields},
                    async: false,
                    dataType:"json",
                    success:function(data){
                        json=data;
                    }
                });
                return json;
            }


    //通过点击事件，获取指定id数据集  根据 _id  去查找
    function datas(reportId){
        var json="";
        $.ajax({
            url:reportUrl + '/job/find',
            data:{"id":reportId},
            async: false,
            dataType:"json",
            success:function(data){
                json=data;
            }
        });
        return json;
    }
    function datawithjobId(reportId){
        var json="";
        $.ajax({
            url:reportUrl + '/job/findjob',
            data:{"jobId":reportId},
            async: false,
            dataType:"json",
            success:function(data){
                json=data;
                console.info(json)
            }
        });
        return json;
    }


    //通过点击事件，获取指定id数据集
    function dataUpdate(jobId,ids){
        var json="";
        $.ajax({
            url:reportUrl + '/job/update',
            data:{
                "jobId":jobId,
				"identity":ids
			},
            async: false,
            dataType:"json",
            success:function(data){
                json=data;
            }
        });
        return json;
    }

    //通过点击事件，获取全部数据集
    function datasall(){
        var json="";
        $.ajax({
            url:reportUrl + '/job/findall',
            //data:{"id":reportId},
            async: false,
            dataType:"json",
            success:function(data){
                json=data;
            }
        });
        return json;
    }


    //通过点击事件，删除 某个 数据
    function deleteById(fieldID){
        var json="";
        $.ajax({
            url:reportUrl + '/job/delete',
            data:{"id":fieldID},
            async: false,
            dataType:"json",
            success:function(data){
                json=data;
            }
        });
        return json;
    }
    
    
    

    function delRow(a) {
        console.info(a)
        //获取table对象
        var ta = document.getElementById("ta");
        //获取删除行的对象

        var tr = a.parentNode.parentNode;
        console.info("try  delete")
        //删除行
        ta.deleteRow(tr.rowIndex)
    }


    function displayVar(fieldID,table) {
        alert('>>>>>点击删除该内容');
        console.info("table")
        deleteById(fieldID)
		delRow(table)
    }
	
    function startUp(fieldID,table) {
        alert('>>>>>启动');
        console.info("table")
       
    
        var json="";
        $.ajax({
            url:reportUrl + '/job/start',
            data:{"id":fieldID},
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
               alert(">>>>>点击查询表格")

               var reportId = $("#ruleName").val();
               //获取input里面的值
               var aaa = $('form').serialize();
               //序列化中文时之所以乱码是因为.serialize()调用了encodeURLComponent方法将数据编码了
               //原因：.serialize()自动调用了encodeURIComponent方法将数据编码了
               //解决方法：调用decodeURIComponent(XXX,true);将数据解码
               var whereFields = decodeURIComponent(aaa,true); //关键点

			   //调用 后台 代码  根据传入的id /jobid  来 处理
			   // var json=datas(reportId);
			   var json=datawithjobId(reportId);

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
                                   //d=nicePage1.returnList(json ).concat();
                               layui.each(d,function(e,g){
                                   var f=nicePage1.returnTable(g);c.push(f)
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

	   //点击 全表查询事件
       $("#clickbuttonfindall").click(function (){
           alert(">>>>>点击查询全表")
           var reportId = $("#ruleName").val();
           //获取input里面的值
           var aaa = $('form').serialize();
           //序列化中文时之所以乱码是因为.serialize()调用了encodeURLComponent方法将数据编码了
           //原因：.serialize()自动调用了encodeURIComponent方法将数据编码了
           //解决方法：调用decodeURIComponent(XXX,true);将数据解码
           var whereFields = decodeURIComponent(aaa,true); //关键点

           //调用 后台 代码
           var json=datasall();

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
                               //d=nicePage1.returnList(json).concat().splice(b.curr*b.limit-b.limit,b.limit);
                               d=nicePage1.returnList(json ).concat();
                           layui.each(d,function(e,g){
                               var f=nicePage1.returnTable(g);c.push(f)
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

       //点击  删除 操作 需要传入 id
       $("#deletebutton").click(function (){
           alert(">>>>>点击查询加载表格")
           var fieldId = $("#id").val();
           console.info(fieldId)
           //获取input里面的值
           //var aaa = $('form').serialize();
           //序列化中文时之所以乱码是因为.serialize()调用了encodeURLComponent方法将数据编码了
           //原因：.serialize()自动调用了encodeURIComponent方法将数据编码了
           //解决方法：调用decodeURIComponent(XXX,true);将数据解码
           //var whereFields = decodeURIComponent(aaa,true); //关键点

           //调用 后台 代码
           var jsontmp=deleteById(fieldId);
           console.info(jsontmp +"delete")

           var json=datasall();
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
                               //d=nicePage1.returnList(json).concat().splice(b.curr*b.limit-b.limit,b.limit);
                               d=nicePage1.returnList(json ).concat();
                           layui.each(d,function(e,g){
                               var f=nicePage1.returnTable(g);c.push(f)
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
<script type="text/html" id="toolbtn">
	<a  class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
</script>

</html>