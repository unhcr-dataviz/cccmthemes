.onLoad <- function(libname, pkgname) {
    font_dir <- system.file("fonts", package = "cccmthemes")
    font_dir <- file.path(font_dir, "Inter")

    sys_fonts <- systemfonts::system_fonts()
    if (!any(grepl("inter", sys_fonts$family, ignore.case = TRUE))) {
        message("Inter font is missing, please install it!",
            call. = FALSE
        )
        systemfonts::register_font(
            name = "Inter",
            plain = file.path(font_dir, "Inter-Regular.ttf"),
            italic = file.path(font_dir, "Inter-Italic.ttf"),
            bold = file.path(font_dir, "Inter-Bold.ttf"),
            bolditalic = file.path(
                font_dir,
                "Inter-BoldItalic.ttf"
            )
        )
    }
    update_geom_font_defaults()
}
