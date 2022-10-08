<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>   
 

<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/assets/images/favicon.png">
    <title>Severny admin Template - The Ultimate Multipurpose admin template</title>	
	<link rel="canonical" href="https://www.wrappixel.com/templates/severny-admin-template/" />
    <!-- This Page CSS -->
    <link rel="stylesheet" type="text/css"
        href="${path}/resources/assets/libs/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
    <link rel="stylesheet" type="text/css" href="${path}/assets/libs/ckeditor/samples/css/samples.css">
    <!-- Custom CSS -->
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
<span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
  
<table style="border: 0px solid rgb(0, 0, 0); width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
<tr>
<br>
<button type="button">결재요청</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button">임시저장</button> &nbsp;
<button type="button" onClick = "self.close();">결재요청</button> &nbsp;
<button type="button" onClick = "window.open('${path}/selectmemberLine.ap','결재선','width=800,height=400,location=no,status=no,scrollbars=yes');">결재선변경</button>
</tr>
<hr>
<!-- Header --> 
   <colgroup> 
    <col width="310"> 
    <col width="400"> 
   </colgroup> 
   
	<tbody>
		<tr>
			<td style="background: rgb(255, 255, 255); padding: 0px !important; border: 0px currentColor; border-image: none; height: 70px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: top;" colspan="2">
			회의록
			</td>
		</tr>
		<tr>
			<td style="background: white; padding: 0px !important; border: currentColor; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">
				
	<table style="border: 1px solid rgb(0, 0, 0); font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse; width: 318px;"><!-- User --> 
      <colgroup> 
       <col width="90"> 
       <col width="120"> 
      </colgroup> 
      
	<tbody>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
			 문서번호 
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="0" data-dsl="{{label:docNo}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
					<span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">문서번호</span>
						<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
							<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
							<span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
							<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
							<span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
						</span> 
						<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="0" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
						<a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> 
					</span> 
				</span><br>
			</td>
		</tr>
		<tr style="height: 32px;">
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
 			부&nbsp;&nbsp;&nbsp;서
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="1" data-dsl="{{label:draftDept}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
				<span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">기안부서</span>
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
					<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
					<span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
					<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
					<span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
				</span> 
				<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
				
		기&nbsp;안&nbsp;일
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="2" data-dsl="{{label:draftDate}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
				<span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">기안일</span>
				<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
					<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
					<span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
					<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
					<span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
				</span> 
				<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
					<a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> 
				</span> 
				</span><br>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
				
		기 안 자
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="3" data-dsl="{{label:draftUser}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
					<span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">기안자</span>
						<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
						<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
						<span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
						<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
						</span> 
					<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
					<a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> 
				</span><br>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
				
			시행일자
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="4" data-dsl="{{calendar}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
					<input class="ipt_editor ipt_editor_date" type="text">
					<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
						<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
						<span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
						<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
						<span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
					</span> 
					<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
					<a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> 
					</span>
				</span><br>
			</td>
		</tr>
		<tr>
		</tr>
	</tbody>
</table>

			</td>
			<td style="background: white; padding: 0px !important; border: currentColor; text-align: right; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">
			<table style = "float:right">
					<tr>
						<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; color: rgb(0, 0, 0); font-size: 10px; font-weight: normal; vertical-align: middle;  text-align: center; width: 60px; height:10px;">직책</td>
						<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; color: rgb(0, 0, 0); font-size: 10px; font-weight: normal; vertical-align: middle;  text-align: center; width: 60px; height:10px;">직책</td>
					</tr>
					<tr>
						<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; color: rgb(0, 0, 0); font-size: 10px; font-weight: normal; vertical-align: middle;  text-align: center; width: 60px; height:60px;">이름<br>(인감)</td>
						<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; color: rgb(0, 0, 0); font-size: 10px; font-weight: normal; vertical-align: middle;  text-align: center; width: 60px; height:60px;">이름<br>(인감)</td>
					</tr>
					<tr>
						<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; color: rgb(0, 0, 0); font-size: 10px; font-weight: normal; vertical-align: middle;  text-align: center; width: 60px; height:10px;">날짜</td>
						<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; color: rgb(0, 0, 0); font-size: 10px; font-weight: normal; vertical-align: middle;  text-align: center; width: 60px; height:10px;">날짜</td>
					</tr>
			</table>
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">
					<!-- 에디터 &nbsp; 버그. 개행과 공백을 최소화 시키자. -->
					<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
						<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
						<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
					</span>
					<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
						<a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> 
					</span>
				</span><!-- 에디터 &nbsp; 버그. 개행과 공백을 최소화 시키자. --><!-- 에디터 &nbsp; 버그. 개행과 공백을 최소화 시키자. --><br>
			</td>
		</tr>
	</tbody>
