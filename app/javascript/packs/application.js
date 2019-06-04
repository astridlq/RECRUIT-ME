import "bootstrap";

import { initToggleForm } from '../components/edit_description';
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';
import { skillInfoToggle, infoModal } from '../components/info_skill';

initToggleForm();
autoExpand();
activateConversation();
conversation();
preSelect();
clearSkills();
skillActive();
toggleGroup();
selectJob();
skillInfoToggle();
infoModal();
