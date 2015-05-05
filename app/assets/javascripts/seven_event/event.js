$(function() {
	$('#event_location').locationpicker({
		location: { latitude: $('#event_location').data("latitude"), longitude: $('#event_location').data("longitude") },
		inputBinding: {
			longitudeInput: $(".event_longitude_hidden"),
			latitudeInput: $(".event_latitude_hidden"),
			locationNameInput: $('.event_location_input')			
		},
		enableAutocomplete: true		
	});
});