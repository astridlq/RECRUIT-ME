
const change = (event) => {
const description = document.getElementById('description')
  // console.log(description)
  if (description.style.display === "block") {
    description.style.display = "none";
  } else {
    description.style.display = "block";
  }
const edit = document.getElementById('description-form')
  // console.log(edit)
  if (edit.style.display === "none") {
    edit.style.display = "block";
  } else {
    edit.style.display = "none";
  }
}
const initToggleForm = () => {
  const edit = document.getElementById('edit-description');
    edit.addEventListener("click", change);


}




export {initToggleForm};
