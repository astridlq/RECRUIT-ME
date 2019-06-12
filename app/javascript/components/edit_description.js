const change = (event) => {
  const description = document.getElementById('description');
  const edit = document.getElementById('description-form')

  description.classList.toggle("display-block");
  edit.classList.toggle("display-block");
}

const initToggleForm = () => {
  const edit = document.getElementById('edit-description');
  if (edit === null) return;
  edit.addEventListener("click", change);
}

export {initToggleForm};
