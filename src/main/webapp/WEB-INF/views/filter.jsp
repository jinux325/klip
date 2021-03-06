<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko-KR">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>



<link rel="stylesheet" type="text/css" href="css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/jquery-swipe-nav.css" media="all" />
	<script src="http://code.jquery.com/jquery-git2.js"></script>
	<script type="text/javascript" src="js/jquery-swipe-nav-plugin.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($){

			//Google Font
			WebFontConfig = {
				google: { families: [ 'Raleway::latin' ] }
			};
			(function() {
				var wf = document.createElement('script');
				wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
				wf.type = 'text/javascript';
				wf.async = 'true';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(wf, s);
			})();

			//Page Action
			$(document).on('click','#swipeNav li a',function(){
				var href= $(this).attr("href");
				switch(href){
					case '#license':
						$('#main').load('license.html');
						return false;
					break;
					case '#src':
						$('#main').load('src.html');
						return false;
					break;
				}
			});

			//jQueryPlug-in Slide-Nav
			$('#swipeNav').swipeNav();
		});
	</script>
	<style type="text/css">
	body{
		font-family: 'Raleway', sans-serif;
	}
	#container{
		position: relative;
		/* padding: 20px; */
	}
	#container h1{
		color: rgba(0, 140, 152, 1);
		font-size: 80px;
		text-align: center;
	}
	#container #main{
		display: block;
		width: 70%;
		margin: 70px auto 0;
	}
	</style>

