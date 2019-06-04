import "bootstrap";

import { loadDynamicBannerText } from '../components/hp_title.js';


import { initToggleForm } from '../components/edit_description';
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';
import { skillInfoToggle } from '../components/info_skill';

if (document.querySelector('.banner-typed-text')) {
  loadDynamicBannerText();
};

skillInfoToggle();
initToggleForm();
autoExpand();
activateConversation();
conversation();
preSelect();
clearSkills();
skillActive();
toggleGroup();
selectJob();
infoModal();
