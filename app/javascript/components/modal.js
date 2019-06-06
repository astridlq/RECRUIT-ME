const getQueryAll = (str) => {
  return document.querySelectorAll(str);
}

const getQuery = (str) => {
  return document.querySelector(str);
}

const getElem = (str) => {
  return document.getElementById(str);
}


const messageModal = (id) => {
  var messageField = getElem(`message-field-${id}`);
  getElem(`sendBtn${id}`).onclick = function() {
    messageField.value = ""
    getElem(`sendMessageModal${id}`).style.display = "block";
    messageField.focus();
  }
  getQuery(`.modal-cancel-${id}`).onclick = function() {
    getElem(`sendMessageModal${id}`).style.display = "none";
  }
  getQuery(`.modal-submit-${id}`).onclick = function() {
    getElem(`sendMessageModal${id}`).style.display = "none";
  }
}

const multiModal = (str) => {
  getQueryAll(str).forEach((modal) => {
    var id = modal.firstElementChild.dataset.id
    var messageField = getElem(`message-field-${id}`);
    messageModal(id);
  })
}

const singleModal = (str) => {
    var id = getQuery(str).dataset.id
    var messageField = getElem(`message-field-${id}`);
    messageModal(id);
}

const alertModal = () => {
  getElem('alert-Btn').onclick = function() {
    getElem('AlertModal').style.display = "block";
  }
  getQuery('.modal-alert-cancel').onclick = function() {
    getElem('AlertModal').style.display = "none";
  }
  getQuery('.modal-alert-submit').onclick = function() {
    getElem('AlertModal').style.display = "none";
  }
}

export { multiModal, singleModal, alertModal }


