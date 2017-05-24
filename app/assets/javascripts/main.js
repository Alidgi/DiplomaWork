var numelem = 0;

$(function() {
    $('.jqbutton').button();
    $('.jqbutton').unbind().click(function(event){
        var htmladd = $.parseHTML(($('#inner' + event.target.id).html()));
        $('.main').append(htmladd[0].data);
        if ($('#val' + event.target.id).html() == 'Button'){

        }
        switch ($('#nam' + event.target.id).html()){
            case 'TextBox':{
                $('.jqtextform').draggable({ containment: "document", cancel: false });
                $('.jqtextform').addClass("hasmenu");
                $('.jqtextform').attr("id", "textbox" + numelem);
                //$('.jqtextform').resizable({cursor: "crosshair", containment: "document"});
                break;
            };
            case 'Button':{
                $('.jqbuttonform').button();
                $('.jqbuttonform').draggable({ containment: "document", cancel: false });
                $('.jqbuttonform').addClass("hasmenu");
                $('.jqbuttonform').attr("id", "button" + numelem);
                //$('.jqbuttonform').resizable({ containment: "parent"});
                break;
            };
        }
    });
});
$(function() {
    $('.jqdatepicker').datepicker();
});
$(function() {
    $('.jqtabs').tabs();
});
$(function() {
    $('.jqselectmenu').selectmenu();
});
$(function() {
    $('.left').tabs();
});
$(function() {
    $('.right').tabs();
    $('.ftab').removeClass('ui-tabs-panel');
});
$(function() {
    $('#form1').resizable({ containment: "document", maxHeight: 700, maxWidth: 1400});
});

var CLIPBOARD = "";

$(function(){
    $(document).contextmenu({
        delegate: ".hasmenu",
        autoFocus: true,
        preventContextMenuForPopup: true,
        preventSelect: true,
        taphold: true,
        menu: [
            {title: "Удалить", cmd: "del"},
            {title: "Свойства", cmd: "prop"}
        ],
        // Handle menu selection to implement a fake-clipboard
        select: function(event, ui) {
            var $target = ui.target;
            switch(ui.cmd){
                case "del":
                    $('#' + ui.target[0].id).remove();
                    break;
                case "prop":
                    var index =  $('#tabsf-2').index();
                    $('.right').tabs('option', 'active', index - 1);
                    break;
            }
        },
        beforeOpen: function(event, ui) {
            var $menu = ui.menu,
                $target = ui.target,
                extraData = ui.extraData; // passed when menu was opened by call to open()
        }
    });

});
