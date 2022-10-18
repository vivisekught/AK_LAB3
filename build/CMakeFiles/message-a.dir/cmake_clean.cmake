file(REMOVE_RECURSE
  "libmessage-a.a"
  "libmessage-a.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/message-a.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
