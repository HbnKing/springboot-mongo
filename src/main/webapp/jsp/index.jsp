<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<link rel="stylesheet" href="./css/uikit.css">
<link rel="stylesheet" href="./css/uikit.almost-flat.css">
<link rel="stylesheet" href="./css/laydate.css">
<link rel="stylesheet" href="./css/components/notify.css">
<script src="./js/jquery.js"></script>
<script src="./js/uikit.js"></script>
<script src="./js/laydate.js"></script>
<script src="./js/components/notify.js"></script>
<style type="text/css">
     .mybreak{
     word-wrap: break-word;
     word-break:break-all;
     white-space:pre-wrap;
     }
     
		/* 强制不换行 */
        .nowrap{white-space:nowrap;}
        /* 允许单词内断句，首先会尝试挪到下一行，看看下一行的宽度够不够，
        不够的话就进行单词内的断句 */
        .breakword{word-wrap: break-word;}
        /* 断句时，不会把长单词挪到下一行，而是直接进行单词内的断句 */
        .breakAll{word-break:break-all;}            
        /* 超出部分显示省略号 */
        .ellipsis{
        text-overflow:ellipsis;
        overflow:hidden;
        }
</style>
<!-- 日期插件 -->

</head>
<body>
	<nav class="uk-navbar">
	<div class="uk-container ">
		<h1 class="uk-navbar-brand uk-hidden-small"
			style="font-size: 40px; color: white;">
			<b>Validation</b>
		</h1>
		<ul class="uk-navbar-nav uk-hidden-small">
			<li class="uk-active"><a href="index.jsp">报表规则信息</a></li>
		</ul>
	</div>
	</nav>
	<div class="main_content">
		<nav class="uk-breader-container">
		<div class="uk-container uk-container-center">
			<div class="uk-grid">
				<div class="uk-width-1-2">
					<ul class="uk-breadcrumb ">
						<li><a href="index.jsp">报表规则信息</a></li>
						<li class="uk-active"><span>规则配置</span></li>
					</ul>
				</div>
				<div class="uk-width-1-2 uk-text-right">
					<a id="addRuleconf" class="uk-button uk-button-primary" href="#"
						style="position: relative; top: 14px;">新增规则</a>
				</div>
			</div>
		</div>
		</nav>
		<div class="uk-container uk-container-center">
			<ul class="uk-tab" id="rule_base_ul"
				data-uk-switcher="{connect:'#rule_target_ul'}">
				<li class="uk-active"><a href="" id="sss">规则配置</a></li>
				<li><a href="" id="ss1">字段校验配置</a></li>
				<li><a href="" id="ss2">规则运算</a></li>
				<li><a href="" id="ss3">运行结果列表</a></li>
				<li><a href="" id="ss4">测试部分</a></li>
			</ul>
			<ul id="rule_target_ul" class="uk-switcher">
				<li id="ruleconf_1">
					<div class="uk-form uk-margin-top">
						<table class="uk-table uk-table-hover">
							<thead>
								<tr style="border: 1px solid #dddddd;">
									<th class="uk-text-center">排序</th>
									<th class="uk-text-center">规则名称</th>
									<th class="uk-text-center">表达式</th>
									<th class="uk-text-center">条件</th>
									<th class="uk-text-center">新增时间</th>
								</tr>
							</thead>
							<tbody id="zero_tbody">
							</tbody>
						</table>
					</div>
				</li>
				<li id="ruleconf_2">
					<div class="uk-grid uk-form uk-margin-top">
						<div class="uk-width-1-1">
							<div class="uk-float-left uk-margin-right">
								<label>选择报表：</label>
								<div class="uk-form-controls uk-margin-small-top">
									<select id="report_table" style="width: 300px;">
										<option value="0">请选择</option>
										<option value="TRANS_SUMMARY">交易汇总表 - TRANS_SUMMARY</option>
										<option value="TRANS_DETAILS">交易明细表 - TRANS_DETAILS</option>
									</select>
								</div>
							</div>
							<div class="uk-float-left uk-margin-large-left">
								<label>选择字段：</label>
								<div class="uk-form-controls uk-margin-small-top">
									<select id="report_field" style="width: 300px;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<div class="uk-float-left uk-margin-large-left">
								<label>选择规则：</label>
								<div class="uk-form-controls uk-margin-small-top">
									<select id="report_rule" style="width: 300px;"
										disabled="disabled">
										<option value="0">请选择</option>
										<option value="1">汇总规则</option>
										<option value="2">长度校验规则</option>
										<option value="3">日期校验规则</option>
										<option value="4">小数点校验规则</option>
									</select>
								</div>
							</div>
						</div>
						<div class="uk-margin-top uk-width-1-1" id="expression_msg">

						</div>
						<div class="uk-margin-top uk-width-1-1" id="expression_field">

						</div>
					</div>
					<div class="uk-margin-large-top">
						<button id="expression_save" class="uk-button uk-button-primary"
							type="button">保存</button>
					</div>
				</li>
				<li id="ruleconf_3">
					<form style="padding-top: 35px;">
						规则名称: <input id="ruleName" type="text" name="ruleName" value=""
							style="width: 150px; height: 25px;">
						&nbsp;&nbsp;&nbsp;&nbsp; 字段名称: <input id="expression" type="text"
							name="expression" value="" style="width: 106; height: 25px;">
						<br> <br>
						<div>
							<button id="clickbutton" class="uk-button uk-button-primary"
								style="margin: -48px; margin-left: 555px;" type="button">查询</button>
						</div>
						<!--这里设置全部查询没有实现  -->
						<div>
							<button id="" class="uk-button uk-button-primary"
								style="margin: -48px; margin-left: 655px;" type="button">运行全部</button>
						</div>
					</form>
					<div class="uk-form uk-margin-top">
						<table id="tableId" class="uk-table uk-table-hover">
							<thead>
								<tr style="border: 1px solid #dddddd;">
									<th class="uk-text-center">排序</th>
									<th class="uk-text-center">规则名称</th>
									<th class="uk-text-center">事实表达式</th>
									<th class="uk-text-center">事实过滤条件</th>
									<th class="uk-text-center">新增时间</th>
									<th class="uk-text-center">操作</th>
								</tr>
							</thead>
							<tbody id="three_tbody">
							</tbody>
						</table>
					</div>
				</li>
				<li id="ruleconf_4">
					<form style="padding-top: 35px;">
						规则名称: <input id="ruleName1" type="text" name="ruleName"
							style="width: 150px; height: 25px;">
						&nbsp;&nbsp;&nbsp;&nbsp; 表达式: <input id="expression1" type="text"
							name="expression" style="width: 106; height: 25px;"> <br>
						<br>
						<div>
							<button id="resultbutton" class="uk-button uk-button-primary"
								style="margin: -48px; margin-left: 555px;" type="button">查询</button>
						</div>
					</form>
					<div class="uk-form uk-margin-top">
						<table id="tableId1" class="uk-table">
							<thead>
								<tr style="border: 1px solid #dddddd;">
									<th class="uk-text-center">序号</th>
									<th class="uk-text-center">规则名称</th>
									<th class="uk-text-center">业务日期</th>
									<th class="uk-text-center">事实表达式</th>
									<th class="uk-text-center">事实过滤条件</th>
									<th class="uk-text-center">运行结果</th>
									<th class="uk-text-center">新增时间</th>
								</tr>
							</thead>
							<tbody id="third_tbody">
							</tbody>
						</table>
					</div>
				</li>
				<li id="ruleconf_5">
				<form class="uk-form"action="">
				<div class="uk-grid">
				    <div class="uk-width-medium-1-10">
				    <label>基金名称:</label>
				    <div class="uk-form-controls">
				     <select class="uk-form-width-large"></select>
				    </div>
				    </div>
				</div>
				</form>
				</li>
			</ul>
		</div>
	</div>
	<div class="footer">
		<p>Copyright &copy; Chinapnr.com</p>
	</div>


	<div id="ruleConfModal" class="uk-modal">
		<div class="uk-modal-dialog">
			<a class="uk-close uk-modal-close"></a>
			<h4>新增规则</h4>
			<hr />
			<div class="uk-form">
				<div>
					<label>规则名称：</label> <input
						class="uk-margin-left uk-form-width-medium" id="ruleConf"
						type="text" placeholder="请输入规则名称">
					<!-- <select id="ruleConf"
						class="uk-margin-left uk-form-width-medium">
						<option value="0">请选择</option>
						<option value="1">汇总规则</option>
						<option value="2">长度校验规则</option>
						<option value="3">日期校验规则</option>
						<option value="4">小数点校验规则</option>
					</select> -->
				</div>
				<div class="uk-margin-top">
					<label>过滤条件：</label> <input 
						class="uk-margin-left uk-form-width-medium" id="ruleWhere"
						type="text" placeholder="请输入过滤条件">
					<!--         				<select id="ruleWhere" class="uk-margin-left uk-form-width-medium"> -->
					<!--         					<option value="0" title="可以不选择" selected="selected">请选择</option> -->
					<!--         					<option value="1" title="根据固定条件查询符合规则的信息(例如:账号 日期 固定信息)">指定条件</option> -->
					<!--         					<option value="2" title="过滤掉冗余的信息">过滤条件</option> -->
					<!--         				</select> -->
				</div>
				<div class="uk-margin-top">
					<label>规则表达式：</label><br /> <input
						class="uk-margin-left uk-form-width-medium" id="ruleExpression"
						type="text" placeholder="请输入规则表达式">
					<!-- <input id="ruleExpression" type="text"
						class="uk-form-width-large uk-margin-top" readonly="readonly"
						placeholder="规则表达式"> -->
				</div>
				<div class="uk-text-right uk-margin-top">
					<button id="closeEvent"
						class="uk-button uk-button-danger uk-modal-close" type="button">取消</button>
					<button id="saveEvent" class="uk-button uk-button-primary"
						type="button">保存</button>
				</div>
			</div>
		</div>
	</div>

	<div id="operaModal" class="uk-modal">
		<div class="uk-modal-dialog">
			<a class="uk-close uk-modal-close"></a>
			<h4>运算信息</h4>
			<hr />
			<div class="uk-overflow-container">
				<table id="sum_table" class="uk-table">

				</table>
			</div>
			<div class="uk-overflow-container uk-margin-top">
				<table id="other_table" class="uk-table">

				</table>
			</div>
			<div id="msg_div" class="uk-overflow-container uk-margin-top"
				style="display: none;">
				<table id="message_table" class="uk-table">

				</table>
			</div>
		</div>
	</div>
	<script>
	var reportUrl = "http://localhost:8080/com.report";
	
	<!-- 获取固定格式时间 -->
	Date.prototype.toDateLocaleString = function (){
		return this.getFullYear() +"-"+("0"+ (this.getMonth() + 1)).slice(-2)+"-"+("0"+this.getDate()).slice(-2);
	};
	<!-- 获取固定格式时间 -->
	Date.prototype.toTimeLocaleString = function (){
		return this.getFullYear() +"-"+("0"+ (this.getMonth() + 1)).slice(-2)+"-"+("0"+this.getDate()).slice(-2)+" "
			   +("0"+this.getHours()).slice(-2)+":"+("0"+this.getMinutes()).slice(-2)+":"+("0"+this.getSeconds()).slice(-2);
	};

	function insertRuleResult(fieldId, fact, runResult, factWhere){
		$.ajax({
			url: reportUrl + '/ruleRunResult/insert',
			method:'POST',
			data:{
				fieldCheckConfId:fieldId,
				businessDate:new Date(),
				factExpression:fact,
				runResult:runResult,
				factRuleWhere:factWhere
			},
			dataType:'json',
			success: function (data){
			},
			error: function (data){
			}
		});
	}

	var dfd = $.Deferred() //实例化一个延迟对象 
	,confirmed //记录按下确定或取消 
	,$confirm = $content.find('button.confirm') //确认按钮
	,$cancel = $content.find('button.cancel'); //取消按钮
	
	
	function ruleOpera(obj){
		$("#sum_table").children().remove();
		$("#other_table").children().remove();
		$("#message_table").children().remove();
		$("#msg_div").css("display","none");
		// 事实表达式
		var factExpression = obj.factExpression;
		var Sql = "";
		console.log(obj);
		var fact = "";
		if(obj.ruleName == "长度校验规则"){
			var beginIndex = factExpression.lastIndexOf("(")+1;
			var endIndex = factExpression.lastIndexOf(".");
			var tableName = factExpression.substr(beginIndex,(endIndex-beginIndex));
			Sql = "SELECT * FROM " +tableName+ " WHERE " + factExpression.toUpperCase();
			fact = factExpression.toUpperCase();
		}else if(obj.ruleName == "小数点校验规则"){
			var beginIndex = factExpression.lastIndexOf("((")+2;
			var endIndex = factExpression.indexOf(")");
			var columnName = factExpression.substr(beginIndex,(endIndex-beginIndex));
			var tableName = columnName.substr(0, columnName.indexOf("."));
			Sql = "SELECT * FROM " +tableName+ " WHERE " + factExpression.substr(0, factExpression.length-1).toUpperCase() + " OR LOCATE('.',("+columnName+")) = 0)";
			fact = factExpression.substr(0, factExpression.length-1).toUpperCase() + " OR LOCATE('.',("+columnName+")) = 0)";
		}else if(obj.ruleName == "汇总规则"){
			var beginIndex = factExpression.lastIndexOf("(")+1;
			var endIndex = factExpression.lastIndexOf(".");
			var tableName = factExpression.substr(beginIndex,(endIndex-beginIndex));
			Sql = "SELECT " +factExpression.toUpperCase()+ " AS SUM FROM " +tableName;
			fact = factExpression.toUpperCase();
		}else if(obj.ruleName == "日期校验规则"){
			var beginIndex = factExpression.lastIndexOf("(")+1;
			var endIndex = factExpression.lastIndexOf(".");
			var tableName = factExpression.substr(beginIndex,(endIndex-beginIndex));
			Sql = "SELECT * FROM " +tableName+" WHERE " + factExpression.substr(0, factExpression.length-1).toUpperCase() + " OR SUBSTRING(BUSINESS_DATE, 1, 4) > 2999 OR SUBSTRING(BUSINESS_DATE, 5, 2) > 12)";
			fact = factExpression.substr(0, factExpression.length-1).toUpperCase() + " OR SUBSTRING(BUSINESS_DATE, 1, 4) > 2999 OR SUBSTRING(BUSINESS_DATE, 5, 2) > 12)";
		}
		console.log(Sql);
		$.ajax({
			url: reportUrl + '/fieldconf/select/sql',
			method:'POST',
			data:{
				sql: Sql,
			},
			dataType:'json',
			success: function (data){
				var Str = "";
				console.log(data.rspBody);
				if(data.rspBody == "" || data.rspBody == "查询规则配置信息失败"){
					 Str = "根据表达式，筛选出0条记录";
				}else if(obj.ruleName == "汇总规则"){
					Str = "SUCCESS";
				}else{
					Str = "根据表达式，筛选出"+data.rspBody.length+"条记录";
				}
				
				insertRuleResult(obj.ruleConfId, fact, Str, obj.factRuleWhere);
				operationFunc(data.rspBody, fact, obj.ruleName, Str);
			},
			error: function (data){
				UIkit.notify({
					message : '表达式运算失败',
					status  : 'error',
					timeout : 3000,
					pos     : 'top-center'
				});
			}
		});
	}
	function operationFunc (row, fact, ruleName, Str){
		$("#sum_table").children().remove();
		$("#other_table").children().remove();
		$("#message_table").children().remove();
		$("#msg_div").css("display","none");
		if(ruleName == "汇总规则"){
			if(row == "" || row.length <= 0){
				alert("报表没有信息");
				return;
			}
			var _sumHtml = "";
			_sumHtml += "<tbody>";
			_sumHtml += "    <tr>";
			_sumHtml += "        <td class='uk-text-center'>汇总合计</td>";
			_sumHtml += "        <td class='uk-text-center uk-text-primary'>"+row[0].SUM+"</td>";
			_sumHtml += "    </tr>";
			_sumHtml += "    <tr>";
			_sumHtml += "        <td class='uk-text-center'>运算时间</td>";
			_sumHtml += "        <td class='uk-text-center'>"+new Date(new Date()).toTimeLocaleString()+"</td>";
			_sumHtml += "    </tr>";
			_sumHtml += "</tbody>";
			$("#sum_table").append(_sumHtml);
		}else{
			if(row == "" || row.length <= 0){
				alert("未筛选出不符合信息");
				return;
			}
			if(row == "查询规则配置信息失败"){
				alert("未筛选出不符合信息");
				return;
			}
			//创建一个数组，然后对将获取到的一行json的数据加入到这个数组当中。
			var table_title = new Array();
			
			for(m in row[0]){
				table_title.push(m);
			}
			
			var _otherHtml = "";
			_otherHtml += "<tbody>";
			_otherHtml += "    <tr>";
			_otherHtml += "        <td class='uk-text-center'>规则名称</td>";
			_otherHtml += "        <td class='uk-text-center uk-text-primary'>"+ruleName+"</td>";
			_otherHtml += "    </tr>";
			_otherHtml += "    <tr>";
			_otherHtml += "        <td class='uk-text-center'>运行结果</td>";
			_otherHtml += "        <td class='uk-text-center uk-text-primary'>"+Str+"</td>";
			_otherHtml += "    </tr>";
			_otherHtml += "    <tr>";
			_otherHtml += "        <td class='uk-text-center'>运算时间</td>";
			_otherHtml += "        <td class='uk-text-center'>"+new Date(new Date()).toTimeLocaleString()+"</td>";
			_otherHtml += "    </tr>";
			_otherHtml += "    <tr>";
			_otherHtml += "        <td class='uk-text-center'>操作</td>";
			_otherHtml += "        <td class='uk-text-center'><button id='msgBtn' type='button' class='uk-button uk-button-primary'>查看详情</button></td>";
			_otherHtml += "    </tr>";
			_otherHtml += "</tbody>";

			$("#other_table").append(_otherHtml);

			$("#msgBtn").on('click', function (){
				if($("#msg_div").css("display") == "none"){
					$("#msg_div").css("display","block");
				}else{
					$("#msg_div").css("display","none");
				}
			});

			var _msgHtml = "";
			_msgHtml += "<thead style='border:1px solid #dddddd;'>";
			_msgHtml += "    <tr>";
			// 制作表头的信息。通过遍历创建的数组进行表头的添加。
			for (var i = 0; i < table_title.length; i++) {
				_msgHtml += "    <th class='uk-text-center'>"+table_title[i]+"</th>";
			}
			_msgHtml += "    </tr>";
			_msgHtml += "</thead>";
			_msgHtml += "<tbody>";
			// 将获取到的所有的值按照行进行输出。
			for (var i = 0; i < row.length; i++) {
				var obj = row[i];
			_msgHtml += "    <tr>";
				for (m in row[i]) {
					_msgHtml += "   <td class='uk-text-center'>"+row[i][m]+"</td>";
				}
			_msgHtml += "    </tr>";
			}
			_msgHtml += "</tbody>";
			
			$("#message_table").append(_msgHtml);
		}
//对uikit的model进行操作。如果这个model是静态的进行隐藏，如果是动态的进行复选框的添加。
		var sum_modal = UIkit.modal("#operaModal");
		if(sum_modal.isActive()){
			sum_modal.hide();
		}else{
			sum_modal.show();
		}
	}

	$(document).ready(function () {
		var experssion_list = ["sum","date","length","decimal"];
		
		var minHeight = $(window).outerHeight();
		minHeight = minHeight - 190;
		$(".main_content").css({"min-height":minHeight + 'px'});
		
		$("#report_table").change(function (){
			<!-- 清除子节点 -->
			$("#report_field").children("option:not(:eq(0))").remove();
			$("#report_field").change();
			
			var value = this.value;
			var _html;
			var _html;
			if(value == "TRANS_SUMMARY"){
				_html += "<option value='INTERNAL_ID'>内部标志号 - INTERNAL_ID</option>";
				_html += "<option value='BUSINESS_DATE'>业务日期 - BUSINESS_DATE</option>";
				_html += "<option value='ACCOUNT_NO'>账号 - ACCOUNT_NO</option>";
				_html += "<option value='SUM_AMT'>交易总金额 - SUM_AMT</option>";
				_html += "<option value='SUM_COUNT'>交易总笔数 - SUM_COUNT</option>";
				
				$("#report_field").append(_html);
			}

			if(value == "TRANS_DETAILS"){
				_html += "<option value='INTERNAL_ID'>内部标志号 - INTERNAL_ID</option>";
				_html += "<option value='BUSINESS_DATE'>业务日期 - BUSINESS_DATE</option>";
				_html += "<option value='ACCOUNT_NO'>账号 - ACCOUNT_NO</option>";
				_html += "<option value='TRANS_AMT'>交易金额 - TRANS_AMT</option>";
				
				$("#report_field").append(_html);
			}
			
		});
		$("#report_field").change(function (){
			$("#report_rule option:first").prop("selected", 'selected');  
			$("#report_rule").change();
			
			if(this.value == 0){
				$("#report_rule option:first").prop("selected", 'selected');  
				$("#report_rule").prop("disabled","disabled");
				$("#report_rule").change();
			}else{
				$("#report_rule").prop("disabled",false);
			}
		});

		
		// 选择规则表达式 时 所触发的事件
		$("#report_rule").change(function (){
			// 1, 获取 用户所选择的的规则
			var ruleVal = $("#report_rule option:selected").val();
			// 2, 获取 用户所选择的字段
			var fieldVal = $("#report_field option:selected").val();
			// 3, 获取 用户所选择的条件
			var expressionVal = $("#report_expression option:selected").text();
			// 4, 获取用户选择的表名
			var tableVal = $("#report_table option:selected").val();

			var expression = "";
			var expression_flag = false;
			var expression_holder = "";
			switch(ruleVal){
				case '1': 
					expression = "(SUM("+tableVal+"."+fieldVal+"))"; 
					break;
				case '2': 
					expression = "(LENGTH("+tableVal+"."+fieldVal+")!={param})"; 
					expression_holder = "请输入长度";
					expression_flag = true;
					break;
				case '3': 
					expression = "(LENGTH("+tableVal+"."+fieldVal+")!={param})";
					expression_holder = "请选择日期";
					expression_flag = true;
					break;
				case '4': 
					expression = "(LENGTH(SUBSTRING(("+tableVal+"."+fieldVal+"),(LOCATE('.',("+tableVal+"."+fieldVal+"))+1)))!={param})"; 
					expression_holder = "请输入长度";
					expression_flag = true;
					break;
				default:break;
			}
			console.log(expression);
			if(this.value == 0){
				$("#expression_msg").children().remove();
				$("#expression_field").children().remove();
				return;
			}else{
				$("#expression_msg").children().remove();
				$("#expression_field").children().remove();
				var msgHtml = "";
				msgHtml += '<div class="uk-float-left uk-margin-right">';
				msgHtml += '    <label>事实表达式：</label>';
				msgHtml += '    <div class="uk-form-controls uk-margin-small-top">';
				msgHtml += "        <input id='factExpression' type='text' disabled='disabled' style='width:800px;'>";
				msgHtml += '    </div>';
				msgHtml += '</div>';
				if(expression_flag){
					if(ruleVal == '3'){
						msgHtml += '<div class="uk-float-left uk-margin-right">';
						msgHtml += '    <label>校验参数：</label><br/>';
						msgHtml += '    <div class="uk-form-controls uk-margin-small-top">';
						msgHtml += "        <input type='text' id='date_item' style='width:240px;' placeholder="+expression_holder+">";
						msgHtml += '    </div>';
						msgHtml += '</div>';
					}else if(ruleVal == '2' || ruleVal == '4'){
						msgHtml += '<div class="uk-float-left uk-margin-right">';
						msgHtml += '    <label>校验参数：</label>';
						msgHtml += '    <div class="uk-form-controls uk-margin-small-top">';
						msgHtml += "        <input type='text' id='other_item' style='width:200px;' placeholder="+expression_holder+">";
						msgHtml += '    </div>';
						msgHtml += '</div>';
					}
				}
				var msgHtml2 = "";
				msgHtml2 += '<div class="uk-margin-right">';
				msgHtml2 += '    <label>过滤条件：</label>';
				msgHtml2 += '    <div class="uk-form-controls uk-margin-small-top">';
				msgHtml2 += "        <input id='factWhere' type='text' style='width:450px;' placeholder='请输入过滤条件,可为空'>";
				msgHtml2 += '    </div>';
				msgHtml2 += '</div>';

				$("#expression_msg").append(msgHtml);
				$("#expression_field").append(msgHtml2);
				$("#factExpression").val(expression);
			}
		});
		
		
		$.ajax({
			url: reportUrl + '/ruleconf/select',
			method:'POST',
			dataType:'json',
			success: function (data){
				if(data.rspType == "SUCCESS"){
					var rows = data.rspBody;
					fillTbody(rows);
				}
			},
			error:function(data){
				console.log(data);
			}
		});

		function fillTbody(rows){
			var $_tbody = $("#zero_tbody");
			if(rows != "" && rows.length > 0){
				for(var i=0; i<rows.length; ++i){
					var _Html = "";
					var _date = new Date(rows[i].addTime);
					_Html += "<tr>";
					_Html += "    <td class='uk-text-center'>"+(i+1)+"</td>";
					_Html += "    <td>"+rows[i].ruleName+"</td>";
					_Html += "    <td>"+rows[i].expression+"</td>";
					_Html += "    <td>"+rows[i].ruleWhere+"</td>";
					_Html += "    <td>"+_date.toTimeLocaleString()+"</td>";
					_Html += "</tr>";
					$_tbody.append(_Html);
				}
			}
		}
		
		var time=new Date();
		$("#date").val(time.toJSON().substring(0,10));
		//--------根据字段模糊查询表中的所有数据。做一个模糊查询---------------
    $("#clickbutton").click(function (){
			
			$.ajax({
				url: reportUrl + '/fieldconf/select',
				method:'POST',
				dataType:'json',
				data:{
					ruleName:$("#ruleName").val(),
					expression:$("#expression").val()
				},
				success: function (data){
					if(data.rspType == "SUCCESS"){
						var rows = data.rspBody;
						fillFiledTable(rows);
					}
				},
				error:function(data){
					console.log(data);
				}
			});
		});

		
		function fillFiledTable(rows){
			var $_tbody = $("#three_tbody")
			$("#tableId tr:gt(0)").remove();
			if(rows != "" && rows.length > 0){
				for(var i=0; i<rows.length; ++i){
					var _Html = "";
					var _date = new Date(rows[i].addTime);
					_Html += "<tr>";
					_Html += "    <td class='uk-text-center'>"+(i+1)+"</td>";
					_Html += "    <td>"+rows[i].ruleName+"</td>";
					_Html += "    <td>"+rows[i].factExpression+"</td>";
					_Html += "    <td>"+rows[i].factRuleWhere+"</td>";
					_Html += "    <td>"+_date.toTimeLocaleString()+"</td>";
					var obj = JSON.stringify(rows[i]);
					_Html += "    <td class='uk-text-center' style='width:60px;'><button onclick = ruleOpera("+obj+"); class='uk-button uk-button-primary' type='button'>运算</button></td>";
					_Html += "</tr>";
					$_tbody.append(_Html);
				}
			}
		}
		//-------------最终的运算结果表展示。----------------
		 $("#resultbutton").click(function (){
			 $.ajax({
					url: reportUrl + '/ruleRunResult/select',
					method:'POST',
					dataType:'json',
					data:{
						ruleName:$("#ruleName1").val() == null ? "":$("#ruleName1").val(),
						expression:$("#expression1").val() == null ? "":$("#expression1").val()
					},
					success: function (data){
						if(data.rspType == "SUCCESS"){
							var rows = data.rspBody;
						
						   thirdTbody(rows);
						}
					},
					error:function(data){
						console.log(data);
					}
				});
		});
		
		function thirdTbody(rows){
			var $_tbody = $("#third_tbody");
			$("#tableId1 tr:gt(0)").remove();
			if(rows != "" && rows.length > 0){
				for(var i=0; i<rows.length; ++i){
					var _Html = "";
					var _date = new Date(rows[i].addTime);
					_Html += "<tr>";
					_Html += "    <td class='uk-text-center' align='center'>"+(i+1)+"</td>";
			        _Html += "    <td >"+rows[i].fieldCheckConf.ruleName+"</td>"; 
					_Html += "    <td align='center'>"+new Date(rows[i].businessDate).toDateLocaleString()+"</td>";
					_Html += "    <td >"+rows[i].factExpression+"</td>";
					_Html += "    <td >"+rows[i].factRuleWhere+"</td>";
					_Html += "    <td align='center'>"+rows[i].runResult+"</td>";
					_Html += "    <td align='center'>"+_date.toTimeLocaleString()+"</td>";
					_Html += "</tr>";
					$_tbody.append(_Html);
				}
			}
		}
		

		// ------------------modal  begin---------------------
		//绑定模态框，然后使用点击事件来对模态框进行操作。
		var modal = UIkit.modal("#ruleConfModal");
		$("#addRuleconf").click(function (){
			// 1: 初始化 modal 值
			// 。。。。
			if(modal.isActive()){
				modal.hide();
			}else{
				modal.show();
			}
		});

		<!-- 模态框保存事件,在一个模态框中进行规则的添加操作。-->
		$("#saveEvent").click(function (){
			var ruleName = $("#ruleConf").val();
			var expression = $("#ruleExpression").val();
			var ruleWhere = $("#ruleWhere").val();
			$.ajax({
				url: reportUrl + '/ruleconf/insert',
				method:'POST',
				data:{
					ruleName:ruleName,
					expression:expression,
					ruleWhere:ruleWhere,
				},
				dataType:'json',
				success: function (data){
					// 成功后重新加载页面
					document.location.reload();
				},
				error:function(data){
					console.log(data);
				}
			});  
		});
		// ------------------modal  end---------------------
		// ------------------ 选择规则 -----------------------
		$("input[name='ruleconf_box']").change(function (){
			if($(this).prop("checked") == true){
				$(this).parent("label").parent("div").next("div").css("display","block");
			}else{
				$(this).parent("label").parent("div").next("div").css("display","none");
			}
		});

		function selectExpression(id, rows){
			// 清空子节点
			$("#"+id).children("option:not(:eq(0))").remove();
			$("#report_expression").change();
			for (var i = 0; i < rows.length; i++) {
				var strId = rows[i].internalId;
				var _html = "<option value="+strId+">"+rows[i].expression+"</option>"
				$("#"+id).append(_html);
			}
		}
		function selectExpressionByOne(experssion_list){
			$.each(experssion_list,function(index,row){
				var rowId = row+"_expression"
				$("#"+rowId+" option:first").prop("selected", 'selected');  
			});
		}

		$("#expression_save").click(function (){
			if(!checkParam()){
				return;
			}
			var ruleVal = $("#report_rule option:selected").val();
			var factStr = $("#factExpression").val();
			var factExpression = "";
			if(ruleVal == '2'){
				var itemVal = $("#other_item").val();
				if(itemVal == ""){alert("请输入参数"); return;}
				var beginStr = factStr.substr(0,factStr.indexOf("{"));
				var endStr = factStr.substr(factStr.indexOf("}")+1, factStr.length);
				factExpression =beginStr+itemVal+endStr;
			}else if(ruleVal == '3'){
				var itemVal = $("#date_item").val();
				if(itemVal == ""){alert("请输入参数"); return;}
				var beginStr = factStr.substr(0,factStr.indexOf("{"));
				var endStr = factStr.substr(factStr.indexOf("}")+1, factStr.length);
				factExpression =beginStr+itemVal+endStr;
			}else if(ruleVal == '4'){
				var itemVal = $("#other_item").val();
				if(itemVal == ""){alert("请输入参数"); return;}
				var beginStr = factStr.substr(0,factStr.indexOf("{"));
				var endStr = factStr.substr(factStr.indexOf("}")+1, factStr.length);
				factExpression =beginStr+itemVal+endStr;
			}else if(ruleVal == '1'){
				factExpression = factStr;
			}
			var data = {
					ruleConfId: "9527",
					ruleName: $("#report_rule option:selected").text(),
					factExpression: factExpression,
					factRuleWhere: $("#factWhere").val() == 'undefined' ? "":$("#factWhere").val(),
				}
			console.log(data);
			$.ajax({
				url: reportUrl + '/fieldconf/insert',
				method:'POST',
				data:data,
				dataType:'json',
				success: function (data){
					reloadResult();
					// 成功后重新加载页面
					UIkit.notify({
						message : '保存成功',
						status  : 'info',
						timeout : 3000,
						pos     : 'top-center'
					});
					$("#report_table option:first").prop("selected","selected");
					$("#report_table").change();
				},
				error:function(data){
					console.log(data);
				}
			});  
		});
		
		function checkParam(){
			var exVal = $("#report_rule option:selected").val();
			if(exVal == '0'){
				UIkit.notify({
					message : '请选择规则',
					status  : 'info',
					timeout : 3000,
					pos     : 'top-center'
				});
				return false;
			}else{
				return true;
			}
		}

		function reloadResult(){
			$.ajax({
				url: reportUrl + '/fieldconf/select/all',
				method:'POST',
				dataType:'json',
				success: function (data){
					console.log(data);
					// 成功后重新加载页面
					if(data.rspType=="SUCCESS"){
						$("#three_tbody").children().remove();
						if(data.rspBody != "" && data.rspBody.length > 0){
							for (var i = 0; i < data.rspBody.length; i++) {
								var _html = "";
								_html += "<tr>";
								_html += "    <td class='uk-text-center'>"+(i+1)+"</td>";
								_html += "    <td>"+data.rspBody[i].ruleName+"</td>";
								_html += "    <td style='width:540px;'>"+data.rspBody[i].factExpression+"</td>";
								_html += "    <td style='width:200px;'>"+data.rspBody[i].factRuleWhere+"</td>";
								_html += "    <td class='uk-text-center' style='width:180px;'>"+new Date(data.rspBody[i].addTime).toTimeLocaleString()+"</td>";
								var obj = JSON.stringify(data.rspBody[i]);
								_html += "    <td class='uk-text-center' style='width:60px;'><button onclick = ruleOpera("+obj+"); class='uk-button uk-button-primary' type='button'>运算</button></td>";
								_html += "</tr>";
								$("#three_tbody").append(_html);
							}
						}
					}
				},
				error:function(data){
					console.log(data);
				}
			}); 
		}; 

		reloadResult();
		// ---------------- 选择规则end ----------------------
	});
	
	$(function(){
		$('#rule_base_ul').on('show.uk.switcher', function(event, area){
			var ss = area.context.innerHTML;
			console.log(area);
			console.log(area.context.innerHTML);
			//alert($(ss).attr("id"));
		
		});
	});
</script>
</body>
</html>