var sendModal = document.getElementById("sendMessageModal");
var sendBtn = document.getElementById("sendBtn");
var sendCancel = document.querySelector(".modal-cancel");
var sendSubmit = document.querySelector(".modal-submit");
var messageField = document.getElementById("conversation_content");

var alertModal = document.getElementById("AlertModal");
var alertBtn = document.getElementById("alert-Btn");
var alertCancel = document.querySelector(".modal-alert-cancel");
var alertSubmit = document.querySelector(".modal-alert-submit");

const modalOpen = () => {
  sendBtn.onclick = function() {
    messageField.value = ""
    sendModal.style.display = "block";
  }
  sendCancel.onclick = function() {
    sendModal.style.display = "none";
  }
  sendSubmit.onclick = function() {
    sendModal.style.display = "none";
  }

  alertBtn.onclick = function() {
    messageField.value = ""
    alertModal.style.display = "block";
  }
  alertCancel.onclick = function() {
    alertModal.style.display = "none";
  }
  alertSubmit.onclick = function() {
    alertModal.style.display = "none";
  }
}


export { modalOpen }


