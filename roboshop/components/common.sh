HEAD() {
  echo -n -e "\e[1m $1\t\t..."
}

STAT() {
if [ $1 -eq 0 ]; then
  echo -e "\e[1;32m Done \e[0m"
else
  echo -e "\e[1;31m Failed \e[0m"
  echo -e "\e[1;33m Check the log for more details...Log-file : /tmp/roboshop.log\e[0m"
  exit 1
fi
}