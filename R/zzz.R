# Loads qualtRics credentials automatically if available.
# User needs to have qualtRics API key and root url stored in a configuration file in working directory.
# For an example of a configuration file, execute 'qualtRicsConfigFile()'
# See: https://github.com/JasperHG90/qualtRics/blob/master/README.md#using-a-configuration-file

.onLoad <- function(libname = find.package("qualtRics"), pkgname="qualtRics") {
  if(file.exists(".qualtRics.yml")) {
    suppressWarnings(registerOptions()) # This throws a warning
  }
}
