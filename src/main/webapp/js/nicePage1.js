window.nicePage1={table:"div",bar:"bar",limit:"10",color:"#1E9FFF"
,layout:["count","prev","page","next","limit","skip"],
setCfg:function(b){
	nicePage1.table=b.table;
	nicePage1.bar=b.bar;
	nicePage1.limit=b.limit;
	nicePage1.color=b.color;
	nicePage1.layout=b.layout
}
,returnHtml:function(g,e){
	var h='<table class="layui-table" lay-size="sm"  id = "ta" ><colgroup>';
	for(var f in e){
		h+=" <col width="+e[f]+">"
	}h
	+=" </colgroup><thead><tr>";
	for(var f in g){
		h+="  <th>"+g[f]+"</th>"
	}
	h+=" </tr></thead> <tbody>";
	return h
}

,returnList:function(j){
	var h=new Array();
	for(var f in j){
		var i="";
		for(var g in j[f]){
			i+=j[f][g]+"_"
		}
		i=i.substring(0,i.length-1);
		h.push(i)
	}
	return h
}
    ,returnList2:function(j){
        var h=new Array();
        //f  是每一个元素
        for(var f in j){
            var i="";
            for(var g in j[f]){
                i+=j[f][g]+"_"
            }
            i=i.substring(0,i.length-1);
            h.push(i)
        }
        return h
    }


,returnTable:function(e){
	var h=e.split("_");
	var g="<tr>";

	var ids = ""
	for(var f in h){

		if(ids==""){
            ids = h[f];
            console.info("ids")
			continue ;
		}else{
            g+="<td >"+h[f]+"</td>" ;
		}

	}
	//g+="<td>" + "<input type=button id=buttondelete value=修改 name='id'  >修改</button><input type=button id=btn2 value=删除 />"+"</td>"
	/*g+="<td>" + "<button type=button id=deletebutton    name=id value="+ids+" onclick=  'displayVar(value ,this)' >删除</button>"+"</td>"
	g+="<td>" + "<button type=button id=deletebutton    name=id value="+ids+" onclick=  'startUp(value ,this)' >启动</button>"+"</td>"*/
	
	g+="<td>" + "<button type=button id=deletebutton    name=id value="+ids+" onclick=  'displayVar(value ,this)' >删除</button>"+"<button type=button id=deletebutton    name=id value="+ids+" onclick=  'startUp(value ,this)' >启动</button>"+"</td>"
	
	
	g+="</tr>";
	return g
}




};
