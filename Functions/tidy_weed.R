tidy_weed <- function(visit2) {
    
    row.names(visit2) <- NULL
    
    weed.above <- visit2 %>% select(filename, visit, DVS, weed.aboveA:weed.aboveC) %>% gather(Area, weed.above, weed.aboveA:weed.aboveC) %>% 
        mutate(Area = gsub("weed.above", "", Area))
    
    weed.below <- visit2 %>% select(filename, visit, DVS, weed.belowA:weed.belowC) %>% gather(Area, weed.below, weed.belowA:weed.belowC) %>% 
        mutate(Area = gsub("weed.below", "", Area))
    
    S.rank <- visit2 %>% select(filename, visit, DVS, S.rankA:S.rankC) %>% gather(Area, S.rank, S.rankA:S.rankC) %>% 
        mutate(Area = gsub("S.rank", "", Area))
    
    BD.rank <- visit2 %>% select(filename, visit, DVS, BD.rankA:BD.rankC) %>% gather(Area, BD.rank, BD.rankA:BD.rankC) %>% 
        mutate(Area = gsub("BD.rank", "", Area))
    
    G.rank <- visit2 %>% select(filename, visit, DVS, G.rankA:G.rankC) %>% gather(Area, G.rank, G.rankA:G.rankC) %>% 
        mutate(Area = gsub("G.rank", "", Area))
    
    SD.rank <- visit2 %>% select(filename, visit, DVS, SD.rankA:SD.rankC) %>% gather(Area, SD.rank, SD.rankA:SD.rankC) %>% 
        mutate(Area = gsub("SD.rank", "", Area))
    
    form2.weed.list <- list(weed.above, weed.below, S.rank, BD.rank, G.rank, SD.rank)
    
    VISIT2 <- merge_recurse(form2.weed.list, by = c("filename", "visit", "Area", "DVS"))  # okay this function call from the reshape package
    
    return(VISIT2)
    
}
# eos 
