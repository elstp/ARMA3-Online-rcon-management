function C_say(){
	AMUI.dialog.alert({
  title: '温馨提示',
  content: '-1 代表发送给全体玩家,指定玩家名称代表私聊给该玩家',
  onConfirm: function() { console.log('那古道青坟烟 敢问今夕何年');
    }
});
}

function M_mission(){
	AMUI.dialog.alert({
  title: '温馨提示',
  content: '选择一个你知道的任务名称,使服务器加载该任务!',
  onConfirm: function() { console.log('兮何年万千佳人相伴 可笑今朝我形只影单');
    }
});
}

function K_kick(){
	AMUI.dialog.alert({
  title: '温馨提示',
  content: '从服务器踢掉一名玩家! 请选择该玩家的编号  例如:#5',
  onConfirm: function() { console.log('问罪森罗宫殿 怪我狂浪轻言');
    }
});
}

function welcome(){
	console.log('心所只念,无处不达。');
	console.log('剑指之处,无不臣服。');
	//默认样式
	 storageSave(saveSelectColor);
    $('body').attr('class', 'theme-black')
}

//start scripts
welcome();