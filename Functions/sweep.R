##############################################################################
# title         : sweep.R
# purpose       : extract the sweep insect data from the sheet 2 and 3 ;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : sweep data as wide data frame format;
##############################################################################

sweep <- function(dataf2) {

    GLH.sweep1 <- dataf2[44, 5]
    names(GLH.sweep1) <- "GLH.Sweep.1"

    GLH.sweep2 <- dataf2[44, 6]
    names(GLH.sweep2) <- "GLH.Sweep.2"

    GLH.sweep3 <- dataf2[44, 7]
    names(GLH.sweep3) <- "GLH.Sweep.3"

    GLH.sweep4 <- dataf2[44, 8]
    names(GLH.sweep4) <- "GLH.Sweep.4"

    GLH.sweep5 <- dataf2[44, 9]
    names(GLH.sweep5) <- "GLH.Sweep.5"

    BPH.sweep1 <- dataf2[45, 5]
    names(BPH.sweep1) <- "BPH.Sweep.1"

    BPH.sweep2 <- dataf2[45, 6]
    names(BPH.sweep2) <- "BPH.Sweep.2"

    BPH.sweep3 <- dataf2[45, 7]
    names(BPH.sweep3) <- "BPH.Sweep.3"

    BPH.sweep4 <- dataf2[45, 8]
    names(BPH.sweep4) <- "BPH.Sweep.4"

    BPH.sweep5 <- dataf2[45, 9]
    names(BPH.sweep5) <- "BPH.Sweep.5"

    WPH.sweep1 <- dataf2[46, 5]

    names(WPH.sweep1) <- "WPH.Sweep.1"

    WPH.sweep2 <- dataf2[46, 6]
    names(WPH.sweep2) <- "WPH.Sweep.2"

    WPH.sweep3 <- dataf2[46, 7]
    names(WPH.sweep3) <- "WPH.Sweep.3"

    WPH.sweep4 <- dataf2[46, 8]
    names(WPH.sweep4) <- "WPH.Sweep.4"

    WPH.sweep5 <- dataf2[46, 9]
    names(WPH.sweep5) <- "WPH.Sweep.5"

    RC.sweep1 <- dataf2[47, 5]
    names(RC.sweep1) <- "RC.Sweep.1"

    RC.sweep2 <- dataf2[47, 6]
    names(RC.sweep2) <- "RC.Sweep.2"

    RC.sweep3 <- dataf2[47, 7]
    names(RC.sweep3) <- "RC.Sweep.3"

    RC.sweep4 <- dataf2[47, 8]
    names(RC.sweep4) <- "RC.Sweep.4"

    RC.sweep5 <- dataf2[47, 9]
    names(RC.sweep5) <- "RC.Sweep.5"

    sweep.data <- cbind(GLH.sweep1, GLH.sweep2, GLH.sweep3, GLH.sweep4, GLH.sweep5, BPH.sweep1, BPH.sweep2, BPH.sweep3,
        BPH.sweep4, BPH.sweep5, WPH.sweep1, WPH.sweep2, WPH.sweep3, WPH.sweep4, WPH.sweep5, RC.sweep1, RC.sweep2, RC.sweep3,
        RC.sweep4, RC.sweep5)

}
