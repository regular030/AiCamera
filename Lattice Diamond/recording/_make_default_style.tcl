set tmpdir "C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/recording/_style_tmp"
file delete -force $tmpdir
file mkdir $tmpdir
cd $tmpdir
prj_project new -name style_tmp -dev LFE5U-25F-6BG256C -impl impl1 -synthesis lse
prj_project save
prj_project close
exit
