# Make sure, you have nodejs installed.

# Make tasks
all: mockup-minimalpattern

mockup-minimalpattern:
	cd src/mockup-minimalpattern; make bootstrap; cd ../..;

mockup:
	cd src/mockup; make bootstrap; cd ../..;

# Expose these options to the command line shell expansion mechanism
.PHONY: all mockup mockup-minimalpattern
