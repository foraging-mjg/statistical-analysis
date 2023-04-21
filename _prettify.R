prettify_anova = function(raw, cap="title"){
  
  init = raw$ANOVA %>% 
    select(1:6) %>% 
    rename(sig=`p<.05`) %>%
    mutate(
      p = ifelse(p<0.00099, "0.000", p)
    ) %>% 
    mutate(
      sig=case_when(
        p < 0.001 ~ "***",
        p < 0.01  ~ "**",
        p < 0.05  ~ "*",
        TRUE      ~ ""
      )
    )
  
  knitr::kable(init,
        row.names=F,
        digits = c(0,1,1,2,3,1),
        caption=cap) %>%
    kable_styling(full_width = F, position='left')
}


prettify_sphericity = function(raw, cap="title"){
  init = raw$ANOVA %>% 
    select(1:6) %>% 
    rename(sig=`p<.05`) %>%
    mutate(
      p = ifelse(p<0.00099, "0.000", p)
    ) %>% 
    mutate(
      sig=case_when(
        p < 0.001 ~ "***",
        p < 0.01  ~ "**",
        p < 0.05  ~ "*",
        TRUE      ~ ""
      )
    )
  
  knitr::kable(init,
               row.names=F,
               digits = c(0,2,2,2,3,1),
               caption=cap) %>%
    kable_styling(full_width = F, position='left')
}

prettify_means = function(raw, cap="title"){
  kable(raw, digits=2, caption=cap) %>% 
    kable_styling(full_width = F, position = 'left')
}

