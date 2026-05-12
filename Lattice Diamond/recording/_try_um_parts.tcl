prj_project open "C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/recording/record.ldf"
foreach args {
    {-family ECP5UM -device LFE5UM-25F -package CABGA256 -performance 6}
    {-family ECP5UM -device LFE5UM-25F -package CABGA381 -performance 6}
    {-family ECP5UM -device LFE5UM5G-25F -package CABGA256 -performance 6}
    {-family ECP5UM -device LFE5UM5G-25F -package CABGA381 -performance 6}
    {-family ECP5UM5G -device LFE5UM5G-25F -package CABGA256 -performance 6}
    {-family ECP5UM5G -device LFE5UM5G-25F -package CABGA381 -performance 6}
} {
    puts "trying $args"
    if {[catch {eval prj_dev set $args} msg]} {
        puts "FAIL $msg"
    } else {
        puts "OK [prj_dev]"
    }
}
prj_project close
exit
