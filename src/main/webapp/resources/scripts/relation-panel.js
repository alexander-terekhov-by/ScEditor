$(document).ready(function(){

    $("#make-file").on("click", function(){
        $(".relation-row").each(function(){
            console.log($(this).find(".node-name").val());
            console.log($(this).find(".rus-name").val());
            console.log($(this).find(".eng-name").val());
        })
    })


});
