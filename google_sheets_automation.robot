*** Settings ***
Library    RPA.Google.Sheets

*** Variables ***
${SPREADSHEET_ID}    1N22ec1za-467slu3TBl6LWtcACa9_DmjlQ28cyIm65Q
${SHEET1}            Sheet1
${SHEET2}            Sheet2

*** Tasks ***
Copy Data From Sheet 1 to Sheet 2
    # Authorize Google Sheets API
    Open Workbook    ${SPREADSHEET_ID}

    # Read all data from Sheet 1
    ${sheet1_data}=  Read Worksheet As Table    ${SHEET1}

    # Clear Sheet 2 before pasting
    Clear Worksheet  ${SHEET2}

    # Write the copied data into Sheet 2
    Write Worksheet  ${SHEET2}    ${sheet1_data}

    # Save the spreadsheet
    Save Workbook