</table>
 
 
<table style="border: 2px solid; width: 800px; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; margin-top: 10px; border-collapse: collapse; height: 385px;"><colgroup> 
   <col width="140"> 
   <col width="660"> 
  </colgroup> 
  
	<tbody>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
				
		제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목
			</td>
			<td style="background: rgb(255, 255, 255); padding: 5px;border:1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="7" data-dsl="{{text:subject}}" data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype="">
					<input class="ipt_editor" type="text" size = "100">
					<span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
						<span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
						<span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
						<span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span>
						<span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> 
					</span> 
					<span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="7" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
					<a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> 
				</span><br>
			</td>
		</tr>
		<tr>
			<td style="background: rgb(221, 221, 221); padding: 5px;border:1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;" colspan="2">
				
상&nbsp;&nbsp;세&nbsp;&nbsp;내&nbsp;&nbsp;용
			</td>
		</tr>
		<tr>
			<td style="background: rgb(255, 255, 255); padding: 5px;border:1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;" colspan="2">
				<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="8" data-dsl="{{editor}}" data-wrapper="" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_editor" style="width: 100%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 11pt; line-height: 200px; margin-top: 0px; margin-bottom: 0px;">
				<textarea cols="80" id="testedit1" name="testedit1" rows="10" data-sample="2"
                                    data-sample-short>
                                			1. 회의주제:<br>
                                			2. 회의일시:<br>
                                			3. 회의참여자: <br>
                                			4. 회의장소: <br>
                                			5. 회의내용: <br>
                </textarea>
                
                <div class="custom-file">
                        <input type="file" class="custom-file-input" id="inputGroupFile01" size = "100">
                        <label class="custom-file-label" for="inputGroupFile01">파일첨부</label>
                    </div>
                
				</span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="8" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>

			</td>
		</tr>
	</tbody>
</table>
</span></span>
<p style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;"><br></p>
</body>
</html>
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${path}/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${path}/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <script src="${path}/resources/dist/js/app.min.js"></script>
    <script src="${path}/resources/dist/js/app.init-menusidebar.js"></script>
    <script src="${path}/resources/dist/js/app-style-switcher.js"></script>
    <script src="${path}/resources/dist/js/feather.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="${path}/resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="${path}/resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <!-- themejs -->
    <!--Menu sidebar -->
    <script src="${path}/resources/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${path}/resources/dist/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="${path}/resources/assets/libs/ckeditor/ckeditor.js"></script>
    <script src=" ${path}/resources/assets/libs/ckeditor/samples/js/sample.js"></script>
    
    <script>
        //default
        initSample();

        //inline editor
        // We need to turn off the automatic editor creation first.
        CKEDITOR.disableAutoInline = true;

        CKEDITOR.inline('editor2', {
            extraPlugins: 'sourcedialog',
            removePlugins: 'sourcearea'
        });

        var editor1 = CKEDITOR.replace('editor1', {
            extraAllowedContent: 'div',
            height: 460
        });
        editor1.on('instanceReady', function () {
            // Output self-closing tags the HTML4 way, like <br>.
            this.dataProcessor.writer.selfClosingEnd = '>';

            // Use line breaks for block elements, tables, and lists.
            var dtd = CKEDITOR.dtd;
            for (var e in CKEDITOR.tools.extend({}, dtd.$nonBodyContent, dtd.$block, dtd.$listItem, dtd.$tableContent)) {
                this.dataProcessor.writer.setRules(e, {
                    indent: true,
                    breakBeforeOpen: true,
                    breakAfterOpen: true,
                    breakBeforeClose: true,
                    breakAfterClose: true
                });
            }
            // Start in source mode.
            this.setMode('source');
        });
    </script>
    <script data-sample="1">
        CKEDITOR.replace('testedit', {
            height: 150
        });
    </script>
    <script data-sample="2">
        CKEDITOR.replace('testedit1', {
            height: 400
        });
    </script>
    <script data-sample="3">
        CKEDITOR.replace('testedit2', {
            height: 400
        });
    </script>
    <script data-sample="4">
        CKEDITOR.replace('tool-location', {
            toolbarLocation: 'bottom',
            // Remove some plugins that would conflict with the bottom
            // toolbar position.
            removePlugins: 'elementspath,resize'
        });
    </script>
</body>

</html>