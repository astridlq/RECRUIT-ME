import "bootstrap";

import { initToggleForm } from '../components/edit_description';
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';

initToggleForm();
autoExpand();
activateConversation();
conversation();
preSelect();
clearSkills();
skillActive();
toggleGroup();
selectJob();
