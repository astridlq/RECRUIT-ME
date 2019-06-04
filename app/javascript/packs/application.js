import "bootstrap";

import { initToggleForm } from '../components/edit_description';
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';
import { skillInfoToggle } from '../components/info_skill';

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
