#' @export
#' @rdname geom_linerange
geom_midbar <- function(mapping = NULL, data = NULL,
                          stat = "identity", position = "identity",
                          ...,
                          na.rm = FALSE,
                          show.legend = NA,
                          inherit.aes = TRUE) {
  layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomMidbar,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      na.rm = na.rm,
      ...
    )
  )
}

#' @rdname ggplot2-ggproto
#' @format NULL
#' @usage NULL
#' @export
GeomMidbar <- ggproto("GeomMidbar", Geom,
  default_aes = aes(colour = "black", size = 0.5, linetype = 1, width = 0.25,
    alpha = NA),

  draw_key = draw_key_path,

  required_aes = c("x", "y"),

  setup_data = function(data, params) {
    data$width <- data$width %||%
        params$width %||% (resolution(data$x, FALSE) * 0.9)

    transform(data,
              xmin = x - width / 2, xmax = x + width / 2, width = NULL
    )
  },

  draw_group = function(data, panel_params, coord, width = NULL) {
      GeomPath$draw_panel(data.frame(
                   x = as.vector(rbind(data$xmin, data$xmax)),
                   y = as.vector(rbind(data$y, data$y)),
                   colour = rep(data$colour, each = 2),
                   alpha = rep(data$alpha, each = 2),
                   size = rep(data$size, each = 2),
                   linetype = rep(data$linetype, each = 2),
                   group = rep(1:(nrow(data)), each = 2),
                   stringsAsFactors = FALSE,
                   row.names = 1:(nrow(data) * 2)
               ), panel_params, coord)

  }
)
 
