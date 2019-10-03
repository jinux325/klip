<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<html>
<head>
  <title>공사 목록</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=0.8, user-scalable=yes, target-densitydpi=medium-dpi">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>
  <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="js/jquery.freezeheader.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){
    	$("#cnstr-table").freezeHeader();
    });
  </script>
</head>
<body>
  <div class="container">
    <!-- Tabs -->
    <div class="">
      <!-- Tab Menu -->
      <ul class="tabs">
        <li class="tab-link current" data-tab="tab-1">공사관리</li>
        <li class="tab-link" data-tab="tab-2">정산관리</li>
        <li class="tab-link" data-tab="tab-3">총무관리</li>
        <li class="tab-link" data-tab="tab-4">인사관리</li>
      </ul>
      <!-- //Tab Menu -->
    </div>
    <!-- //Tabs -->

    <!-- Tab Form -->
    <div class="">
      <div id="tab-1" class="tab-content current">

        <!-- Content Form -->
        <div class="" style="width: 100%; display: inline;">

          <!-- Side Form (Filter : 시공관련) -->
          <div id="sidebox">
            <!-- 전체공사 -->
            <fieldset style="padding: 2px; margin: 5px 0px;">
              <legend>전체공사</legend>
              <table id="side-menu1" style="width: 100%;">
                <colgroup>
                  <col style="width: *">
                  <col style="width: 40%">
                </colgroup>
                <tr>
                  <td>전체공사</td>
                  <td>637</td>
                </tr>
              </table>
            </fieldset>
            <!-- 시공관리 -->
            <fieldset style="padding: 2px; margin: 5px 0px;">
              <legend>시공정보</legend>
              <table id="side-menu2" style="width: 100%;">
                <colgroup>
                  <col style="width: *">
                  <col style="width: 40%">
                </colgroup>
                <tr>
                  <td>시공대기</td>
                  <td>34</td>
                </tr>
                <tr>
                  <td>장기미결</td>
                  <td>3</td>
                </tr>
                <tr>
                  <td>공사취소</td>
                  <td>23</td>
                </tr>
                <tr>
                  <td>철거대기</td>
                  <td>98</td>
                </tr>
                <tr>
                  <td>굴착대기</td>
                  <td>29</td>
                </tr>
                <tr>
                  <td>시공중</td>
                  <td>223</td>
                </tr>
                <tr>
                  <td>설계변경</td>
                  <td>3</td>
                </tr>
                <tr>
                  <td>시공완료</td>
                  <td>9</td>
                </tr>
              </table>
            </fieldset>
            <!-- 정산관리 -->
            <fieldset style="padding: 2px; margin: 5px 0px;">
              <legend>정산관리</legend>
              <table id="side-menu3" style="width: 100%;">
                <colgroup>
                  <col style="width: *">
                  <col style="width: 40%">
                </colgroup>
                <tr>
                  <td>환입대기</td>
                  <td>4</td>
                </tr>
                <tr>
                  <td>자재대기</td>
                  <td>6</td>
                </tr>
                <tr>
                  <td>사진대기</td>
                  <td>0</td>
                </tr>
                <tr>
                  <td>정산완료</td>
                  <td>22</td>
                </tr>
              </table>
            </fieldset>
            <!-- 준공관리 -->
            <fieldset style="padding: 2px; margin: 5px 0px;">
              <legend>준공관리</legend>
              <table id="side-menu4" style="width: 100%;">
                <colgroup>
                  <col style="width: *">
                  <col style="width: 40%">
                </colgroup>
                <tr>
                  <td>예산부족</td>
                  <td>9</td>
                </tr>
                <tr>
                  <td>준공완료</td>
                  <td>3</td>
                </tr>
                <tr>
                  <td>계산서완료</td>
                  <td>89</td>
                </tr>
                <tr>
                  <td>수금완료</td>
                  <td>10</td>
                </tr>
              </table>
            </fieldset>
            <!-- 작업관리 -->
            <fieldset style="padding: 2px; margin: 5px 0px;">
              <legend>작업관리</legend>
              <table id="side-menu5" style="width: 100%;">
                <colgroup>
                  <col style="width: *">
                  <col style="width: 40%">
                </colgroup>
                <tr>
                  <td>추가</td>
                </tr>
                <tr>
                  <td>수정</td>
                </tr>
                <tr>
                  <td>삭제</td>
                </tr>
              </table>
            </fieldset>
          </div>

          <!-- Main Form (본문) -->
          <div id="mainForm" class="" style="margin-right: 170px;">
            <!-- Fix Form -->
            <div id="fixForm">
              <!-- Filter Form -->
              <div id="filterForm" class="" style="height: max-content; margin-bottom: 10px; color: #8b7b7b">
                <ul id="filter">
                  <li>
                    <fieldset style="padding: 5px 10px; margin: 5px 0px; width: max-content;">
                      <legend>업체</legend>
                      <table id="search-comp">
                        <tr>
                          <td><input type="checkbox" class="cb" name="comp-cb1" value="대동"><label for="대동">대동</label></td>
                          <td><input type="checkbox" class="cb" name="comp-cb2" value="명승"><label for="명승">명승</label></td>
                          <td><input type="checkbox" class="cb" name="comp-cb3" value="바우"><label for="바우">바우</label></td>
                          <td><input type="checkbox" class="cb" name="comp-cb4" value="세안"><label for="세안">세안</label></td>
                          <td><input type="checkbox" class="cb" name="comp-cb4" value="용진"><label for="용진">용진</label></td>
                          <td><input type="checkbox" class="cb" name="comp-cb4" value="클립"><label for="클립">클립</label></td>
                        </tr>
                      </table>
                    </fieldset>
                  </li>

                  <li>
                    <fieldset style="padding: 5px 10px; margin: 5px 0px; width: max-content">
                      <legend>담당자</legend>
                      <table id="search-manager">
                        <tr>
                          <td><input type="checkbox" name="manager-cb1" value="김정훈"><label for="김정훈">김정훈</label></td>
                          <td><input type="checkbox" name="manager-cb2" value="심혁일"><label for="심혁일">심혁일</label></td>
                          <td><input type="checkbox" name="manager-cb3" value="백종현"><label for="백종현">백종현</label></td>
                          <td><input type="checkbox" name="manager-cb4" value="외주"><label for="외주">외주</label></td>
                        </tr>
                      </table>
                    </fieldset>
                  </li>

                  <li>
                    <fieldset style="padding: 5px 10px; margin: 5px 0px; width: max-content">
                      <legend>작업 구분</legend>
                      <table id="search-work-division">
                        <tr>
                          <td><input type="checkbox" name="work-division-cb1" value="복합"><label for="복합">복합</label></td>
                          <td><input type="checkbox" name="work-division-cb2" value="가공"><label for="가공">가공</label></td>
                          <td><input type="checkbox" name="work-division-cb3" value="지중"><label for="지중">지중</label></td>
                        </tr>
                      </table>
                    </fieldset>
                  </li>

                  <li>
                    <fieldset style="padding: 5px 10px; margin: 5px 0px; width: max-content">
                      <legend>구분</legend>
                      <table id="search-division">
                        <tr>
                          <td><input type="checkbox" name="division-cb1" value="단가"><label for="단가">단가</label></td>
                          <td><input type="checkbox" name="division-cb2" value="총가"><label for="총가">총가</label></td>
                        </tr>
                      </table>
                    </fieldset>
                  </li>

                </ul>
              </div>
              <!-- //Filter Form -->

              <!-- Search Form -->
              <div id="searchForm" class="" style="height: max-content; margin-bottom: 10px;">
                <div style="padding: 0px;">
                  <table id="searchBox-table" width="100%">
                    <colgroup>
                      <col style="width: 8%;">
                      <col style="width: *;">
                      <col style="width: 8%;">
                      <col style="width: 30%;">
                    </colgroup>
                    <tbody style="text-align: left;">
                      <tr>
                        <td>
                          <select>
                            <option>전체</option>
                            <option>계약번호</option>
                            <option>공사번호</option>
                            <option>공사명</option>
                          </select>
                        </td>
                        <td><input type="text" name=""></td>
                        <td><input type="button" name="" value="검색"></td>
                        <td style="text-align: right;">
                          <table id="sumAmountForm" style="width: 100%;">
                            <colgroup>
                              <col style="width: 40%;">
                              <col style="width: *;">
                            </colgroup>
                            <tr>
                              <td style="text-align: right;"><label for="합계">금액 합계(￦) : </label></td>
                              <td style="text-align: right;"><label for="총합">100,000,000,000</label></td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- //Search Form -->
            </div>

            <!-- Board Form -->
            <div id="boardForm" class="">
              <table id="cnstr-table" class="gridView">
                <colgroup>
                  <col style="width:4%">
                  <col style="width:4%">
                  <col style="width:4%">
                  <col style="width:8%">
                  <col style="width:8%">
                  <col style="width:*">
                  <col style="width:8%">
                  <col style="width:5%">
                  <col style="width:5%">
                  <col style="width:6%">
                  <col style="width:5%">
                  <col style="width:6%">
                  <col style="width:6%">
                  <col style="width:5%">
                  <col style="width:5%">
                  <col style="width:5%">
                </colgroup>
                <thead>
                  <tr>
                    <th>No</th>
                    <th>업체</th>
                    <th>구분</th>
                    <th>계약번호</th>
                    <th>공사번호</th>
                    <th>공사명</th>
                    <th>계약금액</th>
                    <th>감독</th>
                    <th>작업구분</th>
                    <th>업무담당자</th>
                    <th>공정관리</th>
                    <th>공정작성일</th>
                    <th>시공완료일</th>
                    <th>자재(%)</th>
                    <th>시공(%)</th>
                    <th>사진(%)</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="value" items="${list}">
	                  <tr>
	                    <td>${value.id }</td>
	                    <td >${value.cnstrvo.cntrcvo.enterprise }</td>
          						<td >${value.cnstrvo.cntrcvo.listcntrcvo.name }</td>
          						<td >${value.cnstrvo.cntrcvo.number }</td>
          						<td >${value.cnstrvo.cntrcvo.cnstr_number }</td>
          						<td class="alignLeft">${value.cnstrvo.name }</td>
          						<td class="alignRight">${value.cnstrvo.cntrcvo.amount }</td>
          						<td >감독</td>
          						<td >${value.cnstrvo.listcnstrvo.name }
          						</td>
          						<td >${value.listManagerVo.name }</td>
          						<td >${value.status }</td>
          						<td >${value.regdate }</td>
          						<td >시공완료일</td>
          						<td >0%</td>
          						<td >0%</td>
          						<td >100%</td>
	                  </tr>
                  	</c:forEach>
                </tbody>
              </table>
            </div>
            <!-- //Board Form -->
          </div>
        </div>
      </div>
      <div id="tab-2" class="tab-content">
        ---- ---- ★------ ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ★-- ---- ---- ------★ ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- ---- ★------ ---- ---- ---- ----
      </div>
      <div id="tab-3" class="tab-content">
        ---- ★-- -------- ---- ---- ---- -★- ---- ---- -------- ---- -★- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
      </div>
      <div id="tab-4" class="tab-content">
        ---- #$★-- -------- ---- ---- #%#^---- -★- ---- ---- ----#%#%---- ---- -★- ---- ---- -#$#$#--- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
      </div>
    </div>
  </div>
</body>
</html>
