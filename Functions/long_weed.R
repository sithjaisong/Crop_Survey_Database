##############################################################################
# title         : tidy_weed.R;
# purpose       : to reshape wide data format to long data format;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : output from weed function;
# outputs       : weed long table format
##############################################################################


long_weed <- function(visit2) {

    row.names(visit2) <- NULL

    weed.above <- visit2 %>% select( visit, DVS, weed.aboveA:weed.aboveC) %>% gather(Area, weed.above, weed.aboveA:weed.aboveC) %>%
        mutate(Area = gsub("weed.above", "", Area))

    weed.below <- visit2 %>% select( visit, DVS, weed.belowA:weed.belowC) %>% gather(Area, weed.below, weed.belowA:weed.belowC) %>%
        mutate(Area = gsub("weed.below", "", Area))

    S.rank <- visit2 %>% select( visit, DVS, S.rankA:S.rankC) %>% gather(Area, S.rank, S.rankA:S.rankC) %>%
        mutate(Area = gsub("S.rank", "", Area))

    BD.rank <- visit2 %>% select( visit, DVS, BD.rankA:BD.rankC) %>% gather(Area, BD.rank, BD.rankA:BD.rankC) %>%
        mutate(Area = gsub("BD.rank", "", Area))

    G.rank <- visit2 %>% select( visit, DVS, G.rankA:G.rankC) %>% gather(Area, G.rank, G.rankA:G.rankC) %>%
        mutate(Area = gsub("G.rank", "", Area))

    SD.rank <- visit2 %>% select( visit, DVS, SD.rankA:SD.rankC) %>% gather(Area, SD.rank, SD.rankA:SD.rankC) %>%
        mutate(Area = gsub("SD.rank", "", Area))

    form2.weed.list <- list(weed.above, weed.below, S.rank, BD.rank, G.rank, SD.rank)

    VISIT2 <- merge_recurse(form2.weed.list, by = c("visit", "Area", "DVS"))  # okay this function call from the reshape package

    return(VISIT2)

}
# eos
