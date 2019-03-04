$(function(){
	var minHeight = window.screen.availHeight;
	minHeight = minHeight - 160 + "px"; 
	$("#productContent").css("min-height",minHeight);
	// end 
	$("#first_btn").click(function(){
		$("#firstBlock").css("display","none");
		$("#secondBlock").css("display","block");
	});
	
	$("#second_btn").click(function(){
		$("#secondBlock").css("display","none");
		$("#threeBlock").css("display","block");
	});
	
	// 产品信息
	var otherInput = $.find("input[name='privateFundType'][value='4']");
	$(otherInput).click(function(){
		if($(otherInput).prop("checked")){
			$(otherInput).parent().next("div").css("display","none");
		}
	});
	$(otherInput).siblings("input").click(function(){
		$(otherInput).parent().next("div").css("display","block");
	});
	
	// 产品相关机构及相关联系人
	var managerFund = $.find("button[name='addManagerFund']");
	$.each(managerFund,function(index,row){
		var $this = $(row).parent();
		var $div = $this.prev("div");
		
		$(row).click(function(){
			var managerHtml = "";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>联系人名称：</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='联系人名称'>";
			managerHtml += "</div>";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>联系人职位：</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='联系人职位'>";
			managerHtml += "</div>";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>联系人电话：</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='联系人电话'>";
			managerHtml += "</div>";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>联系人邮箱：</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='联系人邮箱'>";
			managerHtml += "</div>";
			
			$div.append(managerHtml);
		});
	});
});