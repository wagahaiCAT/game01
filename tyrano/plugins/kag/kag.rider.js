tyrano.plugin.kag.rider={app:{},tyrano:null,rider_view:{},init:function(){},complete:function(a){window.opener&&window.opener.app&&1==window.opener.app.config.user_config.check_debug&&(TYRANO.kag.is_rider=!0,this.app=window.opener.app,this.app.completeRider(a))},cutTyranoTag:function(a,e){TYRANO.kag.ftag.startTag(a,e)},cutTyranoScript:function(a){for(var e=TYRANO.kag.parser.parseScenario(a).array_s,i=0;i<e.length;i++){var r=e[i];this.app.rider_view.pushConsoleGrid("tag",r),this.cutTyranoTag(r.name,r.pm)}},insertElement:function(a,e){var i,r="./data/"+a+"/"+e;if("fgimage"==a||"image"==a){var t=$("<div style='position:absolute;z-index:9999999;'><div class='area_pos' style='position:absolute;width:100px;opacity:0.5;background-color:black;color:white'></div><div class='button_delete' style='position:absolute;right:0px;border:solid 1px gray;background-color:white;width:20px;height:20px;cursor:pointer' >×</div><img style='border:solid 1px green;' src='"+r+"' /></div>");i=t,t.draggable({scroll:!1,stop:function(a,e){i.find(".area_pos").html("x:"+e.position.left+" y:"+e.position.top)}}),i.find(".button_delete").click(function(){i.remove()}),$(".tyrano_base").attr("ondragstart",""),$(".tyrano_base").append(i)}else if("bgimage"==a){TYRANO.kag.layer.getLayer("base","fore").css("background-image","url("+r+")")}},getScenario:function(a,e){var i="./data/scenario/"+a;$.loadText(i,function(a){var i=TYRANO.kag.parser.parseScenario(a);e&&e(i)})},getCharaInfo:function(){return TYRANO.kag.stat.charas},getVariables:function(){var a=TYRANO.kag.variable,e=TYRANO.kag.stat.f,i=TYRANO.kag.stat.mp;return a.f=e,a.mp=i,a},evalScript:function(a){TYRANO.kag.evalScript(a)},pushVariableGrid:function(){this.app.rider_view.updateVariable()},initSave:function(){localStorage.clear()},pushConsoleLog:function(a){this.app.rider_view.pushConsoleGrid("tag",a)}};