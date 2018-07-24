##
## black and white theme without grid
theme_bwng = function(base_size = 12, base_family = "", base_line_size = base_size/22, base_rect_size = base_size/22){
    theme_bw(base_size = base_size, base_family = base_family) %+replace%
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              axis.text.x = element_text(colour = "black"),
              axis.text.y = element_text(colour = "black"))
}
