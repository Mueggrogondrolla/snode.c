# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "G:\Programmordner\CLion\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "G:\Programmordner\CLion\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\simpleserver.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\simpleserver.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\simpleserver.dir\flags.make

CMakeFiles\simpleserver.dir\simpleserver.cpp.obj: CMakeFiles\simpleserver.dir\flags.make
CMakeFiles\simpleserver.dir\simpleserver.cpp.obj: ..\simpleserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simpleserver.dir/simpleserver.cpp.obj"
	G:\PROGRA~1\VISUAL~4\VC\Tools\MSVC\1425~1.286\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\simpleserver.dir\simpleserver.cpp.obj /FdCMakeFiles\simpleserver.dir\ /FS -c "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\simpleserver.cpp"
<<

CMakeFiles\simpleserver.dir\simpleserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simpleserver.dir/simpleserver.cpp.i"
	G:\PROGRA~1\VISUAL~4\VC\Tools\MSVC\1425~1.286\bin\Hostx86\x86\cl.exe > CMakeFiles\simpleserver.dir\simpleserver.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\simpleserver.cpp"
<<

CMakeFiles\simpleserver.dir\simpleserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simpleserver.dir/simpleserver.cpp.s"
	G:\PROGRA~1\VISUAL~4\VC\Tools\MSVC\1425~1.286\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\simpleserver.dir\simpleserver.cpp.s /c "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\simpleserver.cpp"
<<

# Object files for target simpleserver
simpleserver_OBJECTS = \
"CMakeFiles\simpleserver.dir\simpleserver.cpp.obj"

# External object files for target simpleserver
simpleserver_EXTERNAL_OBJECTS =

simpleserver.exe: CMakeFiles\simpleserver.dir\simpleserver.cpp.obj
simpleserver.exe: CMakeFiles\simpleserver.dir\build.make
simpleserver.exe: http\http.lib
simpleserver.exe: net\net.lib
simpleserver.exe: CMakeFiles\simpleserver.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simpleserver.exe"
	"G:\Programmordner\CLion\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\simpleserver.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests  -- G:\PROGRA~1\VISUAL~4\VC\Tools\MSVC\1425~1.286\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\simpleserver.dir\objects1.rsp @<<
 /out:simpleserver.exe /implib:simpleserver.lib /pdb:"G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug\simpleserver.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  http\http.lib net\net.lib magic.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\simpleserver.dir\build: simpleserver.exe

.PHONY : CMakeFiles\simpleserver.dir\build

CMakeFiles\simpleserver.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\simpleserver.dir\cmake_clean.cmake
.PHONY : CMakeFiles\simpleserver.dir\clean

CMakeFiles\simpleserver.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c" "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c" "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug" "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug" "G:\Programmordner\OneDrive\OneDrive - students.fh-hagenberg.at\FH\Master 2. Semester\Networked And Distributed Systems\node.c\node.c\cmake-build-debug\CMakeFiles\simpleserver.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\simpleserver.dir\depend

