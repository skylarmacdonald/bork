STATUS_OK=0
STATUS_FAILED=1
STATUS_MISSING=10
STATUS_OUTDATED=11
STATUS_PARTIAL=12
STATUS_MISMATCH_UPGRADE=13
STATUS_MISMATCH_CLOBBER=14
STATUS_CONFLICT_UPGRADE=20
STATUS_CONFLICT_CLOBBER=21
STATUS_CONFLICT_HALT=25
STATUS_BAD_ARGUMENTS=30
STATUS_FAILED_ARGUMENTS=31
STATUS_FAILED_ARGUMENT_PRECONDITION=32
STATUS_FAILED_PRECONDITION=33
STATUS_UNSUPPORTED_PLATFORM=34

if [ ! -z "$BORK_COLOR" ]; then
    GREEN="\e[92m"
    RED="\e[91m"
    YELLOW="\e[93m"
    RESET="\e[39m"
fi

_status_for () {
  case "$1" in
    $STATUS_OK)                           echo -e "${GREEN}ok${RESET}" ;;
    $STATUS_FAILED)                       echo -e "${RED}failed${RESET}" ;;
    $STATUS_MISSING)                      echo -e "${RED}missing${RESET}" ;;
    $STATUS_OUTDATED)                     echo -e "${YELLOW}outdated${RESET}" ;;
    $STATUS_PARTIAL)                      echo -e "${YELLOW}partial${RESET}" ;;
    $STATUS_MISMATCH_UPGRADE)             echo -e "${YELLOW}mismatch (upgradable)${RESET}" ;;
    $STATUS_MISMATCH_CLOBBER)             echo -e "${RED}mismatch (clobber required)${RESET}" ;;
    $STATUS_CONFLICT_UPGRADE)             echo -e "${YELLOW}conflict (upgradable)${RESET}" ;;
    $STATUS_CONFLICT_CLOBBER)             echo -e "${RED}conflict (clobber required)${RESET}" ;;
    $STATUS_CONFLICT_HALT)                echo -e "${RED}conflict (unresolvable)${RESET}" ;;
    $STATUS_BAD_ARGUMENT)                 echo -e "${RED}error (bad arguments)${RESET}" ;;
    $STATUS_FAILED_ARGUMENTS)             echo -e "${RED}error (failed arguments)${RESET}" ;;
    $STATUS_FAILED_ARGUMENT_PRECONDITION) echo -e "${RED}error (failed argument precondition)${RESET}" ;;
    $STATUS_FAILED_PRECONDITION)          echo -e "${RED}error (failed precondition)${RESET}" ;;
    $STATUS_UNSUPPORTED_PLATFORM)         echo -e "${RED}error (unsupported platform)${RESET}" ;;
    *)                                    echo -e "${RED}unknown status${RESET}: $1" ;;
  esac
}

