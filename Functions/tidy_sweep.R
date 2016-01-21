tidy_sweep <- function(visit1) {
    
    row.names(visit1) <- NULL
    
    GLH.sweep <- visit1 %>% select(filename, visit, GLH.sweep1:GLH.sweep5) %>% gather(Samp, GLH.sweep, GLH.sweep1:GLH.sweep5) %>% 
        mutate(Samp = gsub("GLH.sweep", "", Samp))
    
    BPH.sweep <- visit1 %>% select(filename, visit, BPH.sweep1:BPH.sweep5) %>% gather(Samp, BPH.sweep, BPH.sweep1:BPH.sweep5) %>% 
        mutate(Samp = gsub("BPH.sweep", "", Samp))
    
    WPH.sweep <- visit1 %>% select(filename, visit, WPH.sweep1:WPH.sweep5) %>% gather(Samp, WPH.sweep, WPH.sweep1:WPH.sweep5) %>% 
        mutate(Samp = gsub("WPH.sweep", "", Samp))
    
    RC.sweep <- visit1 %>% select(filename, visit, RC.sweep1:RC.sweep5) %>% gather(Samp, RC.sweep, RC.sweep1:RC.sweep5) %>% 
        mutate(Samp = gsub("RC.sweep", "", Samp))
    
    form2.sweep.list <- list(GLH.sweep, BPH.sweep, WPH.sweep, RC.sweep)
    
    VISIT1 <- merge_recurse(form2.sweep.list, by = c("filename", "visit", "Samp"))  # okay this function call from the reshape package
    
    return(VISIT1)
}
# eos 
