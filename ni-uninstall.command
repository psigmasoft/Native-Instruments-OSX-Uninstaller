#!/bin/bash
# This script removes selected Native Instruments software and drivers.
# Source: https://www.native-instruments.com/en/support/knowledge-base/show/413/how-to-uninstall-native-instruments-software-and-drivers-from-a-mac-os-computer/
products=("Kontakt" "Kontakt 6" "Kontakt 7" "Kontakt 6 Player" "Kontakt 8 Player" "Kontakt 8" "Maschine" "Komplete Kontrol" "Reaktor" "Exit")
echo "Please select the Native Instruments product you want to uninstall:"
select product in "${products[@]}"; do
    case $product in
        "Kontakt")
            echo "You have selected to uninstall Kontakt."
            break
            ;;
        "Kontakt 6")
            echo "You have selected to uninstall Kontakt 6."
            break
            ;;
        "Kontakt 7")
            echo "You have selected to uninstall Kontakt 7."
            break
            ;;
        "Kontakt 6 Player")
            echo "You have selected to uninstall Kontakt 6 Player."
            break
            ;;
        "Kontakt 8 Player")
            echo "You have selected to uninstall Kontakt 8 Player."
            break
            ;;
        "Kontakt 8")
            echo "You have selected to uninstall Kontakt 8."
            break
            ;;
        "Maschine")
            echo "You have selected to uninstall Maschine."
            break
            ;;
        "Komplete Kontrol")
            echo "You have selected to uninstall Komplete Kontrol."
            break
            ;;
        "Reaktor")
            echo "You have selected to uninstall Reaktor."
            break
            ;;
        "Exit")
            echo "Exiting the script."
            exit
            ;;
        *)
            echo "Invalid option $REPLY. Please try again."
            ;;
    esac
done

