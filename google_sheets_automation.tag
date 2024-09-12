// Start automation by opening Chrome
chrome https://docs.google.com/spreadsheets/d/ 1N22ec1za-467slu3TBl6LWtcACa9_DmjlQ28cyIm65Q/edit

// Wait for the spreadsheet to load
wait 5 seconds

// Run the Google Apps Script by visiting the script URL
chrome "AKfycby602Tck6wDphJHLkzUzD5OYb2z1as6we9LlZampllk"

// Wait for the script to execute
wait 5 seconds

// Close the browser
close
