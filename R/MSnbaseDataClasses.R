## Returns of class version as documented in .rmzTabMEnv$ClassVersions
## as and instance of class Versions.
getClassVersion <- function(x) {
    if (!is.character(x))
        x <- class(x)[1]
    ## This get class versions from parent classes (if any)
    ver <- classVersion(x)
    ## Adds (or overwrites) x's class version to the list of class
    ## versions
    ver[x] <- getClassVersionString(x)
    ver
}
## Utility to just extract the version string from the environment.
getClassVersionString <- function(x) {
    if (!is.character(x))
        x <- class(x)[1]
    return(.rmzTabMEnv$ClassVersions[x])
}

#####################################################################
## Support for the PSI mzTab format
.MzTab <- setClass("MzTab",
                   slots = c(
                       Metadata = "list",
                       Filename = "character",
                       Proteins = "data.frame",
                       Peptides = "data.frame",
                       PSMs = "data.frame",
                       SmallMolecules = "data.frame",
                       MoleculeFeatures = "data.frame",
                       MoleculeEvidence = "data.frame",
                       Comments = "character"))
