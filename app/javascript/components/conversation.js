const selectors = {
  envelope:  document.querySelector('.fa-envelope'),
  conversationBar: document.querySelector('.conversation-bar'),
  newMessContain: document.querySelector('.new-message-container'),
  convActive: document.querySelector('.conversation-box-active'),
  convBoxNew: document.querySelector('.conversation-box-new')
}

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


    // add new convo box if new convo
    var conId = data['conversation_id'].toString()

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
      // run this func again to pick up newly entered convo box
      activateConversation();
    } else if (location.pathname === '/conversations') {
        // code for adding to message preview
        document.querySelector(`.conv-preview-${conId}`).innerText = rawText

      // add content to conversation if it's open
      if (document.querySelector('.new-message-container') && document.querySelector('.conversation-box-active').querySelector(`.conv-preview-${conId}`)) {
        var submit = document.querySelector('.new-message-container');
        submit.insertAdjacentHTML('beforebegin', data['message'])
        displayArea.scrollTop = displayArea.scrollHeight;
      } else {
         // if convo is not already open make envelope red
         document.querySelector(`.conv-preview-${conId}`).parentElement.parentElement.classList.add('conversation-box-new')
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

  // add to preveiw text in convo box as it's being populated
  // and reset text in textfield
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
  if (document.querySelector('.conversation-box-new') == null) {
        document.querySelector('.fa-envelope').classList.remove('mail-active')
      } else {
        document.querySelector('.fa-envelope').classList.add('mail-active')
      }
  convos.forEach((convo) => {
    convo.addEventListener('click', () => {
      convos.forEach((c) => {
        c.classList.remove('conversation-box-active')
      })
      convo.classList.add('conversation-box-active')
      convo.classList.remove('conversation-box-new')
      if (document.querySelector('.conversation-box-new') == null) {
        document.querySelector('.fa-envelope').classList.remove('mail-active')
      } else {
        document.querySelector('.fa-envelope').classList.add('mail-active')
      }
    })
  })
}

export { conversation, activateConversation }
