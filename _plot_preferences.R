pd <- position_dodge(0.1)
my_fgms_theme =  theme_bw()+
  theme(
    panel.grid        = element_blank(), 
    axis.title.y      = element_text(angle=0, vjust=0.5, hjust=0.5), 
    legend.text       = element_text(size=12), 
    legend.title      = element_text(size=12), 
    axis.text         = element_text(size=11),
    strip.background  = element_blank(),
    strip.text        = element_text(size=11)
  )