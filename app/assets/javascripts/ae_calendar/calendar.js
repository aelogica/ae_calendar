$(function() {
  console.log('Calendar is called')
  $("#calendar").fullCalendar({
    height: 800,
    header: { left: null, center: 'title' },
    events: function(start, end, callback) {
      $.ajax({
        url: "/calendar/calendars",
        dataType: 'json',
        data: {
          start: Math.round(start.getTime() / 1000),
          end: Math.round(end.getTime() / 1000)
        },
        success: function(events) {
          callback(events);
        }
      });
    }
  });
});
