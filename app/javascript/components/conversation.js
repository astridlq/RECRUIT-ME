const conversation = () => {
  App.conversation = App.cable.subscriptions.create("ConversationChannel", {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {

    // make envelope red for notification
    var userId = document.getElementById('conv-user-id').dataset.userId
    if (userId != data.user_id && location.pathname !== '/conversations') {
      document.querySelector('.fa-envelope').classList.add('mail-active')
    }else if (location.pathname === '/conversations' && data.is_new) {
      document.querySelector('.fa-envelope').classList.add('mail-active')
    }

    // get raw text for preview
    var rawText = data['message'].split('<p>')[1].split('</p>')[0];
    if (rawText.length > 30) {
      rawText = `${rawText.substring(0, 27)}...`;
    }

    var conId = data['conversation_id'].toString()

    // add new convo box if new convo
    if (data.is_new && location.pathname === '/conversations') {
      document.querySelector('.conversation-bar').insertAdjacentHTML('afterbegin', `
        <a data-remote="true" href="/conversations/${conId}">
          <div class="conversation-box conversation-box-new">
              <img height="70" width="70" class="avatar" src="${data.sender_photo}">
            <div class="conv-box">
              <div class="conv-box-top">
                <p class="conv-user-name">${data.sender_name}</p>
                <p class="conv-time">${data.sent_at}</p>
              </div>
              <p class="conv-preview conv-preview-4">
              ${rawText}
              </p>
            </div>
          </div>
        </a>`)
      activateConversation();
    } else if (location.pathname === '/conversations') {
        // code for adding to message preveiw
        document.querySelector(`.conv-preview-${conId}`).innerText = rawText

      // add content to conversation if it's open
      if (document.querySelector('.new-message-container') && document.querySelector('.conversation-box-active').querySelector(`.conv-preview-${conId}`)) {
        console.log('submitting')
        var submit = document.querySelector('.new-message-container');
        submit.insertAdjacentHTML('beforebegin', data['message'])
        displayArea.scrollTop = displayArea.scrollHeight;
      } else {
         // convo is not open
         document.querySelector(`.conv-preview-${conId}`).parentElement.parentElement.classList.add('conversation-box-new')
          console.log(document.querySelector(`.conv-preview-${conId}`).parentElement.parentElement)
           if (userId != data.user_id) {
              document.querySelector('.fa-envelope').classList.add('mail-active')
            }
          }
        }
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
      document.querySelector('.conversation-box-active').querySelector('.conv-preview').innerText = values[2].value
    } else {
      document.querySelector('.conversation-box-active').querySelector('.conv-preview').innerText = `${values[2].value.substr(0, 28)} ...`;
    }
    App.conversation.speak(values);
    $(this).trigger('reset');
  });
}

const activateConversation = () => {
  const convos = document.querySelectorAll('.conversation-box')
  console.log(convos);
  convos.forEach((convo) => {
    convo.addEventListener('click', () => {
      console.log('clicked');
      convos.forEach((c) => {
        c.classList.remove('conversation-box-active')
      })
      convo.classList.add('conversation-box-active')
      convo.classList.remove('conversation-box-new')
      if (document.querySelector('.conversation-box-new') == null) {
        document.querySelector('.fa-envelope').classList.remove('mail-active')
      }
    })
  })
}

const autoExpand = () => {
  $(document)
      .one('focus.autoExpand', 'textarea.autoExpand', function(){
          var savedValue = this.value;
          this.value = '';
          this.baseScrollHeight = this.scrollHeight;
          this.value = savedValue;
      })
      .on('input.autoExpand', 'textarea.autoExpand', function(){
          var minRows = this.getAttribute('data-min-rows')|0, rows;
          this.rows = minRows;
          rows = Math.ceil((this.scrollHeight - this.baseScrollHeight) / 16);
          this.rows = minRows + rows;
      });
}

export { conversation, activateConversation, autoExpand }
