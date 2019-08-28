// event listener sur le click du edit_button
const button = document.querySelector('#edit-button');
button.addEventListener('click', (event) => {
  console.log(event);
});

// ajouter un text field avec bouton send

// event listener sur le bouton send

// enregistrer le text au bon endroit dans html view

// si possible dans les deux locales en/fr


const button = document.querySelector('#edit-button');
button.addEventListener('click', (event) => {
  const place = document.querySelectorAll('.edit-place');
  place.forEach(function(element) {
    element.insertAdjacentHTML('beforeend', <%= simple_form_for(@piece) do |f| %><%= f.input :name, label: "Nom", placeholder: "2040 - Galerie de la Galaxie, Univers" %><%= f.input :section, as: :radio_buttons, collection: Bioelement::SECTIONS, label: "Section", wrapper: :horizontal_collection_inline %><%= f.submit "Envoyer", class: "btn btn-primary" %><% end %>');
  });
});


const send_button = document.querySelectorAll('.send');
  send_button.forEach(function(element) {
    element.insertAdjacentHTML('beforeend', '<input type="submit" value="Enregistrer" class="send-button">');
    element.classList.remove('hidden');
  });
  const send = document.querySelectorAll('.send-button');
  send.forEach(function(element) {
    element.addEventListener('click', (event) => {
      const input = document.querySelectorAll('.bio-new-entry');
      place.forEach(function(element) {
        element.insertAdjacentHTML('beforeend', 'input');
      });
    });
  });
