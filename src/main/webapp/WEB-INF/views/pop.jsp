<%@ page language="java" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/pop.css">
<script src="./js/pop.js"></script>
<script src="./js/modal.js"></script>

<div id="modal-form" class="modal" style="z-index: 20">
	<div class="pop_wrap modal-content">
		<div class="container">
			<!-- 상단 -->
			<div class="pop_head">
				<h2 class="head">등록</h2>
				<span id="modal-close" class="close">&times;</span>
			</div>
			<!-- //상단 -->
		
			<!-- 탭 제목 -->
			<div id="pop_tabs" class="">
				<div class="">
					<ul class="tabs">
						<!-- 계약 정보 -->
						<li class="tab-link current" data-tab="tab-1"><span class="">계약 정보</span></li>
						<!-- 준공 정보 -->
						<li class="tab-link" data-tab="tab-2"><span class="">준공 정보</span></li>
						<!-- 굴착 정보 -->
						<li class="tab-link" data-tab="tab-3"><span class="">굴착 정보</span></li>
						<!-- 전주 정보 -->
						<li class="tab-link" data-tab="tab-4"><span class="">전주 정보</span></li>
					</ul>
				</div>
			</div>
			<!-- //탭 제목 -->
		
			<!-- 본문 -->
			<div id="pop_body" class="pop_body">
				<div id="pop_body_main" class="pop_body_main">
					<div id="tab-1" class="tab-content current">
		        		<!-- 입력폼 -->
						<form id="frm" name="frm" method="post" enctype="multipart/form-data">
							<!-- 업무 정보 -->
							<fieldset>
								<legend>업무 정보</legend>
								<table class="brd_write2">
									<colgroup>
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>업무팀 (*)</th>
											<td><select name="curTeam" id="selTeam">
													<option value="0">선택</option>
													<c:forEach items="${listTeam }" var="item">
														<option value="${item.id }">${item.id}:${item.name }</option>
													</c:forEach>
											</select></td>
											<th>업무 담당자 (*)</th>
											<td>
												<select name="curManager" id="selManager">
													<option value="0">선택</option>
												</select>
											</td>
											<th>작성일</th>
											<td colspan="2"><input id="regDate" name="curDate" type="text" class="datepicker" placeholder="YY-MM-DD" /></td>
										</tr>
									</tbody>
								</table>
							</fieldset>	
							<br />
							<fieldset>
								<legend>공사 정보</legend>
								<!-- 공사 정보 -->
								<table class="brd_write2">
									<colgroup>
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>업체</th>
											<th>계약 번호</th>
											<th>공사 번호</th>
											<th colspan="4">공사 명</th>
										</tr>
										<tr>
											<td><select id="selComp" class="" name="selComp">
													<option value="0">선택</option>
													<c:forEach items="${listComp }" var="item">
														<option value="${item.id }">${item.id}:
															${item.name }</option>
													</c:forEach>
											</select></td>
											<td><input id="cntrcNumber" type="text"
												name="cntrcNumber" placeholder="0-00-0-0" value="" readonly /></td>
											<td><input id="cnstrNumber" type="text"
												name="cnstrNumber" placeholder="0000-0000-0000"
												maxlength="14" value="" /></td>
											<td colspan="4"><input type="text" name="cnstrName"
												value="" /></td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<br />
							<fieldset>
								<legend>공사 성격 및 실행율</legend>
								<!-- 공사 성격 및 실행율 -->
								<table class="brd_write2">
									<colgroup>
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>계약 업체</th>
											<th>계약 구분</th>
											<th>공사 구분</th>
											<th>시공 구분</th>
											<th>낙찰율 (%)</th>
											<th>실행율 (%)</th>
											<th>지입율 적용</th>
										</tr>
										<tr>
											<td><input id="" type="text" name="cnstrComp"
												placeholder="업체명" /></td>
											<td><select id="selCntrc" class="" name="selCntrc">
													<option value="0">선택</option>
													<c:forEach items="${listCntrc }" var="item">
														<option value="${item.id }">${item.id}:
															${item.name }</option>
													</c:forEach>
											</select></td>
											<td><select id="selCnstr" class="" name="selCnstr">
													<option value="0">선택</option>
													<c:forEach items="${listCnstr }" var="item">
														<option value="${item.id }">${item.name }</option>
													</c:forEach>
											</select></td>
											<td><select id="selBuild" class="" name="selBuild">
													<option value="0">선택</option>
													<c:forEach items="${listBuild }" var="item">
														<option value="${item.id }">${item.name }</option>
													</c:forEach>
											</select></td>
											<td><input id="ratioBid" type="number" name="ratioBid"
												min="0" max="100" step="0.01"
												onchange="setTwoNumberDecimal(this)" placeholder="0.00" /></td>
											<td><input id="ratioRun" type="number" name="ratioRun"
												min="0" max="100" step="0.01"
												onchange="setTwoNumberDecimal(this)" placeholder="0.00" /></td>
											<td><input id="cbBring" type="checkbox" name="cbBring"
												value="true" /> <input id="isBring" type="hidden"
												name="isBring" /></td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<br />
							<fieldset>
								<legend>계약 정보</legend>
								<!-- 계약 금액 -->
								<table class="brd_write2">
									<colgroup>
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th rowspan="2">계약 금액 (￦)</th>
											<th colspan="3">가공 공사</th>
											<th colspan="3">지중 공사</th>
										</tr>
										<tr>
											<th>가공 비율 (%)</th>
											<th>가공 금액 (￦)</th>
											<th>업무팀</th>
											<th>지중 비율 (%)</th>
											<th>지중 금액 (￦)</th>
											<th>업무팀</th>
										</tr>
										<tr>
											<td><input id="cntrcAmount" type="text"
												name="cntrcAmount" placeholder="금액 입력"
												onkeyup="inputNumberFormat(this)"></td>
											<td><input id="ratioProgress" type="number"
												name="ratioProgress" min="0" max="100" step="0.01"
												onchange="setTwoNumberDecimal(this)" placeholder="0.00"></td>
											<td><input id="progressAmount" type="text"
												name="progressAmount" placeholder="가공 금액"
												onchange="inputNumberFormat(this)" readonly></td>
											<td><select name="progressTeam" id="progressTeam">
													<option value="0">선택</option>
													<c:forEach items="${listTeam }" var="item">
														<option value="${item.id }">${item.id}:
															${item.name }</option>
													</c:forEach>
											</select></td>
											<td><input id="ratioUnderground" type="number" name="ratioUnderground" min="0" max="100" step="0.01" onchange="setTwoNumberDecimal(this)" placeholder="0.00"></td>
											<td><input id="undergroundAmount" type="text" name="undergroundAmount" placeholder="지중 금액"
												onchange="inputNumberFormat(this)" readonly></td>
											<td><select name="undergroundTeam" id="undergroundTeam">
													<option value="0">선택</option>
													<c:forEach items="${listTeam }" var="item">
														<option value="${item.id }">${item.id}:
															${item.name }</option>
													</c:forEach>
											</select></td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<br />
							<fieldset>
								<legend>한전 업무 담당자</legend>
								<!-- 한전 업무 담당자 -->
								<table class="brd_write2">
									<colgroup>
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th colspan="2">지사</th>
											<th colspan="2">부서</th>
											<th colspan="2">파트</th>
											<th>감독</th>
										</tr>
										<tr>
											<th>지사</th>
											<td><input type="text" name="" placeholder="강남지사" value="" readonly /></td>
											<th>부서</th>
											<td><input type="text" name="" placeholder="배전운영부" value="" readonly /></td>
											<th>파트</th>
											<td><input type="text" name="" placeholder="신규파트" value="" readonly /></td>
											<td rowspan="3"><input id="" type="text" name="" placeholder="홍길동" value="" /></td>
										</tr>
										<tr>
											<th>직위</th>
											<td><input type="text" name="" placeholder="지사장" value="" readonly /></td>
											<th>직위</th>
											<td><input type="text" name="" placeholder="팀장" value="" readonly /></td>
											<th>직위</th>
											<td><input type="text" name="" placeholder="차장" value="" readonly /></td>
										</tr>
										<tr>
											<th>성명</th>
											<td><input type="text" name="" placeholder="홍길동" value="" readonly /></td>
											<th>성명</th>
											<td><input type="text" name="" placeholder="홍길동" value="" readonly /></td>
											<th>성명</th>
											<td><input type="text" name="" placeholder="홍길동" value="" readonly /></td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<br />
							<fieldset>
								<legend>시공 일정 정보</legend>
								<!-- 공기 (시공 일정) -->
								<table class="brd_write2">
									<colgroup>
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="14.2%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th colspan="2">계약일</th>
											<th colspan="2">착공일</th>
											<th colspan="2">준공일</th>
											<th>공기 (일)</th>
										</tr>
										<tr>
											<td colspan="2"><input id="cntrcDate" type="text" name="cntrcDate" class="datepicker" placeholder="YY-MM-DD"></td>
											<td colspan="2"><input id="startDate" type="text" name="startDate" class="datepicker" onchange="diffDate()" placeholder="YY-MM-DD"></td>
											<td colspan="2"><input id="endDate" type="text" name="endDate" class="datepicker" onchange="diffDate()" placeholder="YY-MM-DD"></td>
											<td><input id="diffDay" type="text" placeholder="00" readonly></td>
										</tr>
									</tbody>
								</table>
							</fieldset>
						</form>
						<!-- //상단입력폼 -->
			      	</div>
					<div id="tab-2" class="tab-content">
		        	---- ---- ★--453---- ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ★-- ---- ---- ------★ ---- ---- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- ---- ★------ ---- ---- ---- ----
			      	</div>
			      	<div id="tab-3" class="tab-content">
			        ---- ★-- -------- ---- ---4545$%$%- ---- -★- ---- ---- -------- ---- -★- ---- ---- ---- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
			      	</div>
			      	<div id="tab-4" class="tab-content">
			        ---- #$★-- -------$%$%- ---- ---- #%#^---- -★- ---- ---- ----#%#%---- ---- -★- ---- ---- -#$#$#--- ---- -------- ---- ---- ---- ---- ---- --★ -------- ★-- ---- ---- ---- ---- ---- -------- ---- ---- --★ ---- ---- ---- -------- ---- ---- ---- --★
			      	</div>
				</div>
				
				<!-- 하단 메뉴 -->
				<div id="pop_foot" class="pop_foot">
					<div class="btn_ctr">
						<ul class="bnt_tabs">
							<!-- 저장 -->
							<li class="" id=""><span class="">저장</span></li>
							
							<!-- 삭제 -->
							<li class="" id=""><span class="">삭제</span></li>
							
							<!-- 닫기 -->
							<li class="" id=""><span class="">닫기</span></li>
						</ul>
				</div>
				</div>
				
			</div>
			<!-- //본문 -->
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	// Get the modal
	var modal = $("#modal-form");

	// Get the button that opens the modal
	var btn = $("#insertItem");

	// Get the <span> element that closes the modal
	var span = $("#modal-close");

	// When the user clicks on the button, open the modal
	//btn.onclick = function() {
//		modal.style.display = "block";
	//}

	btn.on("click", function() {
		modal.css("display", "block");
		$("body").css("overflow", "hidden");
	});

	// When the user clicks on <span> (x), close the modal
	//span.onclick = function() {
//		modal.style.display = "none";
	//}

	span.on("click", function() {
		modal.css("display", "none");
		$("body").css("overflow", "auto");
	});

	// When the user clicks anywhere outside of the modal, close it
	// window.onclick = function(event) {
	// if (event.target == modal) {
	// modal.style.display = "none";
	// }
	// }
});
</script>