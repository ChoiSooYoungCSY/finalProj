<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script type="text/javascript">
var socket = null;
var onlineUsers = null;
$(document).ready(function(){
	connectWS();
});
function connectWS(){
	var ws = new WebSocket("ws://localhost:9090/sms");
	socket = ws;
	ws.onopen = function(){
		console.log("websocket open");
	};
	ws.onmessage = function(event){
		console.log("받은 메세지 : " ,event.data+'\n');
		let msg = event.data.split("=");
		console.log(msg);
		let cmd = msg[0];
		console.log("cmd",cmd);
		if(cmd == "online"){
			let temp = msg[1];
			temp = temp.replace("[","");
			console.log(temp,"temp1");
			temp = temp.replace("]","");
			console.log(temp,"temp2");
			onlineUsers = temp.split(",");
			console.log("onlineUsers",onlineUsers);
		}
		else if(cmd=="chat"){
			console.log(event.data+'\n');
			let mess = msg[1];
			console.log("mess", mess);
			receiveMess(mess);
		}
		else if(cmd=="echo"){
			let mess = msg[1];
			console.log("mess",mess);
			receiveEcho(mess);
		}

	};
	ws.onclose = function (event) {console.log("websocket close")};
	ws.onerror = function (event) {console.log("websocket error")};
};
</script>