[github-repository-link]: https://github.com/EsQLap/windows-repairer
[google-repair-windows-request]: https://www.google.com/search?q=Repair+Windows

# Windows Repairer: Simple Windows recovery script

A simple batch script that restores damaged Windows system files using the operating system's built-in tools.

## ⚒️ Windows tools list

- System File Checker (SFC);
- Deployment Image Servicing and Management (DISM);
- CHKDSK.

## 📝 How to use it?
- Download the file under the code button from [GitHub][github-repository-link] as a **ZIP** archive;
- Right-click on the downloaded zip file and extract;
- In the extracted folder, find the file named ```WindowsRepairScript.bat``` and run it;
- Click ```Yes``` in the system dialog window with admin privileges request;
- Follow the on-screen instructions;
- Rejoice 🥳.

## 🛡️ Security guarantees
This script is open source and does not use any third-party tools that are not built into the Windows operating system.
If you don't believe me, just open the script with Notepad and check it line by line, there's not much code there.
In essence, this script only sequentially calls commands in the command line, which you could easily find on the
Internet, for example, by searching for ["Repair Windows"][google-repair-windows-request] ¯\_(ツ)_/¯.
