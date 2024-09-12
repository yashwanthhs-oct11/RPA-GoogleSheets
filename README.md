# RPA-GoogleSheets

## Overview

This project automates data transfer between two sheets in a Google Spreadsheet using an open-source RPA tool. The automation opens a Google Spreadsheet, copies data from **Sheet 1**, and pastes it into **Sheet 2**. The task is scheduled to run daily without manual intervention.

## Tool Selection

### Initial Tool: **TagUI**
I initially chose **TagUI** for this task because:
- **TagUI** is a lightweight, open-source RPA tool with excellent documentation.
- It supports automation across various applications, including web browsers, desktop applications, and Google Sheets.
- It offers a simple, readable syntax, making it user-friendly and easy to set up.

However, I encountered multiple issues while running the automation flow with **PhantomJS**:
- **PhantomJS** was causing inconsistent errors during the execution of headless browser tasks.

Due to these challenges, I decided to switch to **Robot Framework**, which offers a more robust and reliable solution for this task.

### Final Tool: **Robot Framework with rpaframework**
After researching alternative open-source RPA tools, I selected **Robot Framework** because:
- It is highly extensible with multiple libraries, including the **RPA Framework** for handling Google Sheets.
- It provides a more stable environment for integrating with external APIs like Google Sheets, reducing the number of errors encountered during the automation process.
- **Robot Framework** has a well-established ecosystem and is widely used for test automation and robotic process automation (RPA).

## Installation & Setup

### Prerequisites

Before running the project, ensure you have the following installed:
- **Python 3.x** (Below 3.11 due to some compatibility issues)
- **Pip** (Python package manager)
- **Robot Framework** and its libraries

### Installing Dependencies

1. Clone the repository:

   ```bash
   git clone https://github.com/yashwanthhs-oct11/google-sheets-automation.git
   cd google-sheets-automation
   ```

2. Install the required Python libraries:

   ```bash
   pip install -r requirements.txt
   ```

3. Install **rpaframework** for Google Sheets integration:

   ```bash
   pip install rpaframework
   ```

4. Ensure you're running a compatible version of Python (below 3.11):

   ```bash
   python --version
   ```

   If necessary, downgrade Python:

   ```bash
   # Uninstall current version and install Python 3.10.x
   ```

### Common Errors and Fixes

- **Error 1: ModuleNotFoundError for 'RPA' library**:
  This occurred when I initially ran the script. The error was fixed by installing the **rpaframework** library, which includes support for interacting with Google Sheets:

  ```bash
  pip install rpaframework
  ```

- **Error 2: Issues with PhantomJS**:
  PhantomJS was causing errors when running the script in headless mode during TagUI automation. This was a primary reason for switching to **Robot Framework**.

### Running the Script

After setting up the environment, you can run the automation script with the following command:

```bash
robot google_sheets_automation.robot
```

The script performs the following tasks:
1. **Opens a Google Spreadsheet** with dummy data.
2. **Copies data from Sheet 1** and **pastes it into Sheet 2**.
3. **Scheduled to run daily** at a fixed time without manual intervention.

## Scheduling the Automation

To schedule the automation to run daily, follow these steps:

1. Open **Task Scheduler** from the Windows search menu.
2. Create a new task and provide a name for the task.
3. In the **Actions** tab, select **New** and set the action to start a program.
4. Browse for the location of your `robot.exe` and set the arguments to run your `google_sheets_automation.robot` script.
5. In the **Triggers** tab, schedule the task to run daily at a specific time.

Once set up, the script will automatically execute every day.
