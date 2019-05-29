const selectedBtns = document.querySelectorAll('.cat-btn');
const selectedSkills = document.querySelectorAll('.skill-card');

const hideGrids = (data_value, old_value) => {
  if (data_value !== old_value) {
    if (data_value !== 'all') {
      selectedSkills.forEach((element) => {
        element.classList.add('hide-skills');
        document.getElementById(data_value).classList.remove('hide-skills');
      })
    } else {
      selectedSkills.forEach((element) => {
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

export { toggleGroup };

