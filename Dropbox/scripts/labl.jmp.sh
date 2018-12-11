o "Main Menu"

# Define the choices to present to the user, which will be
# presented line by line, prefixed by a sequential number
# (E.g., '1) copy', ...)
choices=( 'copy' 'exit' )

# Present the choices.
# The user chooses by entering the *number* before the desired choice.
select choice in "${choices[@]}"; do

  # If an invalid number was chosen, $choice will be empty.
  # Report an error and prompt again.
  [[ -n $choice ]] || { echo "Invalid choice." >&2; continue; }

  # Examine the choice.
  # Note that it is the choice string itself, not its number
  # that is reported in $choice.
  case $choice in
    copy)
      echo "Copying..."
      # Set flag here, or call function, ...
      ;;
    exit)
      echo "Exiting. "
      exit 0
  esac

  # Getting here means that a valid choice was made,
  # so break out of the select statement and continue below,
  # if desired.
  # Note that without an explicit break (or exit) statement, 
  # bash will continue to prompt.
  break

done
