//= require rails-ujs
//= require jquery
//= require turbolinks
//= require_tree .

import "bootstrap";

import { toggleGroup, skillActive, clearSkills, selectJob } from '../components/profile_search';
import { initToggleForm } from '../components/edit_description';
import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation, autoExpand } from '../components/conversation';

autoExpand();
activateConversation();
conversation();
preSelect();
clearSkills();
skillActive();
toggleGroup();
selectJob();


