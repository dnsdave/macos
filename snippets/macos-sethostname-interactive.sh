#!/bin/bash
read -p "What hostname would you like to use? " name
sudo scutil --set HostName $name.local && sudo scutil --set ComputerName $name && sudo scutil --set LocalHostName $name
