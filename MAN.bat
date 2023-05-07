@echo off

mkdir "Lab\Group\Potapov\command_line\hidden_folder"
mkdir "Lab\Group\Potapov\command_line\folder"

echo: Folders were created!

tree /a /f

attrib +h "Lab\Group\Potapov\command_line\hidden_folder"
echo: The "hidden_folder" folder was hidden!

xcopy /? > "Lab\Group\Potapov\command_line\folder\copyhelp.txt"
echo: "copyhelp.txt" Created!

xcopy > "Lab\Group\Potapov\command_line\folder\copyhelp.txt" "Lab\Group\Potapov\command_line\hidden_folder\copied_copyhelp.txt"
echo: "copied_copyhelp.txt" Created!

mkdir "Lab\Group\Potapov\command_line\hidden_folder"
mkdir "Lab\Group\Potapov\command_line\folder"

echo: folders were created!

attrib +h "Lab\Group\Potapov\batch\hidden_folder"
echo: The "hidden_folder" folder was hidden!

xcopy /? > "Lab\Group\Potapov\batch\folder\copyhelp.txt"
echo: "copyhelp.txt" Created!

xcopy > "Lab\Group\Potapov\batch\folder\copyhelp.txt" "Lab\Group\Potapov\batch\hidden_folder\copied_copyhelp.txt"
echo: "copied_copyhelp.txt" Created!

tree /a /f