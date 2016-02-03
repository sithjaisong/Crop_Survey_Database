##############################################################################
# title         : tidy_injury.R
# purpose       : reshape wide table format of injury data;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : output from injury function;
# outputs       : injury in lond table format;
##############################################################################

# this script is for the arrange the data of the form 2 each visit in the right format to anaalysis the AUDPC

tidy_injury <- function(visit2){

  row.names(visit2) <- NULL

  Nt <- visit2 %>% select(filename, visit, DVS, tillers.Q1:tillers.Q10) %>% gather(Q, Nt, tillers.Q1:tillers.Q10) %>%
    mutate(Q = gsub("tillers.Q", "", Q))

  Np <- visit2 %>% select(filename, visit, DVS, panicles.Q1:panicles.Q10) %>% gather(Q, Np, panicles.Q1:panicles.Q10) %>%
    mutate(Q = gsub("panicles.Q", "", Q))

  Nl <- visit2 %>% select(filename, visit, DVS, leaves.Q1:leaves.Q10) %>% gather(Q, Nl, leaves.Q1:leaves.Q10) %>%
    mutate(Q = gsub("leaves.Q", "", Q))

  # ===== Animal pest
  SNL <- visit2 %>% select(filename, visit, DVS, SNL.Q1:SNL.Q10) %>% gather(Q, SNL, SNL.Q1:SNL.Q10) %>% mutate(Q = gsub("SNL.Q",
                                                                                                                        "", Q))


  DH <- visit2 %>% select(filename, visit, DVS, DH.Q1:DH.Q10) %>% gather(Q, DH, DH.Q1:DH.Q10) %>% mutate(Q = gsub("DH.Q",
                                                                                                                  "", Q))

  WH <- visit2 %>% select(filename, visit, DVS, WH.Q1:BLB.Q10) %>% gather(Q, WH, WH.Q1:WH.Q10) %>% mutate(Q = gsub("WH.Q",
                                                                                                                   "", Q))


  GM <- visit2 %>% select(filename, visit, DVS, GM.Q1:GM.Q10) %>% gather(Q, GM, GM.Q1:GM.Q10) %>% mutate(Q = gsub("GM.Q",
                                                                                                                  "", Q))

  RT <- visit2 %>% select(filename, visit, DVS, RT.Q1:RT.Q10) %>% gather(Q, RT, RT.Q1:RT.Q10) %>% mutate(Q = gsub("RT.Q",
                                                                                                                  "", Q))

  WM <- visit2 %>% select(filename, visit, WM.Q1:WM.Q10) %>% gather(Q, WM, WM.Q1:WM.Q10) %>% mutate(Q = gsub("WM.Q",
                                                                                                             "", Q))

  LF <- visit2 %>% select(filename, visit, DVS, LF.Q1:LF.Q10) %>% gather(Q, LF, LF.Q1:LF.Q10) %>% mutate(Q = gsub("LF.Q",
                                                                                                                  "", Q))

  def <- visit2 %>% select(filename, visit, DVS, def.Q1:def.Q10) %>% gather(Q, def, def.Q1:def.Q10) %>% mutate(Q = gsub("def.Q",
                                                                                                                        "", Q))

  BPH <- visit2 %>% select(filename, visit, DVS, BPH.Q1:BPH.Q10) %>% gather(Q, BPH, BPH.Q1:BPH.Q10) %>% mutate(Q = gsub("BPH.Q",
                                                                                                                        "", Q))

  WH <- visit2 %>% select(filename, visit, DVS, WH.Q1:WH.Q10) %>% gather(Q, WH, WH.Q1:WH.Q10) %>% mutate(Q = gsub("WH.Q",
                                                                                                                  "", Q))

  WPH <- visit2 %>% select(filename, visit, DVS, WPH.Q1:WPH.Q10) %>% gather(Q, WPH, WPH.Q1:WPH.Q10) %>% mutate(Q = gsub("WPH.Q",
                                                                                                                        "", Q))

  AW <- visit2 %>% select(filename, visit, DVS, AW.Q1:AW.Q10) %>% gather(Q, AW, AW.Q1:AW.Q10) %>% mutate(Q = gsub("AW.Q",
                                                                                                                  "", Q))

  RB <- visit2 %>% select(filename, visit, DVS, RB.Q1:RB.Q10) %>% gather(Q, RB, RB.Q1:RB.Q10) %>% mutate(Q = gsub("RB.Q",
                                                                                                                  "", Q))

  # ====== Disease ====#

  BLB <- visit2 %>% select(filename, visit, DVS, BLB.Q1:BLB.Q10) %>% gather(Q, BLB, BLB.Q1:BLB.Q10) %>% mutate(Q = gsub("BLB.Q",
                                                                                                                        "", Q))

  LB <- visit2 %>% select(filename, visit, LB.Q1:LB.Q10) %>% gather(Q, LB, LB.Q1:LB.Q10) %>% mutate(Q = gsub("LB.Q",
                                                                                                             "", Q))

  BS <- visit2 %>% select(filename, visit, DVS, BS.Q1:BS.Q10) %>% gather(Q, BS, BS.Q1:BS.Q10) %>% mutate(Q = gsub("BS.Q",
                                                                                                                  "", Q))

  BLS <- visit2 %>% select(filename, visit, BLS.Q1:BLS.Q10) %>% gather(Q, BLS, BLS.Q1:BLS.Q10) %>% mutate(Q = gsub("BLS.Q",
                                                                                                                   "", Q))

  NBS <- visit2 %>% select(filename, visit, DVS, NBS.Q1:NBS.Q10) %>% gather(Q, NBS, NBS.Q1:NBS.Q10) %>% mutate(Q = gsub("NBS.Q",
                                                                                                                        "", Q))

  RS <- visit2 %>% select(filename, visit, DVS, RS.Q1:RS.Q10) %>% gather(Q, RS, RS.Q1:RS.Q10) %>% mutate(Q = gsub("RS.Q",
                                                                                                                  "", Q))

  SHB <- visit2 %>% select(filename, visit, DVS, SHB.Q1:SHB.Q10) %>% gather(Q, SHB, SHB.Q1:SHB.Q10) %>% mutate(Q = gsub("SHB.Q",
                                                                                                                        "", Q))

  SHR <- visit2 %>% select(filename, visit, DVS, SHR.Q1:SHR.Q10) %>% gather(Q, SHR, SHR.Q1:SHR.Q10) %>% mutate(Q = gsub("SHR.Q",
                                                                                                                        "", Q))

  SR <- visit2 %>% select(filename, visit, DVS, SR.Q1:SR.Q10) %>% gather(Q, SR, SR.Q1:SR.Q10) %>% mutate(Q = gsub("SR.Q",
                                                                                                                  "", Q))

  FS <- visit2 %>% select(filename, visit, FS.Q1:FS.Q10) %>% gather(Q, FS, FS.Q1:FS.Q10) %>% mutate(Q = gsub("FS.Q",
                                                                                                             "", Q))

  NB <- visit2 %>% select(filename, visit, DVS, NB.Q1:NB.Q10) %>% gather(Q, NB, NB.Q1:NB.Q10) %>% mutate(Q = gsub("NB.Q",
                                                                                                                  "", Q))

  DP <- visit2 %>% select(filename, visit, DVS, DP.Q1:DP.Q10) %>% gather(Q, DP, DP.Q1:DP.Q10) %>% mutate(Q = gsub("DP.Q",
                                                                                                                  "", Q))

  # ==== Final output

  form2.data.list <- list(Nt, Np, Nl, SNL, DH, WH, GM, RT, WM, def, LF, BPH, WPH, AW, RB, BLB, LB, BS, BLS, NBS, RS,
                          SHB, SHR, SR, FS, NB, DP)

  visit2 <- merge_recurse(form2.data.list, by = c("filename", "visit", "Q", "DVS"))  # okay this function call from the reshape package

  return(visit2)
}
# eos
