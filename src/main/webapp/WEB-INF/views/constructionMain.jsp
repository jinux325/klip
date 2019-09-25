<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko-KR">
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
    <!-- headerWrap -->
    <div id="headerWrap">
        <!-- header -->
        <div id="header">
            <div class="logoarea">
                <h1 class="logo" style="width: 194px; height: 29px;"></h1>
                <h1 id="_erp" class="tab1"><a href="/SystemMain.aspx"><img src="https://pj.genieaccount.com/images/common/tab_btn_01_01.png" alt="로고"></a></h1>
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
                <span>공사관리</span>
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
        </ul>
        <ul id="navSide">
            <li class="side1"><a href="/Configuration/NoticeList.aspx">공지사항</a></li>
            <li class="side2"><a href="/Configuration/KeyPointList.aspx">중점사항</a></li>
        </ul>
    </div>
    <!-- //navWrap -->

    <!-- container -->
    <div id="container" style="height: 856px;">
        <!-- snbWrap -->
        <div id="snbWrap" style="height: 856px;">
            <!-- 레프트 메뉴 -->
            <ul id="snb">
                <li id="account2" class="">
                    <span>공사관리</span>
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
            </ul>
            <!-- //레프트 메뉴 -->
        </div>
        <!-- //snbWrap -->
        <!-- contents -->
        <div class="contents_bdy">
            <div id="contents" style="height: 918px;">
                <div id="ctl00_RadSplitter1" class="telerik_rad_splitter" style="height: 400px; width: 1569px;">
                    <div style="">
                        <table id="RAD_SPLITTER_ctl00_RadSplitter1" class="RadSplitter RadSplitter_Telerik" style="width:1px;height:1px;border-left-width:1px;border-top-width:1px;">
                            <tbody>
                                <tr>
                                    <td id="ctl00_RadPane2" class="rspPane rspFirstItem rspLastItem" style="border-right-width:1px;border-bottom-width:1px;">
                                        <div id="RAD_SPLITTER_PANE_CONTENT_ctl00_RadPane2" style="width: 1567px; height: 398px; overflow: auto;">
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
                                                .RadGrid.brd_list2 table.rgMasterTable tfoot tr.rgFooter td{text-align: right;background:#fafafa;}
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
                                                    <div class="search_btn">
                                                        <span id="ctl00_ContentPlaceHolder1_btnSearch" class="RadButton RadButton_ rbSkinnedButton" tabindex="0">
                                                            <input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnSearch" id="ctl00_ContentPlaceHolder1_btnSearch_input" value="검색" tabindex="-1">
                                                            <input id="ctl00_ContentPlaceHolder1_btnSearch_ClientState" name="ctl00_ContentPlaceHolder1_btnSearch_ClientState" type="hidden" autocomplete="off">
                                                        </span>
                                                    </div>
                                                    <div class="btn_openline1">상세검색</div>	
                                                </div>
                                                <!-- //상단검색 -->
                                                
                                                
                                                

                                                <div class="pos_qus">
	                                                <div class="qus_con2">
														<div class="search_box">
															<div class="search_brd src_ty4">
																<table class="brd_write2">
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
                                                                <table class="rgMasterTable" id="ctl00_ContentPlaceHolder1_RadGridProjectList_ctl00" style="width:100%;table-layout:auto;empty-cells:show;">
                                                                    <colgroup>
                                                                        <col style="width:10%">
                                                                        <%-- <col style="width:10%"> --%>
                                                                        <col style="width:18%">                                                                        
                                                                        <col style="width:*">
                                                                        <col style="width:10%">
                                                                        <col style="width:10%">
                                                                        <col style="width:10%">
                                                                    </colgroup>
                                                                    <thead>                                                                       
                                                                        <tr>
                                                                            <th scope="col" class="rgHeader" style="white-space:nowrap;">계약번호</th>	                                                                        	
                                                                        	<!-- <th scope="col" class="rgHeader" style="white-space:nowrap;">업체명</th>	 -->																			
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공사번호</th>	
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공사명</th>																																						
																			<!-- <th scope="col" class="rgHeader" style="white-space:nowrap;">공정관리</th> -->
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">공사기간</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">계약일</th>
																			<th scope="col" class="rgHeader" style="white-space:nowrap;">계약금액</th>
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
							                                                     <c:if test="${pageMaker.prev }">
																					
																						<a class="btn btn-default" 
																							href="constructionMain${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a>
																					
																				</c:if>
																				
																				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
																					 <c:out value="${pageMaker.cri.page == idx?'':'' }"/>
																						<a class="btn btn-default" href="constructionMain${pageMaker.makeSearch(idx) }">${idx }</a>
																				</c:forEach>
																				
																				<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
																						<a class="btn btn-default" href="constructionMain${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a>
																					
																				</c:if>
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
																	               	<td  class="col_ct">${value.contract_number }</td>				
																		            <!-- <td>  </td> -->
																		            <td class="col_ct">${value.number }</td>
																	              	<td class="col_ct">${value.name }</td>	
																	              	<td class="col_ct">${value.const_day }</td>
																	              	<td class="col_ct">${value.contract_date }</td>																	              	
																	              	<td class="col_ct">${value.contract_amount }</td>
																	           
																	              	
																               <%-- <c:if test="${value.contract != null}"> --%>
																              
																              <%-- </c:if> --%> 
																              </tr>   
																    	</c:forEach>
	                                                                   
                                                                    </tbody>
                                                                </table>
                                                                <input id="ctl00_ContentPlaceHolder1_RadGridProjectList_ClientState" name="ctl00_ContentPlaceHolder1_RadGridProjectList_ClientState" type="hidden" autocomplete="off">
                                                            </div>
                                                        </div>
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
                                                                    <input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnInsertProject" id="ctl00_ContentPlaceHolder1_btnInsertProject_input" value="신규등록" tabindex="-1">
                                                                    <input id="ctl00_ContentPlaceHolder1_btnInsertProject_ClientState" name="ctl00_ContentPlaceHolder1_btnInsertProject_ClientState" type="hidden" autocomplete="off">
                                                                  </span>
                                                                </li>
                                                            </ul>
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