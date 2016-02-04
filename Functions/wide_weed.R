##############################################################################
# title         : weed.R;
# purpose       : extract the weed data from excel sheet 2 and 3;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey (excel) at sheet 2 and 3;
# outputs       : `weeddata` long format data frame of weed data
##############################################################################

wide_weed <- function(dataf2) {
    # ==========WEEDS==========
    DVS <- dataf2[3, 4]
    names(DVS) <- "DVS"

    weed.aboveA <- dataf2[16, 3]
    names(weed.aboveA) <- "Weed.Above.A"

    weed.aboveB <- dataf2[16, 4]
    names(weed.aboveB) <- "Weed.Above.B"

    weed.aboveC <- dataf2[16, 5]
    names(weed.aboveC) <- "Weed.Above.C"

    weed.belowA <- dataf2[17, 3]
    names(weed.belowA) <- "Weed.Below.A"

    weed.belowB <- dataf2[17, 4]
    names(weed.belowB) <- "Weed.Below.B"

    weed.belowC <- dataf2[17, 5]
    names(weed.belowC) <- "Weed.Below.C"

    S.rankA <- dataf2[16, 11]
    names(S.rankA) <- "S.Rank.A"

    S.rankB <- dataf2[16, 12]
    names(S.rankB) <- "S.Rank.B"

    S.rankC <- dataf2[16, 13]
    names(S.rankC) <- "S.Rank.C"

    BD.rankA <- dataf2[17, 11]
    names(BD.rankA) <- "BD.Rank.A"

    BD.rankB <- dataf2[17, 12]
    names(BD.rankB) <- "BD.Rank.B"

    BD.rankC <- dataf2[17, 13]
    names(BD.rankC) <- "BD.Rank.C"

    G.rankA <- dataf2[18, 11]
    names(G.rankA) <- "G.Rank.A"

    G.rankB <- dataf2[18, 12]
    names(G.rankB) <- "G.Rank.B"

    G.rankC <- dataf2[18, 13]
    names(G.rankC) <- "G.Rank.C"

    SD.rankA <- dataf2[19, 11]
    names(SD.rankA) <- "SD.Rank.A"

    SD.rankB <- dataf2[19, 12]
    names(SD.rankB) <- "SD.Rank.B"

    SD.rankC <- dataf2[19, 13]
    names(SD.rankC) <- "SD.Rank.C"

    weed.sp1 <- dataf2[16, 15]
    names(weed.sp1) <- "Weed.Species.1"

    weed.sp2 <- dataf2[17, 15]
    names(weed.sp2) <- "Weed.Species.2"

    weed.sp3 <- dataf2[18, 15]

    names(weed.sp3) <- "Weed.Species.3"

    weed.sp4 <- dataf2[19, 15]

    names(weed.sp4) <- "Weed.Species.4"

    weed.data <- cbind(DVS, weed.aboveA, weed.aboveB, weed.aboveC, weed.belowA,
        weed.belowB, weed.belowC, S.rankA, S.rankB, S.rankC, BD.rankA,
        BD.rankB, BD.rankC, G.rankA, G.rankB, G.rankC, SD.rankA, SD.rankB,
        SD.rankC)
    return(weed.data)

}
