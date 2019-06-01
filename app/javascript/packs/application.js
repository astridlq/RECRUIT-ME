import "bootstrap";

import { toggleGroup, skillActive, clearSkills, selectJob } from '../components/profile_search';
import { initToggleForm } from '../components/edit_description';
initToggleForm();
clearSkills();
skillActive();
toggleGroup();
selectJob();


