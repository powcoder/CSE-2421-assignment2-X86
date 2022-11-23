# THE CODE PRESENT IN THIS FILE WAS WRITTEN BY AN INSTRUCTOR/GRADER
# FOR THE COURSE. THE CONTENTS OF WHICH SHOULD NOT BE SHARED OR
# DISTRIBUTED. ATTEMPTING TO CLAIM ANY/ALL WORK PRESENT IN THIS FILE
# AS YOUR OWN IS IN DIRECT VIOLATION OF THE TENURES OF THE OHIO STATE
# UNIVERSITY’S ACADEMIC INTEGRITY POLICY.

# Name: Makefile
# Created by: <Name>

# This is the MAKEFILE for Assignment 2

# Make macros for target files
MAIN_C = mainC.c
MAIN_S = mainS.s

# Target 'all' builds executables from .c and .s files
all: mainC mainS

# Creates printout to display information from object files/code
%.dump: %
	objdump -d -M att $< | awk -F "\n" -v RS="\n\n" "/<main>/" > $@
	rm -rf *.out

# This is the target to make the executable from the .c file
mainC: $(MAIN_C)
	# Compiles executable from C source code (.c)
	gcc -ansi -pedantic -g $^ -o $@
	# Compiles assembly code from C source code (.c -> .s)
	# Can adjust gcc optimizer for varying degrees of compiler optimization...
	# (no optimization) {-O0, -O1, -O2, -O3} (full optimization)
	gcc -ansi -pedantic -S -O0 $^
	# Dumps contents of object code to file
	make $@.dump

# This is the target to make the executable from the .s file
mainS: $(MAIN_S)
	# Compiles executable from assembly code (.s)
	gcc -g -lc -m64 -o $@ $^
	# Dumps contents of object code to file
	make $@.dump
	
# Target to open all source files
openAll: Makefile $(MAIN_C) $(MAIN_S)
	gedit $^ &
	
# Clean directory of all non-source files
clean:
	rm -rf *.o $(MAIN_C:.c=) $(MAIN_C:.c=.s) $(MAIN_S:.s=) *.dump

