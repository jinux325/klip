/**
 * Modal
 */

// 공사구분 선택 이벤트 처리
$(function() {
	$("#selCnstr").change(function() {
		var ratioProgress = $("#ratioProgress");
		var ratioUnderground = $("#ratioUnderground");
		
		var progressAmount = $("#progressAmount");
		var undergroundAmount = $("#undergroundAmount");
		
		var value = $(this).val();
		
		if (value == '1') {
			ratioProgress.val('50');
			ratioUnderground.val('50');
			
		} else if (value == '2') {
			ratioProgress.val('100');
			ratioUnderground.val('0');
			
		} else if (value == '3') {
			ratioProgress.val('0');
			ratioUnderground.val('100.0');
			
		} else {
			ratioProgress.val('0');
			ratioUnderground.val('0');
			
		}
		
		var progressVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioProgress.val() / 100);
		var undergroundVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioUnderground.val() / 100);
		progressAmount.val(comma(progressVal));
		undergroundAmount.val(comma(undergroundVal));
		
	});
});

// 가공 비율, 지중 비율에 따른 금액 처리 이벤트
$(function() {
	var ratioProgress = $("#ratioProgress");
	var ratioUnderground = $("#ratioUnderground");
	var progressAmount = $("#progressAmount");
	var undergroundAmount = $("#undergroundAmount");
	var cntrcAmount = $("#cntrcAmount");
	
	ratioProgress.on("change paste keyup", function() {
		ratioUnderground.val( decimal(100.00 - $(this).val()) );
		
		var progressVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioProgress.val() / 100);
		var undergroundVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioUnderground.val() / 100);
		progressAmount.val(comma(progressVal));
		undergroundAmount.val(comma(undergroundVal));
		
	});
	ratioUnderground.on("change paste keyup", function() {
		ratioProgress.val( decimal(100.00 - $(this).val()) );
		
		var progressVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioProgress.val() / 100);
		var undergroundVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioUnderground.val() / 100);
		progressAmount.val(comma(progressVal));
		undergroundAmount.val(comma(undergroundVal));
		
	});
	
	cntrcAmount.on("propertychange change keyup paste input", function() {
		var progressVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioProgress.val() / 100);
		var undergroundVal = Math.floor(uncomma($("#cntrcAmount").val()) * ratioUnderground.val() / 100);
		progressAmount.val(comma(progressVal));
		undergroundAmount.val(comma(undergroundVal));
		
	});
});

// 업무 담당자 리스트 추가 이벤트 처리
$(function() {
	$("#selTeam").change(function() {
		
		var defaultOption = $("<option>선택</option>");
		$("#selManager").empty();
		$("#selManager").append(defaultOption);
		
		if ($(this).val() != '') {
			$.ajax({
				url: "ajax/getManagerList",
				type: "GET",
				data: {"key" : $(this).val()},
				dataType: "json",
				success: function(retVal) {
					values = retVal.listManager;
					
					$.each(values, function(index, value) {
						var option = $("<option value='" + value.id + "'>" + value.name + "</option>");
						$("#selManager").append(option);							
					});
				},
				error: function(request, error) {
					alert("code : " + request.status + "\nmessage : " + request.responseText + "\nerror : " + error);
				}
			});
		}
	});
});

// 계약번호 연산 이벤트 처리
$(function() {
	$("#selTeam").change(function() {
		setCntrcNumber();
	});
	
	$("#cntrcDate").on("propertychange change keyup paste input", function() {
		setCntrcNumber();
	});
	
	$("#selCntrc").change(function() {
		setCntrcNumber();	
	});
	
	$("#selComp").change(function() {
		setCntrcNumber();
	});
});

function setCntrcNumber() {
	var team = $("#selTeam").val() == '' ? '0' : $("#selTeam").val();
	var year = $("#cntrcDate").val() == '' ? '00' : ($("#cntrcDate").val().split('-')[0]).substring(2, 4);
	var cnstr = $("#selCntrc").val() == '' ? '0' : $("#selCntrc").val();
	var comp = $("#selComp").val() == '' ? '0' : $("#selComp").val();
	
	var value = team + '-' + year + '-' + cnstr + '-' + comp;
	
	$("#cntrcNumber").val(value);
}

// DatePicker
$(function() {
	$(".datepicker").datepicker( {
		changeMonth : true,
		changeYear : true,
		nextText : '다음 달',
		prevText : '이전 달',
		currentText : '오늘 날짜',
		closeText : '닫기',
		dateFormat : "yy-mm-dd",
		dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
		dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
		monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
	});
});

$(document).ready(function() {
	nowDate($("#regDate"));
	
	$(function() {
		if($("#cbBring").is(":checked")) {
			$("#isBring").val("true");
		} else {
			$("#isBring").val("false");
		}
	});
	
	$(function() {
		$("#cbBring").on("change", function() {
			if($("#cbBring").is(":checked")) {
				$("#isBring").val("true");
			} else {
				$("#isBring").val("false");
			}				
		});
	});
	
	// 공사 번호 입력 처리 이벤트
	$(function() {
		$("#cnstrNumber").keydown(function(event) {
			var key = event.charCode || event.keyCode || 0;
			$text = $(this); 
			if (key !== 8 && key !== 9) {
			    if ($text.val().length === 4) {
			        $text.val($text.val() + '-');
			    }
			    if ($text.val().length === 9) {
			        $text.val($text.val() + '-');
			    }
			}
			
			return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
		}); 
	});
	
	// 저장 이벤트
	$("#btnSaving_input").on("click", function() {
		var formData = $("#frm").serialize();
		
		$.ajax({
			cache: false,
			url: "ajax/insertData",
			method: "post",
			data: formData,
			success: function(retVal) {
				alert(retVal.code);
			},
			error: function() {
				alert("ajax error");
			}
		});
		
	});
	
});

// 객체 1000 단위 콤마 추가
function inputNumberFormat(obj) {
    obj.value = comma(uncomma(obj.value));
}

// 콤마 추가
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

// 콤마 제거
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}

// 실수 소수점 2자리까지 처리
function setTwoNumberDecimal(obj) {
    obj.value = decimal(obj.value);
}

function decimal(str) {
	str = String(str);
	return parseFloat(str).toFixed(2);
}

function nowDate(obj) {
	var now = new Date();
	
	var year= now.getFullYear();
	var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
	var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate(); 
	
	var chan_val = year + '-' + mon + '-' + day;
	
	obj.val(chan_val);
}

// 착공일, 중공일에 따른 공기 계산 이벤트
function diffDate() {
    var sdd = $("#startDate").val();
    var edd = $("#endDate").val();
    var ar1 = sdd.split('-');
    var ar2 = edd.split('-');
    var da1 = new Date(ar1[0], ar1[1], ar1[2]);
    var da2 = new Date(ar2[0], ar2[1], ar2[2]);
    var diff = da2 - da1;
    var cDay = 24 * 60 * 60 * 1000; // 시 * 분 * 초 * 밀리세컨
    
    $("#diffDay").val(diff / cDay);
}
