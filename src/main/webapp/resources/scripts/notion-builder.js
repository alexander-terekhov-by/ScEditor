$(document).ready(function () {


    $("#redirect-to-upload-form").on("click", function () {
        $(location).attr('href', 'RelationUploadForm');
    });
    $("#save-into-scs").on("click", function () {
        var notion = {};
        $(".notion-attr-row").each(function () {
            notion[$(this).find(".rel-key").val()] = $(this).find(".rel-value").val();
        });
        $.ajax({
            url: "/makeScs",
            method: "GET",
            data: {notion: JSON.stringify(notion)},
            success: function (data) {
                alert(data);
            }
        })
    });



});

//
//$("#add-relation").on("click", function () {
//    var $relationRow = $("<div>").addClass("relation-row");
//    var $nodeNameInput = $("<input>").addClass("node-name").attr("type", "text").attr("placeholder", "Sс идентификатор");
//    var $rusNameInput = $("<input>").addClass("rus-name").attr("type", "text").attr("placeholder", "Русский идентификатор");
//    var $engNameInput = $("<input>").addClass("eng-name").attr("type", "text").attr("placeholder", "Английский идентификатор");
//    $relationRow.append($nodeNameInput).append($rusNameInput).append($engNameInput);
//    $("#relation-list").append($relationRow);
//});
//
//
//function isRelationListValid() {
//    var isValid = true;
//
//    $(".relation-row").each(function () {
//        var $row = $(this);
//        if ($row.find(".node-name").val() == ""
//            || $row.find(".rus-name").val() == ""
//            || $row.find(".eng-name").val() == "") {
//            isValid = false;
//        }
//
//    });
//    return isValid;
//}



