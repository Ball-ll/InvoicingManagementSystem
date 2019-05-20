$.fn.extend({
	loadCombox:function(){
		var dataJson = "{";
		var dataArr = [];
		$("#addwuliaoform").find("input").each(function(index, _this) {
			var inputN = $(_this).attr("name");
			if (inputN != "" && inputN != null) {
				dataArr.push(inputN + ":'" + $(_this).val() + "'");
				dataJson += ",";
			}
		});
		dataJson = "{" + dataArr.join(",") + "}";
		var jsonForms = eval('(' + dataJson + ')');
		$.post("${jpath}/addwuliao", jsonForms, function(data) {
			console.log(data);
			var json = $.parseJSON(data);
			alert(json.resMsg);
			//清空表单
			$("#addwuliaoform")[0].reset();
			//重新刷新页面（当前操作的子页面）
			window.location.replace("${jpath}/findwuliao");
		});
	}
});