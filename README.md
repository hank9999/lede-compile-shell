# lede-compile-shell
Lean's OpenWrt Compile Shell  
Ubuntu Only  


**You can fork or cloen this repository and Config your own config**  
default config: default_x86_64 without pptp l2tp adblock but with qos frp ipv6  
other default_x86_64 config no change  
enjoy it


## Preparation Shell  Don't run as root
`bash <(curl https://raw.githubusercontent.com/hank9999/lede-compile-shell/master/LEDE-Compile-Preparation.sh)`  
If you clone this repository, please run `bash LEDE-Compile-Preparation.sh`  
  
## Compile Shell  Don't run as root
`bash <(curl https://raw.githubusercontent.com/hank9999/lede-compile-shell/master/LEDE-Compile-Compile.sh)`  
If you clone this repository, please run `bash LEDE-Compile-Compile.sh`  
**tips: run `ls` should see `lede`**  

## Auto Shell If run as root will add a user `lede-compile`
`bash <(curl https://raw.githubusercontent.com/hank9999/lede-compile-shell/master/LEDE-Compile-Main.sh)`   
If you clone this repository, please run `bash LEDE-Compile-Main.sh`  
**tips: If you ran it as root, folder of lede will be in /home/lede-compile/ledefolder**  