read -p "Are you sure you want to uninstall $product? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Uninstalling $product..."
    echo "Please enter your root user credentials below."

    # Define paths based on the product choice
    if [[ $product == "Kontakt" ]]; then
        sudo rm -rfv "/Applications/Native Instruments/Kontakt"
        sudo rm -fv "/Library/Preferences/com.native-instruments.Kontakt.plist"
        sudo rm -fv "/Users/Shared/Native Instruments/installed_products/Kontakt.json"
        sudo rm -rfv "/Library/Audio/Plug-ins/Components/Kontakt.component"
        sudo rm -rfv "/Library/Audio/Plug-ins/VST/Kontakt.vst"
        sudo rm -rfv "/Library/Audio/Plug-Ins/VST3/Kontakt.vst3"
        sudo rm -rfv "/Library/Application Support/Digidesign/Plug-ins/Kontakt.dpm"
        sudo rm -rfv "/Library/Application Support/Avid/Audio/Plug-ins/Kontakt.aaxplugin"
        sudo rm -rfv "/Library/Application Support/Native Instruments/Kontakt"
        sudo rm -fv "/Library/Application Support/Native Instruments/Service Center/Kontakt.xml"
        sudo rm -fv "$HOME/Library/Preferences/com.native-instruments.Kontakt.plist"
        sudo rm -rfv "$HOME/Library/Application Support/Native Instruments/Kontakt"
        # Add any additional file paths if necessary
    elif [[ $product == "Kontakt 6" ]]; then
        sudo rm -rfv "/Applications/Native Instruments/Kontakt 6"
        sudo rm -fv "/Library/Preferences/com.native-instruments.Kontakt 6.plist"
        sudo rm -fv "/Users/Shared/Native Instruments/installed_products/Kontakt 6.json"
        sudo rm -rfv "/Library/Audio/Plug-ins/Components/Kontakt 6.component"
        sudo rm -rfv "/Library/Audio/Plug-ins/VST/Kontakt 6.vst"
        sudo rm -rfv "/Library/Audio/Plug-Ins/VST3/Kontakt 6.vst3"
        sudo rm -rfv "/Library/Application Support/Digidesign/Plug-ins/Kontakt 6.dpm"
        sudo rm -rfv "/Library/Application Support/Avid/Audio/Plug-ins/Kontakt 6.aaxplugin"
        sudo rm -rfv "/Library/Application Support/Native Instruments/Kontakt 6"
        sudo rm -fv "/Library/Application Support/Native Instruments/Service Center/Kontakt 6.xml"
        sudo rm -fv "$HOME/Library/Preferences/com.native-instruments.Kontakt 6.plist"
        sudo rm -rfv "$HOME/Library/Application Support/Native Instruments/Kontakt 6"
        # Add any additional file paths if necessary
    elif [[ $product == "Kontakt 7" ]]; then
        sudo rm -rfv "/Applications/Native Instruments/Kontakt 7"
        sudo rm -fv "/Library/Preferences/com.native-instruments.Kontakt 7.plist"
        sudo rm -fv "/Users/Shared/Native Instruments/installed_products/Kontakt 7.json"
        sudo rm -rfv "/Library/Audio/Plug-ins/Components/Kontakt 7.component"
        sudo rm -rfv "/Library/Audio/Plug-ins/VST/Kontakt 7.vst"
        sudo rm -rfv "/Library/Audio/Plug-Ins/VST3/Kontakt 7.vst3"
        sudo rm -rfv "/Library/Application Support/Digidesign/Plug-ins/Kontakt 7.dpm"
        sudo rm -rfv "/Library/Application Support/Avid/Audio/Plug-ins/Kontakt 7.aaxplugin"
        sudo rm -rfv "/Library/Application Support/Native Instruments/Kontakt 7"
        sudo rm -fv "/Library/Application Support/Native Instruments/Service Center/Kontakt 7.xml"
        sudo rm -fv "$HOME/Library/Preferences/com.native-instruments.Kontakt 7.plist"
        sudo rm -rfv "$HOME/Library/Application Support/Native Instruments/Kontakt 7"
        # Add any additional file paths if necessary
    elif [[ $product == "Kontakt 6 Player" ]]; then
        sudo rm -rfv "/Applications/Native Instruments/Kontakt 6 Player"
        sudo rm -fv "/Library/Preferences/com.native-instruments.Kontakt 6 Player.plist"
        sudo rm -fv "/Users/Shared/Native Instruments/installed_products/Kontakt 6 Player.json"
        sudo rm -rfv "/Library/Audio/Plug-ins/Components/Kontakt 6 Player.component"
        sudo rm -rfv "/Library/Audio/Plug-ins/VST/Kontakt 6 Player.vst"
        sudo rm -rfv "/Library/Audio/Plug-Ins/VST3/Kontakt 6 Player.vst3"
        sudo rm -rfv "/Library/Application Support/Digidesign/Plug-ins/Kontakt 6 Player.dpm"
        sudo rm -rfv "/Library/Application Support/Avid/Audio/Plug-ins/Kontakt 6 Player.aaxplugin"
        sudo rm -rfv "/Library/Application Support/Native Instruments/Kontakt 6 Player"
        sudo rm -fv "/Library/Application Support/Native Instruments/Service Center/Kontakt 6 Player.xml"
        sudo rm -fv "$HOME/Library/Preferences/com.native-instruments.Kontakt 6 Player.plist"
        sudo rm -rfv "$HOME/Library/Application Support/Native Instruments/Kontakt 6 Player"
        # Add any additional file paths if necessary
    elif [[ $product == "Kontakt 8 Player" ]]; then
        sudo rm -rfv "/Applications/Native Instruments/Kontakt 8 Player"
        sudo rm -fv "/Library/Preferences/com.native-instruments.Kontakt 8 Player.plist"
        sudo rm -fv "/Users/Shared/Native Instruments/installed_products/Kontakt 8 Player.json"
        sudo rm -rfv "/Library/Audio/Plug-ins/Components/Kontakt 8 Player.component"
        sudo rm -rfv "/Library/Audio/Plug-ins/VST/Kontakt 8 Player.vst"
        sudo rm -rfv "/Library/Audio/Plug-Ins/VST3/Kontakt 8 Player.vst3"
        sudo rm -rfv "/Library/Application Support/Digidesign/Plug-ins/Kontakt 8 Player.dpm"
        sudo rm -rfv "/Library/Application Support/Avid/Audio/Plug-ins/Kontakt 8 Player.aaxplugin"
        sudo rm -rfv "/Library/Application Support/Native Instruments/Kontakt 8 Player"
        sudo rm -fv "/Library/Application Support/Native Instruments/Service Center/Kontakt 8 Player.xml"
        sudo rm -fv "$HOME/Library/Preferences/com.native-instruments.Kontakt 8 Player.plist"
        sudo rm -rfv "$HOME/Library/Application Support/Native Instruments/Kontakt 8 Player"
        # Add any additional file paths if necessary
    elif [[ $product == "Kontakt 8" ]]; then
        sudo rm -rfv "/Applications/Native Instruments/Kontakt 8"
        sudo rm -fv "/Library/Preferences/com.native-instruments.Kontakt 8.plist"
        sudo rm -fv "/Users/Shared/Native Instruments/installed_products/Kontakt 8.json"
        sudo rm -rfv "/Library/Audio/Plug-ins/Components/Kontakt 8.component"
        sudo rm -rfv "/Library/Audio/Plug-ins/VST/Kontakt 8.vst"
        sudo rm -rfv "/Library/Audio/Plug-Ins/VST3/Kontakt 8.vst3"
        sudo rm -rfv "/Library/Application Support/Digidesign/Plug-ins/Kontakt 8.dpm"
        sudo rm -rfv "/Library/Application Support/Avid/Audio/Plug-ins/Kontakt 8.aaxplugin"
        sudo rm -rfv "/Library/Application Support/Native Instruments/Kontakt 8"
        sudo rm -fv "/Library/Application Support/Native Instruments/Service Center/Kontakt 8.xml"
        sudo rm -fv "$HOME/Library/Preferences/com.native-instruments.Kontakt 8.plist"
        sudo rm -rfv "$HOME/Library/Application Support/Native Instruments/Kontakt 8"
        # Add any additional file paths if necessary
    fi
    echo "Uninstallation complete."
    read -p "Reboot? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo shutdown -r +1
        # Display popup to user warning them of the upcoming reboot in 1 minute
        osascript -e 'tell app "System Events" to display dialog "Your computer will reboot in 1 minute." buttons "OK" default button 1 with icon caution'
    fi
else
    echo "Uninstallation canceled."
fi
echo "EXIT"
exit