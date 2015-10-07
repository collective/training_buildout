# Make sure, you have nodejs installed.

# Make tasks
all: mockup mockup-minimalpattern

mockup:
	cd src/mockup; make bootstrap; cd ../..;

mockup-minimalpattern:
	cd src/mockup-minimalpattern; make bootstrap; cd ../..;

# Expose these options to the command line shell expansion mechanism
.PHONY: all mockup mockup-minimalpattern
