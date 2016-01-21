tidy_weed <- function(visit1) {
    
    row.names(visit1) <- NULL
    
    weed.above <- visit1 %>% select(filename, visit, DVS, weed.aboveA:weed.aboveC) %>% gather(Samp, weed.above, weed.aboveA:weed.aboveC) %>% 
        mutate(Samp = gsub("weed.above", "", Samp))
    
    weed.below <- visit1 %>% select(filename, visit, DVS, weed.belowA:weed.belowC) %>% gather(Samp, weed.below, weed.belowA:weed.belowC) %>% 
        mutate(Samp = gsub("weed.below", "", Samp))
    
    S.rank <- visit1 %>% select(filename, visit, DVS, S.rankA:S.rankC) %>% gather(Samp, S.rank, S.rankA:S.rankC) %>% 
        mutate(Samp = gsub("S.rank", "", Samp))
    
    BD.rank <- visit1 %>% select(filename, visit, DVS, BD.rankA:BD.rankC) %>% gather(Samp, BD.rank, BD.rankA:BD.rankC) %>% 
        mutate(Samp = gsub("BD.rank", "", Samp))
    
    G.rank <- visit1 %>% select(filename, visit, DVS, G.rankA:G.rankC) %>% gather(Samp, G.rank, G.rankA:G.rankC) %>% 
        mutate(Samp = gsub("G.rank", "", Samp))
    
    SD.rank <- visit1 %>% select(filename, visit, DVS, SD.rankA:SD.rankC) %>% gather(Samp, SD.rank, SD.rankA:SD.rankC) %>% 
        mutate(Samp = gsub("SD.rank", "", Samp))
    
    form2.weed.list <- list(weed.above, weed.below, S.rank, BD.rank, G.rank, SD.rank)
    
    VISIT1 <- merge_recurse(form2.weed.list, by = c("filename", "visit", "Samp", "DVS"))  # okay this function call from the reshape package
    
    return(VISIT1)
    
}
# eos 
