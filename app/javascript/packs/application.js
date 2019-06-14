import "bootstrap";
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation } from '../components/conversation';
import { multiModal, singleModal, alertModal } from '../components/modal';
import { loadDynamicBannerText } from '../components/hp_title.js';
import { initToggleForm } from '../components/edit_description';
import { skillInfoToggle } from '../components/info_skill';

const profileRegEx = /^\/profiles\/\d+$/;
const vacancyRegEx = /^\/vacancies\/\d+$/;

// conversation();

switch (location.pathname) {
  case '/conversations':
    activateConversation();
    break;
  case '/profiles/search':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
    skillInfoToggle();
    break;
  case '/vacancies/search':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
    skillInfoToggle();
    break;
  case '/myprofile':
    initToggleForm();
    break;
  case '/myprofile/edit_user_skills':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
    skillInfoToggle();
    break;
  case '/myprofile/edit_develop_skills':
    preSelect();
    clearSkills();
    skillActive();
    toggleGroup();
    selectJob();
    skillInfoToggle();
    break;
  default:
}

conversation();


if (document.querySelector('.banner-typed-text')) {
  loadDynamicBannerText();
}

if (location.pathname.match(vacancyRegEx)) {
  skillInfoToggle();
  multiModal('.modal-container');
  alertModal();
}

if (location.pathname.match(profileRegEx)) {
  skillInfoToggle();
  singleModal('.modal');
}