<head>
    <title>KLIP ERP</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=0.8, user-scalable=yes, target-densitydpi=medium-dpi">
    <link rel="stylesheet" type="text/css" href="./css/import.css" />
    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="./js/common.js"></script>

    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/FormDecorator.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Telerik/FormDecorator.Telerik.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Ajax.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Telerik/Ajax.Telerik.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/AutoCompleteBox.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Windows7/AutoCompleteBox.Windows7.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Button.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Input.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Windows7/Input.Windows7.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Calendar.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Windows7/Calendar.Windows7.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/ComboBox.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/ToolTip.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Telerik/ToolTip.Telerik.css">
    <link class="Telerik_stylesheet" type="text/css" rel="stylesheet" href="https://d35islomi5rx1v.cloudfront.net/ajaxz/2014.2.724/Window.css">
    <script src="/Telerik.Web.UI.WebResource.axd?_TSM_HiddenField_=RadScriptManager1_TSM&amp;compress=1&amp;_TSM_CombinedScripts_=%3b%3bSystem.Web.Extensions%2c+Version%3d4.0.0.0%2c+Culture%3dneutral%2c+PublicKeyToken%3d31bf3856ad364e35%3ako-KR%3a1453655a-6b8d-49b1-94c2-f77a352f5241%3aea597d4b%3ab25378d2" type="text/javascript"></script>
    <script type="text/javascript">
        //<![CDATA[
        if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax 클라이언트 쪽 프레임워크를 로드하지 못했습니다.');
        //]]>
    </script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Core.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/FormDecorator/RadFormDecorator.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Popup/PopupScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/jQuery.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/jQueryPlugins.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Splitter/RadSplitterScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/TouchScrollExtender.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Ajax/Ajax.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Navigation/OverlayScript.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Navigation/NavigationScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/AutoCompleteBox/RadAutoCompleteBoxScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Button/RadButtonScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Input/TextBox/RadInputScript.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Calendar/RadPickersPopupDirectionEnumeration.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Calendar/RadDatePicker.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Input/DateInput/RadDateInputScript.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Calendar/RadCalendarCommonScript.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Calendar/RadCalendarScript.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Navigation/OData/OData.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/ComboBox/RadComboBoxScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/ComboBox/Views/ClassicView.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Grid/RadGridScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/AnimationFramework/AnimationFramework.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Animation/AnimationScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/ToolTip/RadToolTipScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Widgets/Draggable.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Common/Widgets/Resizable.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Window/RadWindowScripts.js" type="text/javascript"></script>
    <script src="https://d2i2wahzwrm1n5.cloudfront.net/ajaxz/2014.2.724/Window/RadWindowManager.js" type="text/javascript"></script>

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $(function() {
    	$("#Btn17").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(16)}'            
             });    
    	$("#Btn16").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(15)}'            
             });    
    	$("#Btn15").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(14)}'            
             });    
    	$("#Btn14").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(13)}'            
             });    
    	$("#Btn13").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(12)}'            
             });    
    	$("#Btn12").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(11)}'            
             });    
    	$("#Btn11").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(10)}'            
             });    
    	$("#Btn10").on("click", function(event) {       
    		     
               	self.location ="filter"
                  		//+"?searchType="
                  		 +'${filter.makeQuery(9)}'            
                  });    
    	$("#Btn9").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(8)}'            
             });    
    	$("#Btn8").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(7)}'            
             });    
    	$("#Btn7").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(6)}'            
             });    
    
    	$("#Btn6").on("click", function(event) {       
		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(5)}'            
             });    
    	 $("#Btn5").on("click", function(event) {       
 		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(4)}'            
             });      
    	 $("#Btn4").on("click", function(event) {       
 		     
         	self.location ="filter"
            		//+"?searchType="
            		 +'${filter.makeQuery(3)}'            
            });      
    	  $("#Btn3").on("click", function(event) {       
 		     
            	self.location ="filter"
               		//+"?searchType="
               		 +'${filter.makeQuery(2)}'            
               });      
    	  $("#Btn2").on("click", function(event) {       
    		     
          	self.location ="filter"
             		//+"?searchType="
             		 +'${filter.makeQuery(1)}'            
             });      
        $("#Btn1").on("click", function(event) {       
        	
        	
         /* 	var val = $("#Btn").text();
        	System.out.println(val);  */
        	
        	//var val = document.getElementById('Btn').innerHTML;
        	
        	self.location ="filter"
        		//+"?searchType="
        		 +'${filter.makeQuery(0)}'
        		 
        	if(val =="시공대기"){
        	   	self.location ="filter"
            		//+"?searchType="
            		 +'${filter.makeQuery(1)}' 
        	}
      /*   	
          	self.location ="filter"
        		//+"?searchType="
        		 +'${filter.makeQuery(0)}' 
     			   	 */
        	
     			   	 
     			   	 
        /* 	
        	if( val == "시공대기"){
        		self.location ="filter"
                	+"?searchType="
                			+"시공대기"
        	}else if(val =="장기미결" ){

        		self.location ="filter"
                	+"?searchType="
                			+"장기미결"

        	}
 */

            
            /*  "constructionMain"
            	+"?searchType="
            			+$("#Btn").val */
        	
          /*   var form = {
                    const_day: 10                    
            }
            $.ajax({
                url: "filter",
                type: "POST",
                data: form,
                dateTpye:'json; charset=UTF-8',
                success: function(data){
                	
                	var result = data;

                	alert(data);
                	
                	$.each(datas, function(idx, val) {
                		
                		
                		
                		alert(idx+'   :  '+val.number );
                		
                	
                		
                		/* 
                    		
                    		var result=' ';
                    		
                    		result  += idx+ '  :  ' +val.const_day;
                    		alert(result);
                    		 */
                    	
                		
     /*            	});
                	
                	alert("성공");
                	
                },
                error: function(){
                	alert("실패");
                }
            }); */
          
            
            
            
            //$('#mainTable').dataTable();
          /*   var $lmTable = $("#mainTable").dataTable( { bRetrieve : true } );
            $lmTable.fnDraw(); */
            
        });
              
    });
    
    
      $(function() {
        $("#datepicker").datepicker({
          changeMonth: true,
          changeYear: true,
          nextText: '다음 달',
          prevText: '이전 달',
          currentText: '오늘 날짜',
          closeText: '닫기',
          dateFormat: "yy-mm-dd",
          dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
          dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
          monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
          monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
        });
        $("#datepicker2").datepicker({
            changeMonth: true,
            changeYear: true,
            nextText: '다음 달',
            prevText: '이전 달',
            currentText: '오늘 날짜',
            closeText: '닫기',
            dateFormat: "yy-mm-dd",
            dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
            dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
            monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
          });
      });
    </script>

