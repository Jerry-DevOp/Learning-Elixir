# Linux - Windows Commands

|Action|Linux|Windows Powershell
|---|---|---|
|**View all the network ports**   |1. Use this command `ss -a`, alternatively Install netstat, use the command `sudo apt instal net-tools`. Netstat is deprecated, that is why you had to install it, Use this command `netstat -a`,   |Run Powershell as Administrator. Then use this command `netstat -ab`    |
|**How to filter**|Use this command `grep <keywords>`.To view other uses of the grep type `grep --help`|Use this command `select-string`
|**View listening ports**|Command `ss -a \|grep -i "listen"` |Use `netstat -ab \| select-string "listen"` 
|**List all the ip addresses**|Use `ip a`|Use `ipconfig`
