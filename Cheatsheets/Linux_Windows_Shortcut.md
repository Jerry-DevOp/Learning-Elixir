# Linux - Windows Commands

|Action|Linux|Windows Powershell
|---|---|---|
|**View all the network ports**   |1. Install netstat use `sudo apt instal net-tools`. Then use the command `netstat -a`, Netstat is deprecated, that is why you had to install it, `ss -a` is now used in it's place  |Run Powershell as Administrator. The run `netstat -ab`    |
|**How to filter**|Use `grep <keywords>`.To view other uses of the grep type `grep --help`|Use `select-string`
|**View listening ports**|Command `ss -a | grep -i "listen"` |Use `netstat -ab | select-string "listen"` 
|**List all the ip addresses**|Use `ip a`|Use `ipconfig`