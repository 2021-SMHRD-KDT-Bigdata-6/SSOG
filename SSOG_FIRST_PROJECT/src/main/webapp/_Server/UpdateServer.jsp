<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> �ܼ�, update server�Դϴ�.</h1>


<script src= "..js/jquery=3.6.0.js"> </script>
<script>
	let now = new Date();
	let today = now.getData();
	while(true){
		setTimeout(() =>{
			$.ajax({
				url : "Python_crawling_control", //������ ��ġ
				success : ()=>{
					$("h1").after( "<h2>"+today+" �����߽��ϴ�.</h2>");
				}
				error : () => {""
					$("h1").after( "<h2>"+today+" �����߽��ϴ�.</h2>")
				}
			})	
		
		},1000*60*60*24)}
				
	}

</script>
</body>
</html>