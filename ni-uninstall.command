#!/bin/bash

# This script removes selected Native Instruments software and drivers.
# Source: https://www.native-instruments.com/en/support/knowledge-base/show/413/how-to-uninstall-native-instruments-software-and-drivers-from-a-mac-os-x-computer/

products=("Kontakt 6" "Kontakt 7" "Maschine" "Komplete Kontrol" "Reaktor" "Exit")

echo "Please select the Native Instruments product you want to uninstall:"
select product in "${products[@]}"; do
    case $product in
        "Kontakt 6")
            echo "You have selected to uninstall Kontakt 6."
            break
            ;;
        "Kontakt 7")
            echo "You have selected to uninstall Kontakt 7."
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
    if [[ $product == "Kontakt 6" ]]; then
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
    fi

    echo "Uninstallation complete."

    read -p "Reboot? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        sudo shutdown -r +1
    fi
else
    echo "Uninstallation canceled."
fi

echo "EXIT"
exit