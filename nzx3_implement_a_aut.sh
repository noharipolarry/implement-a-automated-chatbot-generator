#!/bin/bash

# Define the chatbot generator function
generate_chatbot() {
  # Get the chatbot name as input
  read -p "Enter the chatbot name: " chatbot_name

  # Create a new directory for the chatbot
  mkdir -p "$chatbot_name"

  # Create the chatbot's config file
  echo "[chatbot]" > "$chatbot_name/config.ini"
  echo "name = $chatbot_name" >> "$chatbot_name/config.ini"
  echo "description = Auto-generated chatbot" >> "$chatbot_name/config.ini"

  # Create the chatbot's script file
  echo "#!/bin/bash" > "$chatbot_name/script.sh"
  echo "echo 'Hello, I am $chatbot_name!'" >> "$chatbot_name/script.sh"
  echo "read -p 'How can I assist you? ' input" >> "$chatbot_name/script.sh"
  echo "echo 'You said: $input'" >> "$chatbot_name/script.sh"

  # Make the script file executable
  chmod +x "$chatbot_name/script.sh"

  # Create the chatbot's intents file
  echo "[intents]" > "$chatbot_name/intents.txt"
  echo "hello" >> "$chatbot_name/intents.txt"
  echo "goodbye" >> "$chatbot_name/intents.txt"

  # Create the chatbot's responses file
  echo "[responses]" > "$chatbot_name/responses.txt"
  echo "hello = Hello, how are you?" >> "$chatbot_name/responses.txt"
  echo "goodbye = Goodbye, see you soon!" >> "$chatbot_name/responses.txt"

  # Display a success message
  echo "Chatbot $chatbot_name generated successfully!"
}

# Call the chatbot generator function
generate_chatbot