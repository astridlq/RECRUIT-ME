var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var cancel = document.querySelector(".modal-cancel");
var submit = document.querySelector(".modal-submit");
var messageField = document.getElementById("conversation_content");

const modalOpen = () => {
  btn.onclick = function() {
    messageField.value = ""
    modal.style.display = "block";
  }
  cancel.onclick = function() {
    modal.style.display = "none";
  }
  submit.onclick = function() {
    modal.style.display = "none";
  }
}

export { modalOpen }


