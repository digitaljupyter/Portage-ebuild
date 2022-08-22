# This script installs portage using it's ebuild service.
author=( "Kai Daniel Gonzalez" )

# E-builds are like, builds with instructions.
# Basically, when you download an e-build, you run it
# Using `portage build ./`

# After that, it will try to install $REPOSITORY then run INSTRUCTIONS().

# The repository to clone
repository=("https://github.com/thekaigonzalez/unbase64")

# The instructions for the repository
instruction () {
  meson builddir
  cd builddir
  ninja install
}
