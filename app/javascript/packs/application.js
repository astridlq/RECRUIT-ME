//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

import "bootstrap";

import { toggleGroup, skillActive, clearSkills, selectJob } from '../components/profile_search';

clearSkills();
skillActive();
toggleGroup();
selectJob();
