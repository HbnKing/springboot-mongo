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
	
	// ��Ʒ��Ϣ
	var otherInput = $.find("input[name='privateFundType'][value='4']");
	$(otherInput).click(function(){
		if($(otherInput).prop("checked")){
			$(otherInput).parent().next("div").css("display","none");
		}
	});
	$(otherInput).siblings("input").click(function(){
		$(otherInput).parent().next("div").css("display","block");
	});
	
	// ��Ʒ��ػ����������ϵ��
	var managerFund = $.find("button[name='addManagerFund']");
	$.each(managerFund,function(index,row){
		var $this = $(row).parent();
		var $div = $this.prev("div");
		
		$(row).click(function(){
			var managerHtml = "";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>��ϵ�����ƣ�</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='��ϵ������'>";
			managerHtml += "</div>";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>��ϵ��ְλ��</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='��ϵ��ְλ'>";
			managerHtml += "</div>";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>��ϵ�˵绰��</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='��ϵ�˵绰'>";
			managerHtml += "</div>";
			managerHtml += "<div class='uk-width-medium-1-4'>";
			managerHtml += "	<label>��ϵ�����䣺</label><br/>";
			managerHtml += "	<input class='uk-margin-small-top' type='text' placeholder='��ϵ������'>";
			managerHtml += "</div>";
			
			$div.append(managerHtml);
		});
	});
});