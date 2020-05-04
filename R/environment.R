.rmzTabMEnv <- new.env(parent = emptyenv(), hash = TRUE)

ClassVersions <- c(
    MzTab = "2.0.0")

assign("ClassVersions", ClassVersions, envir = .rmzTabMEnv)

lockEnvironment(.rmzTabMEnv,bindings=TRUE)
