Original Git by Denisio:  https://github.com/denisio/Dayz-Epoch-Linux-Server

**Original Git was only active until 1.0.5.1..**

** This Git has been updated to 1.0.6.2 - Please expect bugs. If you find any. let me know through Github issues and i'll get them sorted.**
** Please test this before upgrading your production server** 
** I won't be held responsible for any lost data **
==============


Dayz-Epoch-Linux-Server
=======================

A private hive DayZ Epoch 1.0.6.2 server on Linux

Installation instructions
=========================

1. The following programs must be installed on your Linux system: screen, gcc, perl, mysql.

2. Download and install ArmA beta patch (http://www.arma2.com/downloads/update/beta/ARMA2_OA_Build_108074.zip).

3. Copy the whole "ArmA 2: Operation Arrowhead" directory from Windows to server Linux-directory.<br>
   ArmA2 directory should contain subdirectories "Addons", "Dta", "Expansion", etc.<br>
   Example: pack with PKZIP (WinZip, PowerArchiver, etc.) on Windows and unpack with "unzip" on Linux.<br>
   DO NOT use upper case letters in the ArmA2 directory name (or in any files that the server uses 
   like missions or mods):<br>
   GOOD: "/home/bob/arma2arrowhead"<br>
   BAD:  "/home/bob/ArmA2ArrowHead"<br>

3. Download and install DayZ Epoch Mod 1.0.6.2 (https://github.com/EpochModTeam/DayZ-Epoch/releases/download/1.0.6.2/DayZ_Epoch_Server_1.0.6.2_Release.7z).

4. Run ./install<br>
   Watch the messages - they might inform you whether your installation
   failed! Double check that all directories were renamed to lower case.
   Remove any .dll files you might still find (in battleye, expansion and
   expansion/battleye directories).<br>
   When adding mission .pbo's or mods remember to run ./tolower again or
   manually change the filenames to lowercase.<br>
   <b>ANY uppercase letter in a filename will crash the server!</b><br>
   <pre>$ for x in *; do mv $x `echo $x | tr [A-Z] [a-z]`; done</pre>

5. Create database "epoch" (login: "dayz", password: "dayz") and load "database.sql" into Mysql.<br>
   Load the 2 SQL Files in the sql folder into the database the database <br>
   <pre>$ mysql -u root -p mysql
   mysql> create database epoch;
   mysql> GRANT ALL PRIVILEGES ON epoch.* TO 'dayz'@'localhost' IDENTIFIED BY 'dayz';
   mysql> use epoch;
   mysql> source tables.sql;
   mysql> source data.sql;</pre>

6. Install the required packages:<br>
   $ sudo apt-get install libjson-xs-perl<br>
   $ sudo apt-get install libdbd-mysql-perl<br>
   For 64-bit only:<br>
   $ sudo apt-get install lib32stdc++6

   
7. Depending on which map you wish to use, if you are only planning on using Chernarus no changes are needed, if for instance you will be using panthera then in the Keys folder you will need to copy the keys from "External Keys/Panthera" to the main keys folder 
  
8. Run ./epoch.sh for test<br>
   Watch the messages - they might inform you whether your installation failed!

9. Run ./restarter.pl<br>
   $ screen -r<br>
   Press Ctrl+A+D to detach the screen.

Please do not forget that the production server must run by "restarter.pl" !

