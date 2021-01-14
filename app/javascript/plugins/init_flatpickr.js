import flatpickr from 'flatpickr'

const initFlatpickr = () => {

  const datePicker = document.querySelector('.datepicker');

  if (datePicker) {
    destroy()
    flatpickr(".datepicker", {
      minDate: "today",
      altInput: true,
      altFormat: "d/m/Y",
      dateFormat: "Y-m-d"
    });
  }
}

export { initFlatpickr }
