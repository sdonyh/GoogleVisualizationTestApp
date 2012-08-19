GoogleVisualizationTestApp
==========================

This is a simple test app for google visualization plugin (0.5.5) integrated with jQuery UI sortable (portlet).
Currently there are some charts that disappear when performing a drag-and-drop event using jQuery UI sortable.
This is due to a change in google visualization api option where google added forceIFrame to default value true.

See the following release not from google: https://developers.google.com/chart/interactive/docs/release_notes

A new implementation was added to the google visualization plugin (0.5.5) to override forceIFrame to set it to false.
By setting the value to false, the jQuery sortable works properly and the charts doesn't disappear upon drag-and-drop event.

To run this app just use this command:
grails run-app
