
$(document).ready(function(){
	
	/* join */	
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

