
$(document).ready(function(){
	
	/* join */	
	$(".join #join_register").click(function(e){
		var user_pw = $("#user_pw").val(); //비밀번호 value값
		var user_pw_check = $("#user_pw_check").val(); //비밀번호check value값
		
		
		if(user_pw =='' || user_pw_check=='') {
			e.preventDefault();
			alert("비밀번호를 입력해주세요.");
			if(user_pw=='') {
				$("#user_pw").focus();	
			}else if(user_pw_check=='') {
				$("#user_pw_check").focus();
			}
			
		}else if(user_pw==user_pw_check) {
			alert("회원가입이 완료되었습니다.");
		}else {
			e.preventDefault();
			alert("비밀번호를 확인해주세요.");
			$("#user_pw").focus();
		}
		
		if($("#join_check").prop("checked") == false) {
			e.preventDefault();
			alert("약관에 동의해주세요.");
			$("#join_check").focus(); 
		}
	});
	


	
	
	
	
	
	/* qna_답변 */
	$(".admin_toll li:last-child").find('a').click(function(){
        $('.qna_admin_replyBg').fadeIn(0);
        $('.qna_admin_reply').fadeIn(0); 
    });
    
    $(".qna_reply_closeBtn").click(function(){
        $(this).parent().fadeOut(0);
        $('.qna_admin_replyBg').fadeOut(0);
    });
    
    $(".qna_admin_reply input.qna_admin_reset").click(function(){
        $('.qna_admin_replyBg').fadeOut(0);
        $('.qna_admin_reply').fadeOut(0); 
    });
	
	
	/* faq */
    
    $(".faq_cont").fadeOut();
    $(".faq_tab li:first-child").addClass("add");
    $(".faq_tab_order").fadeIn(0);
    $(".page a.num:nth-child(1)").addClass('click');
    
    $(".faq_click_tit").click(function(){
        $('.faq_cont').slideUp(0);
        $(this).next().slideToggle();
    });
    
    $(".faq_tab li").click(function(){
        var i = $(this).index();
        
        $('.faq_tab li').removeClass("add");
        $(this).addClass("add");
        $(".faq_tab_box > div").fadeOut(0);
        $(".faq_tab_box > div").eq(i).fadeIn(0);
        
        $(".faq_cont").slideUp(0);
    });

	$('.page .num a').click(function(){
		
		$('.page .num a').removeClass("click");
		$(this).addClass("click");
		
	});
	

});


$(function(){
	/* login */
	$("#submit").click(function(e){
		
		if($("#user_id").val() == '' | $("#user_id").val() == null) {
			e.preventDefault();
			alert("아이디를 입력해주세요.");
			$("#user_id").focus();
		}

		if($("#user_pw").val() == '' | $("#user_pw").val() == null) {
			e.preventDefault();
			alert("비밀번호를 입력해주세요.");
			$("#user_pw").focus();
		}
		
		
	});
});


/* 상품view */
$(document).ready(function() {
	$("#review_view").click(function(e){
		e.preventDefault();
		
		$(".text_list").eq(0).focus();
	});
	
	$("#size").change(function(){
		
		$("#color").change(function(){
			var size = $("#size").val();
			var color = $("#color").val();
			
			$(".hidden").text("사이즈 : "+size + ", 색상 : " + color);
			
		});
		
	});
	
	
	var cate1 = $(".item_view .product_title b");
	
	if(cate1.text()=="1"){
		cate1.text("MAN");
	}else if(cate1.text() == "2"){
		cate1.text("WOMAN");
	}else if(cate1.text() == "3"){
		cate1.text("BEAUTY");
	}
	
	
		
});




