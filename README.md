# Start-NewOutlook

<!-- BADGES:START -->
![License](https://img.shields.io/github/license/5a9awneh/Start-NewOutlook?style=for-the-badge) ![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white) ![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white) ![Last Commit](https://img.shields.io/github/last-commit/5a9awneh/Start-NewOutlook?style=for-the-badge)
<!-- BADGES:END -->

Automatically launches New Outlook (Microsoft Store version) on Windows startup. Drop the files into your Startup folder and New Outlook will launch silently every time you log in.

## ⚙️ Requirements

- Windows 10 or 11
- New Outlook installed from the Microsoft Store (package: `Microsoft.OutlookForWindows`)

## 🚀 Usage

1. Copy both `Start-NewOutlook.bat` and `Start-NewOutlook.ps1` into your Startup folder:
   ```
   shell:startup
   ```
   (Paste that into the Run dialog — `Win+R` — to open it directly)
2. Log out and back in, or restart — New Outlook will launch automatically

The `.bat` file is the entry point. It runs the `.ps1` silently (no console window) using a relative path, so both files must stay in the same folder.

## ⚙️ How It Works

1. Waits 5 seconds on launch (allows the login/desktop to settle before starting)
2. Checks if `Microsoft.OutlookForWindows` is installed via `Get-AppxPackage`
3. If found, launches it via its `shell:AppsFolder` URI
4. If not found, exits silently — no error, no prompt

## 📝 Notes

- Targets **New Outlook** (Store version) only — classic `OUTLOOK.EXE` is not supported
- The 5-second delay is intentional; removing it may cause the launch to fail on slower systems at login
