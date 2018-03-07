#!/bin/sh

echo "\n+- Linting before committing... -+"
npm run lint

if [ "$?" = 0 ]; then
  echo ""
  echo "\033[42m+- Commit Succeeded -+\033[0m\n"
else
  echo ""
  echo "\033[41m+- Commit Aborted -+\033[0m Your commit contains files that should pass ESLint but do not. \nPlease fix the ESLint errors and try again. \nIf you want to commit anyway add the --no-verify flag\n"
  exit 1
fi

exit $?
