get_path () {
  print -P "%d" | perl -pe 's/.*\/mnt\/([^\/\n]).*?($|\n|\/)/\U\1:\2/g' | perl -pe 's/^\/home($|\n|\/)/\/Documents and Settings\1/g' | sed 's|^/$|C:|g' | sed 's|^/|C:/|g' | sed 's|/|\\|g'
}

PROMPT='$(get_path)\\> '

echo "Microsoft Windows XP [Version 5.1.2600]\n(C) Copyright 1985-2009 Microsoft Corp.\n\n"
