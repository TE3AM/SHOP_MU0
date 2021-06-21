/* smarteditor */
$(function(){
    var oEditors = [];
    nhn.husky.EZCreator.createInIFrame({
     oAppRef: oEditors,
     elPlaceHolder: "eve_w_cont",  /* textarea id값 */
     sSkinURI: "resources/smarteditor2/SmartEditor2Skin.html",
     fCreator: "createSEditor2",
     htParams : {
         bUseToolbar : true,   /* 툴바 사용 여부 */
         bUseVerticalResizer : false,   /* 입력창 크기 조절바 사용 여부 */
         bUseModeChanger : true   /* 모드탭(Editor/html/text) 사용여부 */
     }
    });
    
    $("#eve_submit").click(function(){
        oEditors.getById['eve_w_cont'].exec("UPDATE_CONTENTS_FIELD",[]);
        
        var content = $('#eve_w_cont').val();
        
        if(content == "" || content == null || content == '&nbsp;' || content == '<br>' || content == '<br/>' || content == '<p>&nbsp;</p>'){
            alert("본문을 작성해주세요."); oEditors.getById["smartEditor"].exec("FOCUS"); //포커싱 return; 
        }else{
            alert(content)
            $('#eve_w_form').submit();
        }
        //이 부분은 스마트에디터 유효성 검사 부분이니 참고하시길 바랍니다.

    });
    
    
    
});