import flatpickr from 'flatpickr'

const initFlatpickr = () => {

  const datePicker = document.querySelector('.datepicker');

  if (datePicker) {
    flatpickr(".datepicker", {
      minDate: "today",
      dateFormat: "d/m/Y",
      disableMobile: true
    });
  }
}

export { initFlatpickr }


// flatpickr(".datepicker", {
//   altInput: true,
//   altFormat: "j F Y",
//   dateFormat: "Y-m-d",
// });
