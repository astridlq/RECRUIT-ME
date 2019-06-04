import "bootstrap";
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';
import { modalOpen } from '../components/modal';

const profileRegEx = /^\/profiles\/\d+$/;

// conversation();

switch (location.pathname) {
  case '/conversations':
    autoExpand();
    activateConversation();
    conversation();
    break;
  case '/profiles/search':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
    break;
  default:
    conversation();

}

if (location.pathname.match(profileRegEx)) {
  modalOpen();
}
