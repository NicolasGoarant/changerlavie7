var i18n_dates, maxDate, minDate;

i18n_dates = {
  previousMonth: 'Mois précédent',
  nextMonth: 'Mois suivant',
  months: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
  weekdays: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
  weekdaysShort: ['Dim', 'Lun', 'Mar', 'Mer', 'Jeu', 'Ven', 'Sam']
};

maxDate = moment().add(3, 'months').toDate();

minDate = moment().toDate();

window.datePicker = function(e) {
  var elm;
  elm = $($(".datepicker")[0]);
  if (elm !== void 0) {
    return new Pikaday({
      field: $(".datepicker")[0],
      format: 'DD/MM/YYYY',
      minDate: moment(elm.data('mindate')).toDate() || minDate,
      maxDate: moment(elm.data('maxdate')).toDate() || maxDate,
      i18n: i18n_dates
    });
  }
};

window.datePickerRange = function(e) {
  var _endDate, _startDate, endDate, endPicker, startDate, startPicker, updateEndDate, updateStartDate;
  startDate = void 0;
  endDate = void 0;
  updateStartDate = function() {
    startPicker.setStartRange(startDate);
    endPicker.setStartRange(startDate);
    endPicker.setMinDate(startDate);
  };
  updateEndDate = function() {
    startPicker.setEndRange(endDate);
    startPicker.setMaxDate(endDate);
    endPicker.setEndRange(endDate);
  };
  startPicker = new Pikaday({
    field: document.getElementsByClassName('start_at')[0],
    format: 'DD/MM/YYYY',
    minDate: minDate,
    maxDate: maxDate,
    i18n: i18n_dates,
    onSelect: function() {
      startDate = this.getDate();
      updateStartDate();
    }
  });
  endPicker = new Pikaday({
    field: document.getElementsByClassName('end_at')[0],
    format: 'DD/MM/YYYY',
    minDate: minDate,
    maxDate: maxDate,
    i18n: i18n_dates,
    onSelect: function() {
      endDate = this.getDate();
      updateEndDate();
    }
  });
  _startDate = startPicker.getDate();
  _endDate = endPicker.getDate();
  if (_startDate) {
    startDate = _startDate;
    updateStartDate();
  }
  if (_endDate) {
    endDate = _endDate;
    return updateEndDate();
  }
};
