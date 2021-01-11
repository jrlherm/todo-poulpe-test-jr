import flatpickr from 'flatpickr'

const initFlatpickr = () => {

  const datePicker = document.querySelector('.datepicker');

  if (datePicker) {
    flatpickr(".datepicker", {
      minDate: "today",
      altInput: true,
      altFormat: "j F Y",
      dateFormat: "Y-m-d"
    });
  }
}

export { initFlatpickr }
