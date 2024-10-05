#/bin/bash

# Path to the configuration file
CONFIG_FILE="$HOME/.config/hypr/hyprcfgs/input.conf"

# Function to update the layout
update_layout() {
    CURRENT_LAYOUT=$(grep 'kb_layout' "$CONFIG_FILE" | sed 's/^[ \t]*//')  # Убираем пробелы в начале строки
    echo "Current layout: $CURRENT_LAYOUT"

    while true; do
        # Display current layout in option 1
        echo "1) Keep ($CURRENT_LAYOUT)"
        echo "2) Enter a new layout (comma-separated)"
        
        read -p "Choose an option: " OPTION

        if [[ "$OPTION" -eq 1 ]]; then
            clear
            # If option 1 is chosen, just exit the loop
            break
        elif [[ "$OPTION" -eq 2 ]]; then
            clear
            # Display available layouts
            echo "Русский - ru"
            echo "Українська мова - ua"
            echo "Беларуская мова - by"
            echo "Қазақ тілі - kz"
            echo "Polska - pl"
            echo "Italiano - it"
            echo "한국어 - kr"
            echo "Español - es"
            echo "Português - pt"
            echo "日本語 - jp"
            echo "Deutsch - de"
            echo "Français - fr"
            echo ""
            echo "Not all layouts there, but most popular"

            while true; do
                read -p "Enter layout/layouts (for example: 'us, ru'): " NEW_LAYOUT_INPUT
                # Form the new layout string without extra spaces
                NEW_LAYOUT="kb_layout = ${NEW_LAYOUT_INPUT//,/, }"
                NEW_LAYOUT="${NEW_LAYOUT//  / }"  # Remove any double spaces
                break
            done
            break
        else
            echo "Invalid choice. Please try again."
        fi
    done

    # If a new layout was provided, replace the line in the file
    if [[ "$OPTION" -eq 2 ]]; then
        sed -i "s|kb_layout = .*|$NEW_LAYOUT|" "$CONFIG_FILE"
        echo "Layout updated: $NEW_LAYOUT"
    else
        echo "Layout remains unchanged."
    fi
}

# Main loop
while true; do
    update_layout

    read -p "Are you sure in your layout? Maybe you want to change it? (y/N): " choice
    choice=${choice:-n}  # Default to 'n' if the user presses Enter

    if [[ "$choice" != "y" ]]; then
        echo "Script finished."
        break 
    fi
done
