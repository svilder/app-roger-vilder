import "bootstrap";
import { previewImageOnFileSelect } from '../components/photo_previews';
previewImageOnFileSelect();

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();



const button = document.querySelector('#edit-button');
button.addEventListener('click', (event) => {
  const place = document.querySelectorAll('.edit-place');
  place.forEach(function(element) {
    element.insertAdjacentHTML('beforeend', '<br><input type="text" class="bio-new-entry" size="80">');
  });
  const send_button = document.querySelectorAll('.send');
  send_button.forEach(function(element) {
    element.insertAdjacentHTML('beforeend', '<input type="submit" value="Enregistrer" class="send-button">');
    element.classList.remove('hidden');
  });
});

const send = document.querySelectorAll('.send-button');
send.forEach(function(element) {
  element.addEventListener('click', (event) => {
    const input = document.querySelectorAll('.bio-new-entry').innerText;
    console.log(input);
  });
});


input.forEach(function(element) {
      element.insertAdjacentHTML('beforeend', '<br> input');
    });
