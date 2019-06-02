//= require rails-ujs
//= require jquery
//= require turbolinks
//= require_tree .

import "bootstrap";

import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';
import { conversation, activateConversation } from '../components/conversation';

activateConversation();
conversation();
preSelect();
clearSkills();
skillActive();
toggleGroup();
selectJob();
