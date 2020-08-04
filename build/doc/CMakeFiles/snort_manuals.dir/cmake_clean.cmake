file(REMOVE_RECURSE
  "commands.txt"
  "config.txt"
  "counts.txt"
  "modules.txt"
  "plugins.txt"
  "options.txt"
  "signals.txt"
  "help.txt"
  "builtin.txt"
  "gids.txt"
  "basic.txt"
  "codec.txt"
  "connector.txt"
  "data.txt"
  "inspector.txt"
  "ips_action.txt"
  "ips_option.txt"
  "logger.txt"
  "version.txt"
  "snort2lua_cmds.txt"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/snort_manuals.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