</head>
<body>


	<!-- Modal -->
	<%@ include file="./modal.jsp" %>
	<!-- //Modal -->   
	
	
    <!-- headerWrap -->
    <div id="headerWrap">
        <!-- header -->
        <div id="header">
            <div class="logoarea">
            
            
            <nav id="swipeNav">
			    <ul>			    
			        <li>			       
			        <!-- <a href="https://github.com/Restoration/jQuery-Plugin-SwipeNav" target="_blank">Download</a> -->
			        </li>
			        <li><a href="" target="_blank">Author</a></li>
			        <li><a href="">License</a></li>
			        <li><a href="source.html">SourceCode</a></li>
			        <li><a href="">SourceCode</a></li>
			        <li><a href="">SourceCode</a></li>
			    </ul>
			</nav>
	<div id="container">
		<img src="img/menu.png" alt="" width="40" height="40" id="menuBtn" />
		 
		<img src="https://pj.genieaccount.com/images/common/tab_btn_01_01.png" alt="로고">
		
        
                
                
		<div id="main"></div><!-- /#main -->
	</div><!-- /#container -->
	
	
	
               
            </div>
            <div id="gnb">
            </div>
        </div>
        <!-- //header -->
    </div>
    <!-- //headerWrap -->

    <!-- navWrap -->
    <div id="navWrap">
        <ul id="nav">
            <li id="account1" class="">
                <span  id="Btn1">전체공사
                <br>
                <span>
                	${count1}</span></span>
                <!-- <ul style="display: none;">
                    <li class="">
                        <span style="background-image: url(&quot;https://pj.genieaccount.com/images/common/tit_nav_ic_off.png&quot;); background-repeat: no-repeat; background-position: 95% 12px;">업체 정보</span>
                        <ul style="display: none;">
                            <li><a href="#">신규 업체 등록</a></li>
                        </ul>
                    </li>
                    <li class="">
                        <span style="background-image: url(&quot;https://pj.genieaccount.com/images/common/tit_nav_ic_off.png&quot;); background-repeat: no-repeat; background-position: 95% 12px;">공사 정보</span>
                        <ul style="display: none;">
                            <li><a href="#">신규 공사 등록</a></li>
                        </ul>
                    </li>
                </ul> -->
            </li>
            <li id="account2" class="">
            	
                <span  id="Btn2">시공대기
              			<%-- <a href="filter${filter.makeQuery(all) }"></a> --%>
                <br>
                <span>${count2 }</span>
                </span>
                
                    
            </li>
            <li id="account3" class="">
                <span id="Btn3">장기미결
                <br>
                <span>${count3 }</span>
                </span>
                    
            </li>
	        <li id="account4" class="">
	            <span id="Btn4">공사취소
	            <br>
                <span>${count4 }</span>
	            </span>
	                   
	        </li>
	        <li id="account5" class="">
	            <span  id="Btn5">철거대기 <br>
                <span>${count5 }</span>    </span>
	               
	        </li>
	        <li id="account6" class="">
	            <span  id="Btn6">굴착대기 <br>
                <span>${count6 }</span></span>
	                   
	        </li>
	        <li id="account7" class="">
	            <span  id="Btn7">시공중 <br>
                <span>${count7 }</span></span>
	                   
	        </li>
	        <li id="account8" class="">
	            <span  id="Btn8">설계변경    <br>
                <span>${count8 }</span> </span>
	               
	        </li>
	        <li id="account9" class="">
	            <span  id="Btn9">시공완료 <br>
                <span>${count9 }</span>    </span>
	               
	        </li>
	        <li id="account10" class="">
	            <span  id="Btn10">환입대기 <br>
                <span>${count10 }</span></span>
	                   
	        </li>
	        <li id="account11" class="">
	            <span  id="Btn11">자재대기   <br>
                <span>${count11 }</span></span>
	                 
	        </li>
	        <li id="account12" class="">
	            <span id="Btn12">사진대기  <br>
                <span>${count12 }</span></span>
	                   
	        </li>
	        <li id="account13" class="">
	            <span id="Btn13">정산완료  <br>
                <span>${count13 }</span></span>
	                   
	        </li>
	        <li id="account14" class="">
	            <span id="Btn14">예산부족  <br>
                <span>${count14 }</span></span>
	                   
	        </li>
	        <li id="account15" class="">
	            <span id="Btn15">준공완료  <br>
                <span>${count15 }</span></span>
	                   
	        </li>
	        <li id="account16" class="">
	            <span id="Btn16">계산서완료  <br>
                <span>${count16 }</span>
	            </span >
	                   
	        </li>
	        <li id="account17" class="">
	            <span id="Btn17">수금완료  <br>
                <span>${count17 }</span></span>
	                   
	        </li>
																			
        </ul>
       <!--  <ul id="navSide">
            <li class="side1"><a href="/Configuration/NoticeList.aspx">공지사항</a></li>
            <li class="side2"><a href="/Configuration/KeyPointList.aspx">중점사항</a></li>
        </ul> -->
    </div>
    <!-- //navWrap --> 

    <!-- container -->
    <div id="container" style="height: 3px;">
    	
        <!-- snbWrap -->
       <!--  <div id="snbWrap" style="height: 856px;">
            레프트 메뉴
            <ul id="snb">
                <li id="account2" class="">
                    <span>전체공사</span>
                    <ul style="display: none;">
                        <li class="">
                            <span style="background-image: url(&quot;https://pj.genieaccount.com/images/common/tit_nav_ic_off.png&quot;); background-repeat: no-repeat; background-position: 95% 12px;">업체 정보</span>
                            <ul style="display: none;">
                                <li><a href="#">신규 업체 등록</a></li>
                            </ul>
                        </li>
                        <li class="">
                            <span style="background-image: url(&quot;https://pj.genieaccount.com/images/common/tit_nav_ic_off.png&quot;); background-repeat: no-repeat; background-position: 95% 12px;">공사 정보</span>
                            <ul style="display: none;">
                                <li><a href="#">신규 공사 등록</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li id="account2" class="">
                    <span>시공대기</span>
                    
                </li>
                <li id="account2" class="">
                    <span>장기미결</span>
                    
                </li>
	              <li id="account2" class="">
	                    <span>공사취소</span>
	                   
	                </li>
                
            </ul>
            //레프트 메뉴
        </div> -->
        <!-- //snbWrap -->
        <!-- contents -->        
        <div class="contents_bdy">
            <div id="contents" style="height: 918px;">
                <div id="ctl00_RadSplitter1" class="telerik_rad_splitter" style="height: 400px; width: 1569px;">
                    <div style="">
                        <table id="RAD_SPLITTER_ctl00_RadSplitter1" class="RadSplitter RadSplitter_Telerik" style="width:97%;height:1px;border-left-width:1px;border-top-width:1px;">
                            <tbody>
                                <tr>
                                    <td id="ctl00_RadPane2" class="rspPane rspFirstItem rspLastItem" style="border-right-width:1px;border-bottom-width:1px;">
                                        <div id="RAD_SPLITTER_PANE_CONTENT_ctl00_RadPane2" style="width: 100%; height: 398px; overflow: auto;">
                                            <script type="text/javascript">
                                                function OpenPositionedWindow(oButton, url, windowName) {
                                                    var oWnd = window.radopen(url, windowName);
                                                }

                                                function openRadWindow(args) {
                                                    var oWnd = $find("ctl00_ContentPlaceHolder1_RadWindow3");
                                                    oWnd.setUrl("ProjectMrgForm.aspx?projectcode=" + args);
                                                    oWnd.show();
                                                    if (window.innerHeight < RadWindow3.innerHeight) {
                                                        oWnd.moveTo((window.innerWidth / 2) - (RadWindow3.innerWidth / 2), 0);
                                                    }
                                                }

                                                function getCustomerClose(sender, args) {
                                                    if (args.get_argument() != null) {
                                                        var result = args.get_argument();
                                                        var arry = new Array();
                                                        arry = result.split(",");
                                                        document.getElementById("ContentPlaceHolder1__customerno").value = arry[0];
                                                        document.getElementById("ContentPlaceHolder1__customername").value = arry[1];
                                                    }
                                                }

                                                function CalledFnForPO(args) {
                                                    var ajaxManager = $find("ctl00_ContentPlaceHolder1_RadAjaxManager2");
                                                    ajaxManager.ajaxRequest(args);
                                                }

                                                function CalledFn(args) {
                                                    if (args == "CUS") {
                                                        var oWnd = $find("ctl00_ContentPlaceHolder1_RadWindow12");
                                                        oWnd.setUrl("/AccountSystem/CustomerForm.aspx?job=CUS");
                                                        oWnd.show();
                                                        if (window.innerHeight < RadWindow12.innerHeight) {
                                                            oWnd.moveTo((window.innerWidth / 2) - (RadWindow12.innerWidth / 2), 0);
                                                        }
                                                    } else if (args == "DEP") {
                                                        var oWnd = $find("ctl00_ContentPlaceHolder1_RadWindow15");
                                                        oWnd.setUrl("/AccountSystem/DepartmentForm.aspx?job=DEP");
                                                        oWnd.show();
                                                        if (window.innerHeight < RadWindow15.innerHeight) {
                                                            oWnd.moveTo((window.innerWidth / 2) - (RadWindow15.innerWidth / 2), 0);
                                                        }
                                                    } else {
                                                        var ajaxManager = $find("ctl00_ContentPlaceHolder1_RadAjaxManager2");
                                                        ajaxManager.ajaxRequest("Rebind");
                                                    }
                                                }
                                            </script>
                                            <style>
                                                .rgSortAsc { display:none;}
                                                .rgSortDesc { display:none;}
                                                .RadGrid.brd_list2 table.rgMasterTable tfoot tr.rgFooter td{text-align: right; background:#fafafa;}
                                            </style>
                                            <div id="ContentPlaceHolder1_RadAjaxManager2SU" style="display: inline;">
                                                <span id="ctl00_ContentPlaceHolder1_RadAjaxManager2" style="display:none;"></span>
                                            </div>
                                            <div id="ContentPlaceHolder1_RadAjaxLoadingPanel1" class="RadAjax RadAjax_Telerik" style="display:none;">
                                                <div class="raDiv"></div>
                                                <div class="raColor raTransp"></div>
                                            </div>
                                            <!-- 본문 -->
                                       
                                            <div class="contents_bdy">
                                                <h2 class="tit_bdy1">공사 목록</h2>

                                                <!-- 상단검색 -->
                                                <div class="search_box">
                                                    <div class="search_brd src_ty4">
                                                        <table class="brd_write2">
                                                            <colgroup>
                                                                <col width="10%">
                                                                <col width="*">
                                                                <col width="10%">
                                                                <col width="30%">
                                                            </colgroup>
                                                            <tbody>
                                                                <tr>
                                                                    <th>검색</th>
                                                                    <td>
                                                                        <span class="telerik_bx">
                                                                            <span id="ctl00_ContentPlaceHolder1__projectdescription_wrapper" class="riSingle RadInput" style="width:160px;">
                                                                              <input id="ctl00_ContentPlaceHolder1__projectdescription" name="ctl00$ContentPlaceHolder1$_projectdescription" size="20" maxlength="300" type="text" value="" class="rfdDecorated">
                                                                              <input id="ctl00_ContentPlaceHolder1__projectdescription_ClientState" name="ctl00_ContentPlaceHolder1__projectdescription_ClientState" type="hidden" autocomplete="off" value="{&quot;enabled&quot;:true,&quot;emptyMessage&quot;:&quot;&quot;,&quot;validationText&quot;:&quot;&quot;,&quot;valueAsString&quot;:&quot;&quot;,&quot;lastSetTextBoxValue&quot;:&quot;&quot;}">
                                                                            </span>
                                                                        </span>
                                                                    </td>
                                                                    <th>공정관리</th>
                                                                      <td>
                                                                         <span class="telerik_bx inp_btn">
                                                                         <div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1__projectcodePanel" style="width: 295px; padding-right: 36px; display: inline;">
                                                                            <select id="ctl00_ContentPlaceHolder1__projectcode" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7" style="border: 1px solid #d5d9e0 !important;">
                                                                               	<option value="value">전체공사</option>
																				<option value="value">시공대기</option>
																				<option value="value">장기미결</option>
																				<option value="value">공사취소</option>
																				<option value="value">철거대기</option>
																				<option value="value">굴착대기</option>
																				<option value="value">시공중</option>
																				<option value="value">설계변경</option>
																				<option value="value">시공완료</option>
																				<option value="value">환입대기</option>
																				<option value="value">자재대기</option>
																				<option value="value">사진대기</option>
																				<option value="value">정산완료</option>
																				<option value="value">예산부족</option>
																				<option value="value">준공완료</option>
																				<option value="value">계산서완료</option>
																				<option value="value">수금완료</option>	
                                                                            </select>
                                                                         </div>
                                                                         </span>
                                                                      </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="search_btn" >
                                                        <span id="ctl00_ContentPlaceHolder1_btnSearch" class="RadButton RadButton_ rbSkinnedButton" tabindex="0">
                                                            <input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnSearch" id="ctl00_ContentPlaceHolder1_btnSearch_input" value="검색" tabindex="-1">
                                                            <input id="ctl00_ContentPlaceHolder1_btnSearch_ClientState" name="ctl00_ContentPlaceHolder1_btnSearch_ClientState" type="hidden" autocomplete="off">
                                                        </span>
                                                    </div>
                                                    <div class="btn_openline1">상세검색</div>	
                                                </div>
                                                <!-- //상단검색 -->
                                                
                                                <div class="btn_btm">
                                                            <ul class="btn_rgt">
                                                                <li>
                                                                  <span id="ctl00_ContentPlaceHolder1_btnUploadExcel" class="RadButton RadButton_ rbSkinnedButton btn_ty2" tabindex="0">
                                                                    <input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnUploadExcel" id="ctl00_ContentPlaceHolder1_btnUploadExcel_input" value="업로드" tabindex="-1">
                                                                    <input id="ctl00_ContentPlaceHolder1_btnUploadExcel_ClientState" name="ctl00_ContentPlaceHolder1_btnUploadExcel_ClientState" type="hidden" autocomplete="off">
                                                                  </span>
                                                                </li>
                                                                <li>
                                                                  <span id="ctl00_ContentPlaceHolder1_btnInsertProject" class="RadButton RadButton_Telerik rbSkinnedButton btn_ty3" tabindex="0" rwopener="true">
                                                                    <input class="rbDecorated" type="button" name="ctl00$ContentPlaceHolder1$btnInsertProject" id="insertItem" value="신규등록" tabindex="-1">
                                                                    <input id="ctl00_ContentPlaceHolder1_btnInsertProject_ClientState" name="ctl00_ContentPlaceHolder1_btnInsertProject_ClientState" type="hidden" autocomplete="off">
                                                                  </span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                
                                                

                                                <div class="pos_qus">
	                                                <div class="qus_con2">
														<div class="search_box">
															<div class="search_brd src_ty4">
																<table class="brd_write2" id="mainTable">
																	<colgroup>
																		<col width="11%">
																		<col width="38%">
																		<col width="11%">
																		<col width="*">
																	</colgroup>						
																	<tbody><tr>
																		<th>계약번호</th>
																		<td>
																			<span class="telerik_bx">
																				<span  class="riSingle RadInput" style="width:160px;"><input id="ctl00_ContentPlaceHolder1__projectdescription" name="ctl00$ContentPlaceHolder1$_projectdescription" size="20" maxlength="300" type="text" value="" ><input id="ctl00_ContentPlaceHolder1__projectdescription_ClientState" name="ctl00_ContentPlaceHolder1__projectdescription_ClientState" type="hidden" autocomplete="off" value="{&quot;enabled&quot;:true,&quot;emptyMessage&quot;:&quot;&quot;,&quot;validationText&quot;:&quot;&quot;,&quot;valueAsString&quot;:&quot;&quot;,&quot;lastSetTextBoxValue&quot;:&quot;&quot;}"></span>
																			</span>
																		</td>
																		<th>공사번호</th>
																		<td>
																			<span class="telerik_bx">
																				<span id="ctl00_ContentPlaceHolder1__projectdescription_wrapper" class="riSingle RadInput" style="width:160px;"><input id="ctl00_ContentPlaceHolder1__projectdescription" name="ctl00$ContentPlaceHolder1$_projectdescription" size="20" maxlength="300" type="text" value="" ><input id="ctl00_ContentPlaceHolder1__projectdescription_ClientState" name="ctl00_ContentPlaceHolder1__projectdescription_ClientState" type="hidden" autocomplete="off" value="{&quot;enabled&quot;:true,&quot;emptyMessage&quot;:&quot;&quot;,&quot;validationText&quot;:&quot;&quot;,&quot;valueAsString&quot;:&quot;&quot;,&quot;lastSetTextBoxValue&quot;:&quot;&quot;}"></span>
																			</span>
																		</td>
																	</tr>
																	<tr>
																		<th>공사명</th>
																		<td>
																			<span class="telerik_bx">
																				<span id="ctl00_ContentPlaceHolder1__projectdescription_wrapper" class="riSingle RadInput" style="width:160px;"><input id="ctl00_ContentPlaceHolder1__projectdescription" name="ctl00$ContentPlaceHolder1$_projectdescription" size="20" maxlength="300" type="text" value="" ><input id="ctl00_ContentPlaceHolder1__projectdescription_ClientState" name="ctl00_ContentPlaceHolder1__projectdescription_ClientState" type="hidden" autocomplete="off" value="{&quot;enabled&quot;:true,&quot;emptyMessage&quot;:&quot;&quot;,&quot;validationText&quot;:&quot;&quot;,&quot;valueAsString&quot;:&quot;&quot;,&quot;lastSetTextBoxValue&quot;:&quot;&quot;}"></span>
																			</span>
																		</td>						
																	</tr>																	 	
																	<tr>
																		<th>공사기간</th>
																		<td>
																			<input type="text" id="datepicker">
																		</td>																		
																		<th>계약일</th>
																		<td>
																			<input type="text" id="datepicker2">
																		</td>				
																	</tr>																							
																</tbody></table>									
															</div>
															<div class="btn_closeline3">상세검색</div>
														</div>				
													</div>
                                                    <!-- 게시판 영역 -->
                                                    <div>
                                                        <div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_RadGridProjectListPanel" style="display: inline;">
                                                            <div id="ctl00_ContentPlaceHolder1_RadGridProjectList" class="RadGrid RadGrid_Telerik brd_list2" style="width:100%;" tabindex="0">
                                                                <table class="rgMasterTable" id="mainTable" style="width:100%;table-layout:auto;empty-cells:show;">
                                                                    <colgroup>
                                                                        <col style="width:4%">
                                                                        <col style="width:4%">                                                                        
                                                                        <col style="width:8%">
                                                                        <col style="width:8%">
                                                                        <col style="width:*">
                                                                        <col style="width:8%">
                                                                        <col style="width:4%">                                                                        
                                                                        <col style="width:4%">
                                                                        <col style="width:4%">
                                                                        <col style="width:4%">
                                                                        <col style="width:6%">
                                                                        <col style="width:4%">                                                                        
                                                                        <col style="width:3%">
                                                                        <col style="width:3%">
                                                                        <col style="width:3%">
                                                                    </colgroup>
                                                                    <thead>                                                                       
                                                                        <tr>
                                                                            <th scope="col" class="rgHeader" style="white-space:nowrap;">업체</th>	              																	
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">구분</th>	
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">계약번호</th>				
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공사번호</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공사명</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">계약금액</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">감독</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">작업구분</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">업무담당자</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공정관리</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공정작성일</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">시공완료일</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">자재</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">시공</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">사진</th>
																		</tr>
                                                                    </thead>
                                                                    <tfoot  style="background-color: #AE905E">
                                                                        <tr class="rgPager">
                                                                            <td colspan="7"  style="background-color: #AE905E">
                                                                               <%--  <table summary="Data pager which controls on which page is the RadGrid control." style="width:100%;border-spacing:0;">
                                                                                    <caption>
                                                                                        <span style="display: none">Data pager</span>
                                                                                    </caption>
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th scope="col">Data pager</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td class="rgPagerCell NumericPages">
                                                                                                <div class="rgWrap rgNumPart">
                                                                                                    <a onclick="return false;" class="rgCurrentPage" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridProjectList$ctl00$ctl03$ctl01$ctl02','')"><span>1</span></a>
                                                                                                    <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridProjectList$ctl00$ctl03$ctl01$ctl04','')"><span>2</span></a>
                                                                                                    <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridProjectList$ctl00$ctl03$ctl01$ctl06','')"><span>3</span></a>
                                                                                                    <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridProjectList$ctl00$ctl03$ctl01$ctl08','')"><span>4</span></a>
                                                                                                    <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridProjectList$ctl00$ctl03$ctl01$ctl10','')"><span>5</span></a>
                                                                                                </div>
                                                                                                <div class="rgWrap rgInfoPart">
                                                                                                    &nbsp;Page <strong>1</strong> of <strong>5</strong>, items <strong>1</strong> to <strong>10</strong> of <strong>48</strong>.
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table> --%>
                                                                                  <div class="text-center"  >
							                                                     
							                                                   </div>   
                                                                            </td>
                                                                        </tr>
                                                                    </tfoot>
                                                                    <tbody>
	                                                                    
	                                                                     <c:forEach var="value" items="${list}">
																              <tr  >
																                   
																             	<%--     <td  class="col_ct">${value.contract_number }</td>				
																		            <!-- <td>  </td> -->
																		            <td class="col_ct">${value.constructionVO.number }</td>
																	              	<td class="col_ct">${value.constructionVO.name }</td>	
																	              	<td class="col_ct">${value.constructionVO.contract_date }</td>
																	              	<td class="col_ct">${value.constructionVO.const_day }</td>
																	              	<td class="col_ct">${value.constructionVO.contract_amount }</td>
																	              	<td class="col_ct">${value.content }</td>  --%>
																		            <!-- <td>  </td> -->
																		            <td class="col_ct">${value.cnstrvo.cntrcvo.enterprise }</td>
																		            <td class="col_ct">단가</td>
																		            <td class="col_ct">${value.cnstrvo.cntrcvo.number }</td>
																		            <td class="col_ct">${value.cnstrvo.cntrcvo.cnstr_number }</td>
																		            <td class="col_ct">${value.cnstrvo.name }</td>
																		            <td class="col_ct">${value.cnstrvo.cntrcvo.amount }</td>
																		            <td class="col_ct">감독</td>
																		            <td class="col_ct">작업구분(가공 등)</td>
																		            <td class="col_ct">업무담당자</td>
																		            <td class="col_ct">${value.status }</td>
																		            <td class="col_ct">${value.regdate }</td>
																		            <td class="col_ct">시공완료일</td>
																		            <td class="col_ct">0%</td>
																		            <td class="col_ct">0%</td>
																		            <td class="col_ct">0%</td>
																		            
																		            
																		            
																		       <%--      
																		            <td class="col_ct">${value.cnstr_number }</td>
																	              	<td class="col_ct">${value.manager_id }</td>	
																	              	<td class="col_ct">${value.status }</td>
																	              	<td class="col_ct">${value.regdate }</td>
																					<td class="col_ct">다음이 데이터</td>
																	              	<td class="col_ct">${value.cnstrvo.number }</td>
																	              	<td class="col_ct">${value.cnstrvo.name }</td>
																	              	<td class="col_ct">${value.cnstrvo.start_date }</td>
																	              	<td class="col_ct">${value.cnstrvo.end_date }</td>
																	              	<td class="col_ct">${value.cnstrvo.regdate }</td>
																	              	<td class="col_ct">다음이 데이터</td>
																	              	<td class="col_ct">${value.cnstrvo.cntrcvo.number }</td>
																	              	<td class="col_ct">${value.cnstrvo.cntrcvo.cnstr_number }</td>
																	              	<td class="col_ct">${value.cnstrvo.cntrcvo.cntrc_division }</td>
																	              	<td class="col_ct">${value.cnstrvo.cntrcvo.enterprise }</td>
																	              	<td class="col_ct">${value.cnstrvo.cntrcvo.amount }</td> --%>
																	              	
																	              	
																	              												              	
																	              	<%-- <td class="col_ct">${value.contract_amount }</td> --%>
																	           
																	              	
																  <%--           <c:if test="${value.contract != null}" >
																              
																               </c:if>  --%>
																              </tr>   
																    	</c:forEach>
	                                                                   
                                                                    </tbody>
                                                                </table>
                                                                <input id="ctl00_ContentPlaceHolder1_RadGridProjectList_ClientState" name="ctl00_ContentPlaceHolder1_RadGridProjectList_ClientState" type="hidden" autocomplete="off">
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                    <!-- //게시판 영역 -->
                                                </div>
                                            </div>
                                            <!-- //본문 -->
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- //contents -->
    </div>
    <!-- //container -->
</body>
</html>