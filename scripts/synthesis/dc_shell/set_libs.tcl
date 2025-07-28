# add std cells .db files
set DB_STDCELLS {uk65lscllmvbbr_120c25_tc.db}

#lappend DB_STDCELLS "path to your std cells .db files"
#lappend DB_STDCELLS "path to your std cells .db files"
#lappend DB_STDCELLS "path to your std cells .db files"
#lappend DB_STDCELLS ...

# add your memory .db files
set DB_MEM {SHKA65_8192X32X1CM16_tt1p2v25c.db}

#lappend DB_MEM "path to your memory .db files"
#lappend DB_MEM "path to your memory .db files"
#lappend DB_MEM "path to your memory .db files"
#lappend DB_MEM ...


# target library
set target_library      {uk65lscllmvbbr_120c25_tc.db}
set target_library  "$DB_STDCELLS $DB_MEM"

# link library
set link_library "* $target_library"

#debug output info
puts "------------------------------------------------------------------"
puts "USED LIBRARIES"
puts $link_library
puts "------------------------------------------------------------------"

set link_library " * $link_library"
