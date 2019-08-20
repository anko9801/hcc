PROMPT='`left-prompt`'

function left-prompt {
  FIRST='178m%}'
  FIRST_B='237m%}'
  SECOND='007m%}'
  SECOND_B='067m%}'

  sharp='\uE0B0'
  FG='%{^[[38;5;'
  BG='%{^[[30;48;5;'
  RESET='%{^[[0m%}'
  USER_AND_HOST="${BG}${FIRST_B}${FG}${FIRST}"
  DIR="${BG}${SECOND_B}${FG}${SECOND}"

  echo "${USER_AND_HOST}%n@%m${BG}${SECOND_B}${FG}${FIRST_B}${sharp} ${DIR}%~${RESET}${FG}${SECOND_B}${sharp} ${RESET}"
}
