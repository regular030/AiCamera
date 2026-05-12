set bdir "C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/recording/_capture_clean_build"
prj_project open "$bdir/capclean.ldf"
foreach task {Bitgen Promgen} {
    puts "running_export_task=$task"
    catch {prj_run Export -impl impl1 -task $task -forceAll} msg
    puts $msg
}
prj_project close
exit
