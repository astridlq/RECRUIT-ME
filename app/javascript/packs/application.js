//= require rails-ujs
//= require jquery
//= require turbolinks
//= require_tree .

import "bootstrap";

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
