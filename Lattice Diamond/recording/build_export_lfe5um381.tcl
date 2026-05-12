prj_project open "C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/recording/record.ldf"
prj_dev set -family ECP5UM -device LFE5UM-25F -package CABGA381 -performance 6
puts "building_for=[prj_dev]"
prj_run Export -impl impl1 -forceAll
prj_project close
exit
