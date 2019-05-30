const selectedBtns = document.querySelectorAll('.cat-btn');
const selectedSkillCards = document.querySelectorAll('.skill-card');
const skills = document.querySelectorAll('.skill-grid-item');
const clear_hard = document.getElementById('clear-hard')
const clear_soft = document.getElementById('clear-soft')
const clear_key = document.getElementById('clear-key')
const clear_all = document.getElementById('clear-all')
const jobs = document.querySelectorAll('.check-box');
const selectionCollection = document.getElementById('selection-collection')
const skillLabels = document.querySelectorAll('.hidden')
const jobNameContainer = document.querySelector('.job-name-container')

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

let jobNumArray = [];
let jobNameArray = [];
const objArr = {};

const addToJobNumArray = () => {
  jobNumArray = [];
  Object.entries(objArr).forEach((element) => {
    if (element[1] > 0 && !jobNumArray.includes(element[0])) {
      jobNumArray.push(element[0]);
    }
  })
}

const convertToNameArray = () => {
  jobNameArray = [];
  jobNumArray.forEach((e) => {
    const name = document.getElementById(`skill-item-${e}`).nextSibling.nextSibling.firstElementChild.firstElementChild.innerText
     if (!jobNameArray.includes(name)) {
        jobNameArray.push(name);
     }
  })
}

const addToSelection = () => {
  console.log(jobNameArray)
  jobNameContainer.innerHTML = `<div id="selection-collection"></div>`
  jobNameArray.forEach((name) => {
    document.getElementById('selection-collection').insertAdjacentHTML('afterend', `<p class='skill-selection'>${name}<p>`)
    console.log(name)
  })
}

const inject = (action) => {
  addToJobNumArray();
  convertToNameArray();
  addToSelection();
}

const skillActive = () => {
  skillLabels.forEach((skill) => {
    skill.addEventListener("change", (event) => {
      event.currentTarget.nextSibling.nextSibling.classList.toggle("active-skill")
      if (event.currentTarget.nextSibling.nextSibling.classList.contains("active-skill")) {
        objArr[event.currentTarget.value] = 1
        inject();
      } else {
        objArr[event.currentTarget.value] = 0
        inject();
      }
    });
  })
};

const clearSkills = () => {
  clear_hard.addEventListener("click", () => {
    document.querySelectorAll('.hard').forEach((element) => {
      if (element.classList.contains("active-skill")) {
        objArr[element.previousElementSibling.value] = 0;
      }
      element.classList.remove("active-skill");
      element.previousElementSibling.checked = false;
    })
    inject();
  });
  clear_soft.addEventListener("click", () => {
    document.querySelectorAll('.soft').forEach((element) => {
      if (element.classList.contains("active-skill")) {
        objArr[element.previousElementSibling.value] = 0;
      }
      element.classList.remove("active-skill");
      element.previousElementSibling.checked = false;
    })
    inject();
  });
  clear_key.addEventListener("click", () => {
    document.querySelectorAll('.key').forEach((element) => {
      if (element.classList.contains("active-skill")) {
        objArr[element.previousElementSibling.value] = 0;
      }
      element.classList.remove("active-skill");
      element.previousElementSibling.checked = false;
    })
    inject();
  });
  clear_all.addEventListener("click", () => {
    skills.forEach((element) => {
      if (element.classList.contains("active-skill")) {
        objArr[element.previousElementSibling.value] = 0;
      }
      element.classList.remove("active-skill");
      element.previousElementSibling.checked = false;
    })

    jobs.forEach((job) => {
      job.parentElement.parentElement.classList.remove("job-active")
      job.checked = false;
    });
    inject();
  });
}

const selectJob = () => {
  jobs.forEach((job) => {
    job.addEventListener("change", (event) => {
      if (event.currentTarget.checked) {
        const arr = Array.from(event.currentTarget.parentElement.getElementsByClassName('job-skills'))
        for (let i=0; i < arr.length; i++) {
          arr[i] = arr[i].value;
        }
        arr.forEach((n) => {
          const skill = document.getElementById(`skill-item-${n}`)
          skill.nextSibling.nextSibling.classList.add("active-skill")
          skill.checked = true
          objArr[n] == null ? objArr[n] = 1 : objArr[n] += 1;
        })
        event.currentTarget.parentElement.parentElement.classList.add("job-active")
        inject();
      } else {
        const arr = Array.from(event.currentTarget.parentElement.getElementsByClassName('job-skills'))
        for (let i=0; i < arr.length; i++) {
          arr[i] = arr[i].value;
        }
        arr.forEach((n) => {
          objArr[n] -= 1;
        })
        event.currentTarget.parentElement.parentElement.classList.remove("job-active")
        inject();
      }

      Object.entries(objArr).forEach((entry) => {
        if (entry[1] === 0) {
          const skill = document.getElementById(`skill-item-${entry[0]}`);
          skill.checked = false;
          console.log("here")
          skill.nextSibling.nextSibling.classList.remove("active-skill")
        }
      })
    })
  })
}

export { toggleGroup, skillActive, clearSkills, selectJob };
