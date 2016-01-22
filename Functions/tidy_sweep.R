tidy_sweep <- function(visit2) {
    
    row.names(visit2) <- NULL
    
    GLH.sweep <- visit2 %>% select(filename, visit, DVS, GLH.sweep1:GLH.sweep5) %>% 
      gather(Sweep.no, GLH.sweep, GLH.sweep1:GLH.sweep5) %>% 
        mutate(Sweep.no = gsub("GLH.sweep", "", Sweep.no))
    
    BPH.sweep <- visit2 %>% select(filename, visit, DVS, BPH.sweep1:BPH.sweep5) %>%
      gather(Sweep.no, BPH.sweep, BPH.sweep1:BPH.sweep5) %>% 
        mutate(Sweep.no = gsub("BPH.sweep", "", Sweep.no))
    
    WPH.sweep <- visit2 %>% select(filename, visit, DVS,  WPH.sweep1:WPH.sweep5) %>% 
      gather(Sweep.no, WPH.sweep, WPH.sweep1:WPH.sweep5) %>% 
        mutate(Sweep.no = gsub("WPH.sweep", "", Sweep.no))
    
    RC.sweep <- visit2 %>% select(filename, visit, DVS, RC.sweep1:RC.sweep5) %>% 
      gather(Sweep.no, RC.sweep, RC.sweep1:RC.sweep5) %>% 
        mutate(Sweep.no = gsub("RC.sweep", "", Sweep.no))
    
    form2.sweep.list <- list(GLH.sweep, BPH.sweep, WPH.sweep, RC.sweep)
    
    VISIT2 <- merge_recurse(form2.sweep.list, by = c("filename", "visit", "Sweep.no", "DVS"))  # okay this function call from the reshape package
    
    return(VISIT2)
}
# eos 
