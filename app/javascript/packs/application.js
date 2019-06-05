import "bootstrap";
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';
import { modalOpen } from '../components/modal';
import { loadDynamicBannerText } from '../components/hp_title.js';
import { initToggleForm } from '../components/edit_description';
import { skillInfoToggle } from '../components/info_skill';

const profileRegEx = /^\/profiles\/\d+$/;

// conversation();

switch (location.pathname) {
  case '/conversations':
    autoExpand();
    activateConversation();
    break;
  case '/profiles/search':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
    break;
  case '/vacancies/search':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
  default:
    break;
}

conversation();
skillInfoToggle();
initToggleForm();


if (location.pathname.match(profileRegEx)) {
  modalOpen();
}

if (document.querySelector('.banner-typed-text')) {
  loadDynamicBannerText();
};
