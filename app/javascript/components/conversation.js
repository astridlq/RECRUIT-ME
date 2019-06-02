const conversation = () => {
  App.conversation = App.cable.subscriptions.create("ConversationChannel", {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {

      var submit = document.querySelector('.new-message-container');
      submit.insertAdjacentHTML('beforebegin', data['message'])
      displayArea.scrollTop = displayArea.scrollHeight;
    },
    speak: function(message) {
      return this.perform('speak', {
        message: message
      });
    }
  });

  $(document).on('submit', '.new_message', function(e) {
    e.preventDefault();
    var values = $(this).serializeArray();
    if (values[2].value.length < 30) {
      $('.conv-preview')[0].innerText = values[2].value
    } else {
      $('.conv-preview')[0].innerText = `${values[2].value.substr(0, 28)} ...`;
    }
    App.conversation.speak(values);
    $(this).trigger('reset');
  });
}

const activateConversation = () => {
  const convos = document.querySelectorAll('.conversation-box')
  console.log(convos)
  convos.forEach((convo) => {
    convo.addEventListener('click', () => {
      convos.forEach((c) => {
        c.classList.remove('conversation-box-active')
      })
      convo.classList.add('conversation-box-active')
    })
  })
}

// const autoExpand = () => {
//   console.log('dsfdssf')
//   $(document)
//       .one('focus.autoExpand', 'textarea.autoExpand', function(){
//           var savedValue = this.value;
//           this.value = '';
//           this.baseScrollHeight = this.scrollHeight;
//           this.value = savedValue;
//       })
//       .on('input.autoExpand', 'textarea.autoExpand', function(){
//           var minRows = this.getAttribute('data-min-rows')|0, rows;
//           this.rows = minRows;
//           rows = Math.ceil((this.scrollHeight - this.baseScrollHeight) / 16);
//           this.rows = minRows + rows;
//       });
// }

export { conversation, activateConversation }
