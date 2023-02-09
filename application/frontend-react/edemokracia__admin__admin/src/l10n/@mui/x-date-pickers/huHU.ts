// This is a temporary workaround until https://github.com/mui/mui-x/pull/7776 is merged
export const huHU: any = {
  components: {
    MuiLocalizationProvider: {
      defaultProps: {
        localeText: {
          previousMonth: 'Előző hónap',
          nextMonth: 'Következő hónap',
          openPreviousView: 'Előző nézet megnyitása',
          openNextView: 'Következő nézet megnyitása',
          cancelButtonLabel: 'Mégse',
          clearButtonLabel: 'Törlés',
          okButtonLabel: 'OK',
          todayButtonLabel: 'Ma',
          start: 'Kezdő dátum',
          end: 'Záró dátum',
          calendarViewSwitchingButtonAriaLabel: (view: any) =>
            view === 'year'
              ? 'az évválasztó már nyitva, váltson a naptárnézetre'
              : 'a naptárnézet már nyitva, váltson az évválasztóra',
          inputModeToggleButtonAriaLabel: (isKeyboardInputOpen: boolean, viewType: 'calendar' | 'clock') => undefined,
          clockLabelText: (view: any, time: any, adapter: any) =>
            `${view} kiválasztása. ${
              time === null ? 'Nincs idő kiválasztva' : `A kiválasztott idő ${adapter.format(time, 'fullTime')}`
            }`,
          hoursClockNumberText: (hours: string) => `${hours} óra`,
          minutesClockNumberText: (minutes: string) => `${minutes} perc`,
          secondsClockNumberText: (seconds: string) => `${seconds} másodperc`,
          openDatePickerDialogue: (value: any, utils: any) =>
            value !== null && utils.isValid(value)
              ? `Válasszon dátumot, a kiválasztott dátum: ${utils.format(value, 'fullDate')}`
              : 'Válasszon dátumot',
          openTimePickerDialogue: (value: any, utils: any) =>
            value !== null && utils.isValid(value)
              ? `Válasszon időt, a kiválasztott idő: ${utils.format(value, 'fullTime')}`
              : 'Válasszon időt',
          timeTableLabel: 'válasszon időt',
          dateTableLabel: 'válasszon dátumot',
          datePickerDefaultToolbarTitle: 'Dátum kiválasztása',
          dateTimePickerDefaultToolbarTitle: 'Dátum és idő kiválasztása',
          timePickerDefaultToolbarTitle: 'Idő kiválasztása',
          dateRangePickerDefaultToolbarTitle: 'Dátumhatárok kiválasztása',
          datePickerToolbarTitle: 'Dátum kiválasztása',
          dateTimePickerToolbarTitle: 'Dátum és idő kiválasztása',
          timePickerToolbarTitle: 'Idő kiválasztása',
          dateRangePickerToolbarTitle: 'Dátumhatárok kiválasztása',
          calendarWeekNumberHeaderLabel: 'Hét',
          calendarWeekNumberHeaderText: '#',
          calendarWeekNumberAriaLabelText: (weekNumber: number) => `${weekNumber}. hét`,
          calendarWeekNumberText: (weekNumber: number) => `${weekNumber}`,
          fieldYearPlaceholder: (params: any) => 'É'.repeat(params.digitAmount),
          fieldMonthPlaceholder: (params: any) => (params.contentType === 'letter' ? 'HHHH' : 'HH'),
          fieldDayPlaceholder: () => 'NN',
          fieldHoursPlaceholder: () => 'óó',
          fieldMinutesPlaceholder: () => 'pp',
          fieldSecondsPlaceholder: () => 'mm',
          fieldMeridiemPlaceholder: () => 'd(e|u)',
        },
      },
    },
  },
};
