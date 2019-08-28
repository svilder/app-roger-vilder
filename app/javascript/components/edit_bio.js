// event listener sur le click du edit_button
const button = document.querySelector('#edit-button');
button.addEventListener('click', (event) => {
    // Callback
  event.currentTarget.innerText = 'Hold still...';
  event.currentTarget.setAttribute("disabled", "");
});

// ajouter un text field avec bouton send

// event listener sur le bouton send

// enregistrer le text au bon endroit dans html view

// si possible dans les deux locales en/fr
