
const skillInfoToggle = () => {
  $(".section").hover(function(){
     $(this).find(".popover-skill").toggle();
  });
};


// const infoModal = () => {
//   $(document).ready(function(){
//       $('[data-toggle="popover-hover"]').popover({
//           html: true,
//           trigger: 'hover',
//           placement: 'bottom'

//       });
//   });
// };

$(function () {
  $('[data-toggle="popover"]').popover({ trigger: "hover" })
})


export { skillInfoToggle };
// export { infoModal };
