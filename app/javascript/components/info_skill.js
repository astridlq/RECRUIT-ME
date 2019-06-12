
const skillInfoToggle = () => {
  $(".section").hover(function(){
     $(this).find(".popover-skill").toggle();
  });
};

$('.popover-skill').popover({
 html : true,
 content: function() {
  const elementId = $(this).attr("data-popover-content");
  return $(elementId).html();
 }
});

export { skillInfoToggle };