/* payment */
$(document).ready(function(){
	
	$("#register").click(function(e){
		var user_pw = $("#user_pw").val(); //비밀번호 value값
		var user_pw_check = $("#user_pw_check").val(); //비밀번호check value값
		
		
		if(user_pw =='' || user_pw_check=='') {
			e.preventDefault();
			alert("비밀번호를 입력해주세요.");
			if(user_pw=='') {
				$("#user_pw").focus();	
			}else if(user_pw_check=='') {
				$("#user_pw_check").focus();
			}
			
		}else if(user_pw==user_pw_check) {
			alert("회원가입이 완료되었습니다.");
		}else {
			e.preventDefault();
			alert("비밀번호를 확인해주세요.");
			$("#user_pw").focus();
		}
		
		if($("#join_check").prop("checked") == false) {
			e.preventDefault();
			alert("약관에 동의해주세요.");
			$("#join_check").focus(); 
		}
	});

});
	

    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('user_postcode').value = data.zonecode;
                document.getElementById("user_roadAddress").value = roadAddr;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("user_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("user_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode2() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('user_postcode2').value = data.zonecode;
                document.getElementById("user_roadAddress2").value = roadAddr;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("user_extraAddress2").value = extraRoadAddr;
                } else {
                    document.getElementById("user_extraAddress2").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }


