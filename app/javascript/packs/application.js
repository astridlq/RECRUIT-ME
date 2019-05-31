//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

import "bootstrap";

import { toggleGroup, skillActive, clearSkills, selectJob, preSelect } from '../components/profile_search';

preSelect();
clearSkills();
skillActive();
toggleGroup();
selectJob();
