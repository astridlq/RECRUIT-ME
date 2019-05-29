const selectedBtns = document.querySelectorAll('.cat-btn');
const selectedSkillCards = document.querySelectorAll('.skill-card');
const skills = document.querySelectorAll('.skill-grid-item');

const hideGrids = (data_value, old_value) => {
  if (data_value !== old_value) {
    if (data_value !== 'all') {
      selectedSkillCards.forEach((element) => {
        element.classList.add('hide-skills');
        document.getElementById(data_value).classList.remove('hide-skills');
      })
    } else {
      selectedSkillCards.forEach((element) => {
        element.classList.remove('hide-skills');
      })
    }
  }
}

const toggleGroup = () => {
  selectedBtns.forEach((element) => {
    element.addEventListener("click", (event) => {
      const old_value = document.querySelector('.cat-btn-active').dataset.value;
      selectedBtns.forEach((e) => {
        e.classList.remove('cat-btn-active');
      })
      event.currentTarget.classList.toggle('cat-btn-active');
      hideGrids(document.querySelector('.cat-btn-active').dataset.value, old_value);
    })
  });
}

const skillActive = () => {
  console.log(skills);
  skills.forEach((skill) => {
    skill.addEventListener("click", (event) => {
      event.preventDefault();
      if (event.currentTarget.classList.contains("active-skill")) {
        event.currentTarget.classList.remove("active-skill");
        event.currentTarget.firstElementChild.checked = false;
      }
      else {
        event.currentTarget.classList.add("active-skill");
        event.currentTarget.firstElementChild.checked = true;
      }
    });
  })
};

export { toggleGroup, skillActive };