/* 카트 */
$(function(){
	$(".button_minus").click(function(){
	      
        var p_index = $(this).parents('tr');
        
      var button_count = parseInt(p_index.find(".button_count").attr("value"));
      var div_price = parseInt(p_index.find(".div_price").attr("value"));
      var data_count = $(".data_count").val();
      var price = $(".price").val();
      
      /*총 결제금액 출력을 위한 변수*/
      var div_total_price = $(".div_total_price").attr("value");
      var total_price_final = $(".total_price_final").val();
        
       
      if(button_count != null) {
      button_count = button_count - 1;
      price = (div_price * button_count)-price;
      
         if(button_count <= 0) {
            alert("1보다 작은 수는 불가능 합니다.");
            return false;
         }
   
        $(this).siblings(".button_count").attr("value",button_count);
        $(this).siblings('.button_count').text(button_count);
      data_count = button_count;
      
      
        $(this).parent().siblings('.div_price').text(price + "(원)");
      
      console.log(price);
      console.log(data_count);
        
        
          
          
          
          
        var order_list = $('.cart_body table tr').length;
        var sum = 0;
        
        for(var i=0;i<=order_list;i++){
            var a = $(".cart_body table tr" ).eq(i);
            
            if(a.find(".checkbox").is(":checked") == true){
                var each_price = parseInt(a.find('.div_price').text());
                sum += each_price;
            }
        }
        console.log("총액")
        console.log(sum);  
          
        div_total_price = sum;
        total_price_final = sum;
        
        $('.div_total_price b').text(sum + " (원)");
        
          
        
        console.log("마이너스")
        console.log(div_total_price)
        console.log(total_price_final)
          
        
          
     }
      
   });

	$(".button_plus").click(function(){
		
		 var p_index = $(this).parents('tr');
		
		var button_count = parseInt(p_index.find(".button_count").attr("value"));
		var div_price = parseInt(p_index.find(".div_price").attr("value"));
		var data_count = $(".data_count").val();
		var price = $(".price").val();
		
	    /*총 결제금액 출력을 위한 변수*/
	    var div_total_price = $(".div_total_price").attr("value");
	    var total_price_final = $(".total_price_final").val();
        
		
		if(button_count != null) {
			
		//수량 변경
		button_count = button_count + 1;
		price = (div_price * button_count)
		

		//수량에 따른 가격 변경
		
		$(this).siblings(".button_count").attr("value",button_count);
        $(this).siblings('.button_count').text(button_count);
		data_count = button_count;
		
	   /*  $("#div_price").attr("value", price); */
		$(this).parent().siblings('.div_price').text(price + "(원)");
	   
	   var sum = 0;
	   
	   for(var i=0; i<2; i++) {
		   sum = sum + $(".price").eq(i).val();
	   }
	   
	   $(".div_total_price").attr("value",sum);
	   console.log($(".div_total_price").attr("value"));
		
	    console.log(data_count);
		console.log(price);
		}
		
        
        
        
        
        var order_list = $('.cart_body table tr').length;
        var sum = 0;
        
        for(var i=0;i<=order_list;i++){
            var a = $(".cart_body table tr" ).eq(i);
            
            if(a.find(".checkbox").is(":checked") == true){
                var each_price = parseInt(a.find('.div_price').text());
                sum += each_price;
            }
        }
        
        
        console.log("총액")
        console.log(sum);  
          
        div_total_price = sum;
        total_price_final = sum;
        
        $('.div_total_price b').text(sum + " (원)");
        
        
        console.log("플러스")
        console.log(div_total_price)
        console.log(total_price_final)
        
        
        
        
        
        
	});
	
	
      
      
      
    $('.checkbox').click(function(){
    	
	    /*총 결제금액 출력을 위한 변수*/
	    var div_total_price = $(".div_total_price").attr("value");
	    var total_price_final = $(".total_price_final").val();
    	
        var order_list = $('.cart_body table tr').length;
        var sum = 0;
        
        for(var i=0;i<=order_list;i++){
            var a = $(".cart_body table tr" ).eq(i);
            
            if(a.find(".checkbox").is(":checked") == true){
                var each_price = parseInt(a.find('.div_price').text());
                sum += each_price;
            }
        }
        
        
        console.log("총액")
        console.log(sum);  
          
        div_total_price = sum;
        total_price_final = sum;
        
        $('.div_total_price b').text(sum + " (원)");
        
        console.log("체크")
        console.log(div_total_price)
        console.log(total_price_final)
    });
    
      
      
      
      
    
      
    //페이지 로드 시, 기본 전체 체크
    $('#checkbox,.checkbox').attr("checked",true);
    
    
    //checkbox 전체 선택 및 해제
	$("#checkbox").click(function(){
		
	    /*총 결제금액 출력을 위한 변수*/
	    var div_total_price = $(".div_total_price").attr("value");
	    var total_price_final = $(".total_price_final").val();
	    var order_list = $('.cart_body table tr').length;
	    var sum = 0;
	    
		if($(this).is(":checked")==true) {
			$(".checkbox").prop("checked", true);
			
			 for(var i=0;i<=order_list;i++){
		            var a = $(".cart_body table tr" ).eq(i);
		            
		            if(a.find(".checkbox").is(":checked") == true){
		                var each_price = parseInt(a.find('.div_price').text());
		                sum += each_price;
		            }
		        }
		        
		        
		        console.log("총액")
		        console.log(sum);  
		          
		        div_total_price = sum;
		        total_price_final = sum;
		        
		        $('.div_total_price b').text(sum+" (원)");
			
		}else {
			$(".checkbox").prop("checked", false);
			
			$('.div_total_price b').text("0 (원)");
			div_total_price = sum;
			total_price_final = sum;
			
			console.log(div_total_price);
			console.log(total_price_final);
			
		}
	});
	
	//하나의 상품 체크 취소 시 전체 선택 체크박스 체크 해제
	$(".checkbox").click(function(){
		var check_length = $("input[name='checkbox']").length;
		/* console.log(check_length); */
		
		if($("input[name='checkbox']:checked").length == check_length) {
			$("#checkbox").prop("checked", true);
		}else {
			$("#checkbox").prop("checked", false);
		}
	});
});


/* 상품list */
$(function(){
	var listT = $("span.shopList_depth1").val();
	if(listT == "1"){
		listT == "MAN";
	}
	
	
})




/* 페이징 */
$(function(){
	var pageAction = $('#pageActionForm');
	
	$('.pageBtn a').click(function(e){
		e.preventDefault();
		pageAction.find("input[name='pageNum']").val($(this).attr("href"));
		pageAction.submit();
	});
})


/* 상품view */

