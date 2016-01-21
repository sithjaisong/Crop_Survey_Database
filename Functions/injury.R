
injury <- function(dataf2){
  
  tillers.Q1 <- dataf2[8, 5]
  names(tillers.Q1) <- 'Tillers.Q1'
  
  tillers.Q2 <- dataf2[8, 6]
  names(tillers.Q2) <- 'Tillers.Q2'
  
  tillers.Q3 <- dataf2[8, 7] 
  names(tillers.Q3) <- 'Tillers.Q3'
  
  tillers.Q4 <- dataf2[8, 8]
  names(tillers.Q4) <- 'Tillers.Q4'
  
  tillers.Q5 <- dataf2[8, 9] 
  names(tillers.Q5) <- 'Tillers.Q5'
  
  tillers.Q6 <- dataf2[8, 10]
  names(tillers.Q6) <- 'Tillers.Q6'
  
  tillers.Q7 <- dataf2[8, 11]
  names(tillers.Q7) <- 'Tillers.Q7'
  
  tillers.Q8 <- dataf2[8, 12] 
  names(tillers.Q8) <- 'Tillers.Q8'
  
  tillers.Q9 <- dataf2[8 ,13] 
  names(tillers.Q9) <- 'Tillers.Q9'
  
  tillers.Q10 <- dataf2[8, 14]
  names(tillers.Q10) <- 'Tillers.Q10'
  
  panicles.Q1 <- dataf2[9, 5]
  names(panicles.Q1) <- 'Panicle.Q1'
  
  panicles.Q2 <- dataf2[9, 6]
  names(panicles.Q2) <- 'Panicle.Q2'
  
  panicles.Q3 <- dataf2[9, 7]
  names(panicles.Q3) <- 'Panicle.Q3'
  
  panicles.Q4 <- dataf2[9, 8]
  names(panicles.Q4) <- 'Panicle.Q4'
  
  panicles.Q5 <- dataf2[9, 9]
  names(panicles.Q5) <- 'Panicle.Q5'
  
  panicles.Q6 <- dataf2[9, 10]
  names(panicles.Q6) <- 'Panicle.Q6'
  
  panicles.Q7 <- dataf2[9, 11]
  names(panicles.Q7) <- 'Panicle.Q7'
  
  panicles.Q8 <- dataf2[9, 12]
  names(panicles.Q8) <- 'Panicle.Q8'
  
  panicles.Q9 <- dataf2[9, 13]
  names(panicles.Q9) <- 'Panicle.Q9'
  
  panicles.Q10 <- dataf2[9, 14]
  names(panicles.Q10) <- 'Panicle.Q10'
  
  leaves.Q1 <- dataf2[10, 5]
  names(leaves.Q1) <- 'Leaves.Q1'
  
  leaves.Q2 <- dataf2[10, 6] 
  names(leaves.Q2) <- 'Leaves.Q2'
  
  leaves.Q3 <- dataf2[10, 7] 
  names(leaves.Q3) <- 'Leaves.Q3'
  
  leaves.Q4 <- dataf2[10, 8] 
  names(leaves.Q4) <- 'Leaves.Q4'
  
  leaves.Q5 <- dataf2[10, 9] 
  names(leaves.Q5) <- 'Leaves.Q5'
  
  leaves.Q6 <- dataf2[10, 10]
  names(leaves.Q6) <- 'Leaves.Q6'
  
  leaves.Q7 <- dataf2[10,11]
  names(leaves.Q7) <- 'Leaves.Q7'
  
  leaves.Q8 <- dataf2[10, 12] 
  names(leaves.Q8) <- 'Leaves.Q8'
  
  leaves.Q9 <- dataf2[10, 13] 
  names(leaves.Q9) <- 'Leaves.Q9'
  
  leaves.Q10 <- dataf2[10, 14] 
  names(leaves.Q10) <- 'Leaves.Q10'       
  
  #===Animal pests=====#
  
  SNL.Q1 <- dataf2[23, 5] 
  names(SNL.Q1) <- 'SNL.Q1'
  
  SNL.Q2 <-  dataf2[23, 6]
  names(SNL.Q2) <- 'SNL.Q2'
  
  SNL.Q3 <- dataf2[23, 7] 
  names(SNL.Q3) <- 'SNL.Q3'
  
  SNL.Q4 <- dataf2[23, 8]
  names(SNL.Q4) <- 'SNL.Q4'
  
  SNL.Q5 <- dataf2[23, 9]
  names(SNL.Q5) <- 'SNL.Q5'
  
  SNL.Q6 <- dataf2[23, 10]
  names(SNL.Q6) <- 'SNL.Q6'
  
  SNL.Q7 <- dataf2[23, 11]
  names(SNL.Q7) <- 'SNL.Q7'
  
  SNL.Q8 <- dataf2[23, 12]
  names(SNL.Q8) <- 'SNL.Q8'
  
  SNL.Q9 <- dataf2[23, 13]
  names(SNL.Q9) <- 'SNL.Q9'
  
  SNL.Q10 <- dataf2[23, 14]
  names(SNL.Q10) <- 'SNL.Q10'
  
  DH.Q1 <- dataf2[27, 5]
  names(DH.Q1) <- 'DH.Q1'
  
  DH.Q2 <- dataf2[27, 6]
  names(DH.Q2) <- 'DH.Q2'
  
  DH.Q3 <- dataf2[27, 7]
  names(DH.Q3) <- 'DH.Q3'
  
  DH.Q4 <- dataf2[27, 8]
  names(DH.Q4) <- 'DH.Q4'
  
  DH.Q5 <- dataf2[27, 9]
  names(DH.Q5) <- 'DH.Q5'
  
  DH.Q6 <- dataf2[27, 10]
  names(DH.Q6) <- 'DH.Q6'
  
  DH.Q7 <- dataf2[27, 11]
  names(DH.Q7) <- 'DH.Q7'
  
  DH.Q8 <- dataf2[27, 12]
  names(DH.Q8) <- 'DH.Q8'
  
  DH.Q9 <- dataf2[27, 13]
  names(DH.Q9) <- 'DH.Q9'
  
  DH.Q10 <- dataf2[27, 14]
  names(DH.Q10) <- 'DH.Q10'
  
  WH.Q1 <- dataf2[28, 5]
  names(WH.Q1) <- 'WH.Q1'
  
  WH.Q2 <- dataf2[28, 6]
  names(WH.Q2) <- 'WH.Q2'
  
  WH.Q3 <- dataf2[28, 7]
  names(WH.Q3) <- 'WH.Q3'
  
  WH.Q4 <- dataf2[28, 8]
  names(WH.Q4) <- 'WH.Q4'
  
  WH.Q5 <- dataf2[28, 9]
  
  names(WH.Q5) <- 'WH.Q5'
  
  WH.Q6 <- dataf2[28, 10]
  names(WH.Q6) <- 'WH.Q6'
  
  WH.Q7 <- dataf2[28, 11]
  names(WH.Q7) <- 'WH.Q7'
  
  WH.Q8 <- dataf2[28, 12]
  names(WH.Q8) <- 'WH.Q8'
  
  WH.Q9 <- dataf2[28, 13]
  names(WH.Q9) <- 'WH.Q9'
  
  WH.Q10 <- dataf2[28, 14]
  names(WH.Q10) <- 'WH.Q10'
  
  GM.Q1 <- dataf2[29, 5]
  names(GM.Q1) <- 'GM.Q1'
  
  GM.Q2 <- dataf2[29, 6]
  names(GM.Q2) <- 'GM.Q2'
  
  GM.Q3 <- dataf2[29, 7]
  names(GM.Q3) <- 'GM.Q3'
  
  GM.Q4 <- dataf2[29, 8]
  names(GM.Q4) <- 'GM.Q4'
  
  GM.Q5 <- dataf2[29, 9]
  names(GM.Q5) <- 'GM.Q5'
  
  GM.Q6 <- dataf2[29, 10]
  names(GM.Q6) <- 'GM.Q6'
  
  GM.Q7 <- dataf2[29, 11]
  names(GM.Q7) <- 'GM.Q7'
  
  GM.Q8 <- dataf2[29, 12]
  names(GM.Q8) <- 'GM.Q8'
  
  GM.Q9 <- dataf2[29, 13]
  names(GM.Q9) <- 'GM.Q9'
  
  GM.Q10 <- dataf2[29, 14]
  names(GM.Q10) <- 'GM.Q10'
  
  RT.Q1 <- dataf2[30, 5]
  names(RT.Q1) <- 'RT.Q1'
  
  RT.Q2 <- dataf2[30, 6]
  names(RT.Q2) <- 'RT.Q2'
  
  RT.Q3 <- dataf2[30, 7]
  names(RT.Q3) <- 'RT.Q3'
  
  RT.Q4 <- dataf2[30, 8]
  names(RT.Q4) <- 'RT.Q4'
  
  RT.Q5 <- dataf2[30, 9]
  names(RT.Q5) <- 'RT.Q5'
  
  RT.Q6 <- dataf2[30, 10]
  names(RT.Q6) <- 'RT.Q6'
  
  RT.Q7 <- dataf2[30, 11]
  names(RT.Q7) <- 'RT.Q7'
  
  RT.Q8 <- dataf2[30, 12]
  
  names(RT.Q8) <- 'RT.Q8'
  
  RT.Q9 <- dataf2[30, 13]
  names(RT.Q9) <- 'RT.Q9'
  
  RT.Q10 <- dataf2[30, 14]
  
  names(RT.Q10) <- 'RT.Q10'
  
  WM.Q1 <- dataf2[33, 5]
  
  names(WM.Q1) <- 'WM.Q1'
  
  WM.Q2 <- dataf2[33, 6]
  names(WM.Q2) <- 'WM.Q2'
  
  WM.Q3 <- dataf2[33, 7]
  names(WM.Q3) <- 'WM.Q3'
  
  WM.Q4 <- dataf2[33, 8]
  names(WM.Q4) <- 'WM.Q4'
  
  WM.Q5 <- dataf2[33, 9]
  names(WM.Q5) <- 'WM.Q5'
  
  WM.Q6 <- dataf2[33, 10]
  names(WM.Q6) <- 'WM.Q6'
  
  WM.Q7 <- dataf2[33, 11]
  names(WM.Q7) <- 'WM.Q7'
  
  WM.Q8 <- dataf2[33, 12]
  names(WM.Q8) <- 'WM.Q8'
  
  WM.Q9 <- dataf2[33, 13]
  names(WM.Q9) <- 'WM.Q9'
  
  WM.Q10 <- dataf2[ 33, 14]
  names(WM.Q10) <- 'WM.Q10'
  
  LF.Q1 <- dataf2[34, 5]
  names(LF.Q1) <- 'LF.Q1'
  
  LF.Q2 <- dataf2[34, 6]
  names(LF.Q2) <- 'LF.Q2'
  
  LF.Q3 <- dataf2[34, 7]
  names(LF.Q3) <- 'LF.Q3'
  
  LF.Q4 <- dataf2[34, 8]
  names(LF.Q4) <- 'LF.Q4'
  
  LF.Q5 <-dataf2[34, 9]
  names(LF.Q5) <- 'LF.Q5'
  
  LF.Q6 <- dataf2[ 34, 10]
  names(LF.Q6) <- 'LF.Q6'
  
  LF.Q7 <- dataf2[34, 11]
  names(LF.Q7) <- 'LF.Q7'
  
  LF.Q8 <- dataf2[ 34, 12]
  names(LF.Q8) <- 'LF.Q8'
  
  LF.Q9 <- dataf2[34, 13]
  names(LF.Q9) <- 'LF.Q9'
  
  LF.Q10 <- dataf2[ 34, 14]
  names(LF.Q10) <- 'LF.Q10'
  
  def.Q1 <- dataf2[ 35, 5]
  names(def.Q1) <- 'def.Q1'
  
  def.Q2 <- dataf2[35, 6]
  names(def.Q2) <- 'def.Q2'
  
  def.Q3 <- dataf2[35, 7]
  names(def.Q3) <- 'def.Q3'
  
  def.Q4 <- dataf2[35, 8]
  names(def.Q4) <- 'def.Q4'
  
  def.Q5 <- dataf2[35, 9]
  names(def.Q5) <- 'def.Q5'
  
  def.Q6 <- dataf2[35, 10]
  names(def.Q6) <- 'def.Q6'
  
  def.Q7 <- dataf2[35, 11]
  names(def.Q7) <- 'def.Q7'
  
  def.Q8 <- dataf2[35, 12]
  names(def.Q8) <- 'def.Q8'
  
  def.Q9 <- dataf2[35, 13]
  names(def.Q9) <- 'def.Q9'
  
  def.Q10 <- dataf2[35, 14]
  names(def.Q10) <- 'def.Q10'
  
  BPH.Q1 <- dataf2[37, 5]
  names(BPH.Q1) <- 'BPH.Q1'
  
  BPH.Q2 <- dataf2[37, 6]
  names(BPH.Q2) <- 'BPH.Q2'
  
  BPH.Q3 <- dataf2[37, 7]
  names(BPH.Q3) <- 'BPH.Q3'
  
  BPH.Q4 <- dataf2[37, 8]
  names(BPH.Q4) <- 'BPH.Q4'
  
  BPH.Q5 <- dataf2[37, 9]
  names(BPH.Q5) <- 'BPH.Q5'
  
  BPH.Q6 <- dataf2[37, 10]
  names(BPH.Q6) <- 'BPH.Q6'
  
  BPH.Q7 <- dataf2[37, 11]
  names(BPH.Q7) <- 'BPH.Q7'
  
  BPH.Q8 <- dataf2[37, 12]
  names(BPH.Q8) <- 'BPH.Q8'
  
  BPH.Q9 <- dataf2[37, 13]
  names(BPH.Q9) <- 'BPH.Q9'
  
  BPH.Q10 <- dataf2[37, 14]
  names(BPH.Q10) <- 'BPH.Q10'
  
  WPH.Q1 <- dataf2[38, 5]
  names(WPH.Q1) <- 'WPH.Q1'
  
  WPH.Q2 <- dataf2[38, 6]
  names(WPH.Q2) <- 'WPH.Q2'
  
  WPH.Q3 <- dataf2[38, 7]
  names(WPH.Q3) <- 'WPH.Q3'
  
  WPH.Q4 <- dataf2[38, 8]
  names(WPH.Q4) <- 'WPH.Q4'
  
  WPH.Q5 <- dataf2[38, 9]
  names(WPH.Q5) <- 'WPH.Q5'
  
  WPH.Q6 <- dataf2[38, 10]
  names(WPH.Q6) <- 'WPH.Q6'
  
  WPH.Q7 <- dataf2[38, 11]
  names(WPH.Q7) <- 'WPH.Q7'
  
  WPH.Q8 <- dataf2[38, 12] 
  names(WPH.Q8) <- 'WPH.Q8'
  
  WPH.Q9 <- dataf2[38, 13]
  names(WPH.Q9) <- 'WPH.Q9'
  
  WPH.Q10 <- dataf2[38 ,14]
  names(WPH.Q10) <- 'WPH.Q10'
  
  AW.Q1 <- dataf2[39, 5]
  names(AW.Q1) <- 'AW.Q1'
  
  AW.Q2 <- dataf2[39, 6]
  names(AW.Q2) <- 'AW.Q2'
  
  AW.Q3 <- dataf2[39, 7]
  names(AW.Q3) <- 'AW.Q3'
  
  AW.Q4 <- dataf2[39, 8]
  names(AW.Q4) <- 'AW.Q4'
  
  AW.Q5 <- dataf2[39, 9]
  names(AW.Q5) <- 'AW.Q5'
  
  AW.Q6 <- dataf2[ 39, 10]
  names(AW.Q6) <- 'AW.Q6'
  
  AW.Q7 <- dataf2[39, 11]
  names(AW.Q7) <- 'AW.Q7'
  
  AW.Q8 <- dataf2[39, 12]
  names(AW.Q8) <- 'AW.Q8'
  
  AW.Q9 <- dataf2[39, 13]
  names(AW.Q9) <- 'AW.Q9'
  
  AW.Q10 <- dataf2[39, 14]
  names(AW.Q10) <- 'AW.Q10'
  
  RB.Q1 <- dataf2[40, 5]
  names(RB.Q1) <- 'RB.Q1'
  
  RB.Q2 <- dataf2[40, 6]
  names(RB.Q2) <- 'RB.Q2'
  
  RB.Q3 <- dataf2[40, 7]
  names(RB.Q3) <- 'RB.Q3'
  
  RB.Q4 <- dataf2[40, 8]
  names(RB.Q4) <- 'RB.Q4'
  
  RB.Q5 <- dataf2[40, 9]
  names(RB.Q5) <- 'RB.Q5'
  
  RB.Q6 <- dataf2[40, 10]
  names(RB.Q6) <- 'RB.Q6'
  
  RB.Q7 <- dataf2[40, 11]
  names(RB.Q7) <- 'RB.Q7'
  
  RB.Q8 <- dataf2[40, 12]
  names(RB.Q8) <- 'RB.Q8'
  
  RB.Q9 <- dataf2[40, 13]
  names(RB.Q9) <- 'RB.Q9'
  
  RB.Q10 <- dataf2[40, 14]
  names(RB.Q10) <- 'RB.Q10'
  
  #====Disease====#
  
  BLB.Q1 <- dataf2[50, 5]
  names(BLB.Q1) <- 'BLB.Q1'
  
  BLB.Q2 <- dataf2[50, 6]
  names(BLB.Q2) <- 'BLB.Q2'
  
  BLB.Q3 <- dataf2[50, 7]
  names(BLB.Q3) <- 'BLB.Q3'
  
  BLB.Q4 <- dataf2[50, 8]
  names(BLB.Q4) <- 'BLB.Q4'
  
  BLB.Q5 <- dataf2[50, 9]
  names(BLB.Q5) <- 'BLB.Q5'
  
  BLB.Q6 <- dataf2[50, 10]
  names(BLB.Q6) <- 'BLB.Q6'
  
  BLB.Q7 <- dataf2[50, 11]
  names(BLB.Q7) <- 'BLB.Q7'
  
  BLB.Q8 <- dataf2[50, 12]
  names(BLB.Q8) <- 'BLB.Q8'
  
  BLB.Q9 <- dataf2[50, 13]
  names(BLB.Q9) <- 'BLB.Q9'
  
  BLB.Q10 <- dataf2[50, 14]
  names(BLB.Q10) <- 'BLB.Q10'
  
  LB.Q1 <- dataf2[51, 5]
  names(LB.Q1) <- 'LB.Q1'
  
  LB.Q2 <- dataf2[51, 6]
  names(LB.Q2) <- 'LB.Q2'
  
  LB.Q3 <- dataf2[51, 7]
  names(LB.Q3) <- 'LB.Q3'
  
  LB.Q4 <- dataf2[51, 8]
  names(LB.Q4) <- 'LB.Q4'
  
  LB.Q5 <- dataf2[51, 9]
  names(LB.Q5) <- 'LB.Q5'
  
  LB.Q6 <- dataf2[51, 10]
  names(LB.Q6) <- 'LB.Q6'
  
  LB.Q7 <- dataf2[51, 11]
  names(LB.Q7) <- 'LB.Q7'
  
  LB.Q8 <- dataf2[51, 12]
  names(LB.Q8) <- 'LB.Q8'
  
  LB.Q9 <- dataf2[51, 13]
  names(LB.Q9) <- 'LB.Q9'
  
  LB.Q10 <- dataf2[51, 14]
  names(LB.Q10) <- 'LB.Q10'
  
  BS.Q1 <- dataf2[52, 5]
  names(BS.Q1) <- 'BS.Q1'
  
  BS.Q2 <- dataf2[52, 6]
  names(BS.Q2) <- 'BS.Q2'
  
  BS.Q3 <-dataf2[52, 7]
  names(BS.Q3) <- 'BS.Q3'
  
  BS.Q4 <- dataf2[52, 8]
  names(BS.Q4) <- 'BS.Q4'
  
  BS.Q5 <- dataf2[52, 9]
  names(BS.Q5) <- 'BS.Q5'
  
  BS.Q6 <- dataf2[52, 10]
  names(BS.Q6) <- 'BS.Q6'
  
  BS.Q7 <- dataf2[52, 11]
  names(BS.Q7) <- BS.Q7
  
  BS.Q8 <- dataf2[52, 12]
  names(BS.Q8) <- 'BS.Q8'
  
  BS.Q9 <- dataf2[52, 13]
  names(BS.Q9) <- 'BS.Q9'
  
  BS.Q10 <- dataf2[52, 14]
  names(BS.Q10) <- 'BS.Q10'
  
  BLS.Q1 <- dataf2[53, 5]
  names(BLS.Q1) <- 'BLS.Q1'
  
  BLS.Q2 <- dataf2[53, 6]
  names(BLS.Q2) <- 'BLS.Q2'
  
  BLS.Q3 <- dataf2[53, 7]
  names(BLS.Q3) <- 'BLS.Q3'
  
  BLS.Q4 <- dataf2[53, 8]
  names(BLS.Q4) <- 'BLS.Q4'
  
  BLS.Q5 <- dataf2[53, 9]
  names(BLS.Q5) <- 'BLS.Q5'
  
  BLS.Q6 <- dataf2[53, 10]
  names(BLS.Q6) <- 'BLS.Q6'
  
  BLS.Q7 <- dataf2[53, 11]
  names(BLS.Q7) <- 'BLS.Q7'
  
  BLS.Q8 <- dataf2[53, 12]
  names(BLS.Q8) <- 'BLS.Q8'
  
  BLS.Q9 <- dataf2[53, 13]
  names(BLS.Q9) <- 'BLS.Q9'
  
  BLS.Q10 <- dataf2[53, 14]
  names(BLS.Q10) <- 'BLS.Q10'
  
  NBS.Q1 <- dataf2[54, 5]
  names(NBS.Q1) <- 'NBS.Q1'
  
  NBS.Q2 <- dataf2[54, 6]
  names(NBS.Q2) <- 'NBS.Q2'
  
  NBS.Q3 <- dataf2[54,7]
  names(NBS.Q3) <- 'NBS.Q3'
  
  NBS.Q4 <- dataf2[54, 8]
  names(NBS.Q4) <- 'NBS.Q4'
  
  NBS.Q5 <- dataf2[54,9]
  names(NBS.Q5) <- 'NBS.Q5'
  
  NBS.Q6 <-  dataf2[54,10]
  names(NBS.Q6) <- 'NBS.Q6'
  
  NBS.Q7 <- dataf2[54, 11]
  names(NBS.Q7) <- NBS.Q7
  
  NBS.Q8 <- dataf2[54, 12]
  names(NBS.Q8) <- 'NBS.Q8'
  
  NBS.Q9 <- dataf2[54,13]
  names(NBS.Q9) <- 'NBS.Q9'
  
  NBS.Q10 <- dataf2[54, 14]
  names(NBS.Q10) <- 'NBS.Q10'
  
  RS.Q1 <- dataf2[55, 5]
  names(RS.Q1) <- 'RS.Q1'
  
  RS.Q2 <- dataf2[55, 6]
  names(RS.Q2) <- 'RS.Q2'
  
  RS.Q3 <- dataf2[55, 7]
  names(RS.Q3) <- 'RS.Q3'
  
  RS.Q4 <- dataf2[55, 7]
  names(RS.Q4) <- 'RS.Q4'
  
  RS.Q5 <- dataf2[55, 9]
  names(RS.Q5) <- 'RS.Q5'
  
  RS.Q6 <- dataf2[55, 10]
  names(RS.Q6) <- 'RS.Q6'
  
  RS.Q7 <- dataf2[55, 11]
  names(RS.Q7) <- RS.Q7
  
  RS.Q8 <- dataf2[55, 12]
  names(RS.Q8) <- 'RS.Q8'
  
  RS.Q9 <- dataf2[55, 13]
  names(RS.Q9) <- 'RS.Q9'
  
  RS.Q10 <- dataf2[55, 14]
  names(RS.Q10) <- 'RS.Q10'
  
  LS.Q1 <- dataf2[56, 5]
  names(LS.Q1) <- 'LS.Q1'
  
  LS.Q2 <- dataf2[56, 6]
  names(LS.Q2) <- 'LS.Q2'
  
  LS.Q3 <- dataf2[56, 7]
  names(LS.Q3) <- 'LS.Q3'
  
  LS.Q4 <- dataf2[56, 8]
  names(LS.Q4) <- 'LS.Q4'
  
  LS.Q5 <- dataf2[56, 9]
  names(LS.Q5) <- 'LS.Q5'
  
  LS.Q6 <- dataf2[56, 10]
  names(LS.Q6) <- 'LS.Q6'
  
  LS.Q7 <- dataf2[56, 11]
  names(LS.Q7) <- 'LS.Q7'
  
  LS.Q8 <- dataf2[56, 12]
  names(LS.Q8) <- 'LS.Q8'
  
  LS.Q9 <- dataf2[56, 13]
  names(LS.Q9) <- 'LS.Q9'
  
  LS.Q10 <- dataf2[56, 14]
  names(LS.Q10) <- 'LS.Q10'
  
  SHB.Q1 <- dataf2[58, 5]
  names(SHB.Q1) <- 'SHB.Q1'
  
  SHB.Q2 <- dataf2[58, 6]
  names(SHB.Q2) <- 'SHB.Q2'
  
  SHB.Q3 <- dataf2[58, 7]
  names(SHB.Q3) <- 'SHB.Q3'
  
  SHB.Q4 <- dataf2[58, 8]
  names(SHB.Q4) <- 'SHB.Q4'
  
  SHB.Q5 <- dataf2[58, 9]
  names(SHB.Q5) <- 'SHB.Q5'
  
  SHB.Q6 <- dataf2[58, 10]
  names(SHB.Q6) <- 'SHB.Q6'
  
  SHB.Q7 <- dataf2[58, 11]
  names(SHB.Q7) <- 'SHB.Q7'
  
  SHB.Q8 <- dataf2[58, 12]
  names(SHB.Q8) <- 'SHB.Q8'
  
  SHB.Q9 <- dataf2[58, 13]
  names(SHB.Q9) <- 'SHB.Q9'
  
  SHB.Q10 <- dataf2[58, 14]
  names(SHB.Q10) <- 'SHB.Q10'
  
  SHR.Q1 <- dataf2[59, 5]
  names(SHR.Q1) <- 'SHR.Q1'
  
  SHR.Q2 <- dataf2[59, 6]
  names(SHR.Q2) <- 'SHR.Q2'
  
  SHR.Q3 <- dataf2[59, 7]
  names(SHR.Q3) <- 'SHR.Q3'
  
  SHR.Q4 <- dataf2[59, 8]
  names(SHR.Q4) <- 'SHR.Q4'
  
  SHR.Q5 <- dataf2[59, 9]
  names(SHR.Q5) <- 'SHR.Q5'
  
  SHR.Q6 <- dataf2[59, 10]
  names(SHR.Q6) <- 'SHR.Q6'
  
  SHR.Q7 <- dataf2[59, 11]
  names(SHR.Q7) <- 'SHR.Q7'
  
  SHR.Q8 <- dataf2[59, 12]
  names(SHR.Q8) <- 'SHR.Q8'
  
  SHR.Q9 <- dataf2[59, 13]
  names(SHR.Q9) <- 'SHR.Q9'
  
  SHR.Q10 <- dataf2[59, 14]
  names(SHR.Q10) <- 'SHR.Q10'
  
  SR.Q1 <- dataf2[60, 5]
  names(SR.Q1) <- 'SR.Q1'
  
  SR.Q2 <- dataf2[60, 6]
  names(SR.Q2) <- 'SR.Q2'
  
  SR.Q3 <- dataf2[60, 7]
  names(SR.Q3) <- 'SR.Q3'
  
  SR.Q4 <- dataf2[60, 8]
  names(SR.Q4) <- 'SR.Q4'
  
  SR.Q5 <- dataf2[60, 9]
  names(SR.Q5) <- 'SR.Q5'
  
  SR.Q6 <- dataf2[60, 10]
  names(SR.Q6) <- 'SR.Q6'
  
  SR.Q7 <- dataf2[60, 11]
  names(SR.Q7) <- SR.Q7
  
  SR.Q8 <- dataf2[60, 12]
  names(SR.Q8) <- 'SR.Q8'
  
  SR.Q9 <- dataf2[60, 13]
  names(SR.Q9) <- 'SR.Q9'
  
  SR.Q10 <- dataf2[60, 14]
  names(SR.Q10) <- 'SR.Q10'
  
  FS.Q1 <- dataf2[61, 5]
  names(FS.Q1) <- 'FS.Q1'
  
  FS.Q2 <- dataf2[61, 6]
  names(FS.Q2) <- 'FS.Q2'
  
  FS.Q3 <- dataf2[61, 7]
  names(FS.Q3) <- 'FS.Q3'
  
  FS.Q4 <- dataf2[61, 8]
  names(FS.Q4) <- 'FS.Q4'
  
  FS.Q5 <- dataf2[61, 9]
  names(FS.Q5) <- 'FS.Q5'
  
  FS.Q6 <- dataf2[61, 10]
  names(FS.Q6) <- 'FS.Q6'
  
  FS.Q7 <- dataf2[61, 11]
  names(FS.Q7) <- 'FS.Q7'
  
  FS.Q8 <- dataf2[61, 12]
  names(FS.Q8) <- 'FS.Q8'
  
  FS.Q9 <- dataf2[61, 13]
  names(FS.Q9) <- 'FS.Q9'
  
  FS.Q10 <- dataf2[61, 14]
  names(FS.Q10) <- 'FS.Q10'
  
  NB.Q1 <- dataf2[62, 5]
  names(NB.Q1) <- 'NB.Q1'
  
  NB.Q2 <- dataf2[62, 6]
  names(NB.Q2) <- 'NB.Q2'
  
  NB.Q3 <- dataf2[62, 7]
  names(NB.Q3) <- 'NB.Q3'
  
  NB.Q4 <- dataf2[62, 8]
  names(NB.Q4) <- 'NB.Q4'
  
  NB.Q5 <- dataf2[62, 9]
  names(NB.Q5) <- 'NB.Q5'
  
  NB.Q6 <- dataf2[62, 10]
  names(NB.Q6) <- 'NB.Q6'
  
  NB.Q7 <- dataf2[62, 11]
  names(NB.Q7) <- 'NB.Q7'
  
  NB.Q8 <- dataf2[62, 12]
  names(NB.Q8) <- 'NB.Q8'
  
  NB.Q9 <- dataf2[62, 12]
  names(NB.Q9) <- 'NB.Q9'
  
  NB.Q10 <- dataf2[62, 14]
  names(NB.Q10) <- 'NB.Q10'
  
  DP.Q1 <- dataf2[63, 5]
  names(DP.Q1) <- 'DP.Q1'
  
  DP.Q2 <- dataf2[63, 6]
  names(DP.Q2) <- 'DP.Q2'
  
  DP.Q3 <- dataf2[63, 7]
  names(DP.Q3) <- 'DP.Q3'
  
  DP.Q4 <- dataf2[63, 8]
  names(DP.Q4) <- 'DP.Q4'
  
  DP.Q5 <- dataf2[63, 9]
  names(DP.Q5) <- 'DP.Q5'
  
  DP.Q6 <- dataf2[63, 10]
  names(DP.Q6) <- 'DP.Q6'
  
  DP.Q7 <- dataf2[63, 11]
  names(DP.Q7) <- 'DP.Q7'
  
  DP.Q8 <- dataf2[63, 12]
  names(DP.Q8) <- 'DP.Q8'
  
  DP.Q9 <- dataf2[63, 13]
  names(DP.Q9) <- 'DP.Q9'
  
  DP.Q10 <- dataf2[63, 14]
  names(DP.Q10) <- 'DP.Q10'
  
  form2.data <- cbind(tillers.Q1,tillers.Q2,tillers.Q3,tillers.Q4, tillers.Q5, tillers.Q6, tillers.Q7, tillers.Q8, tillers.Q9, tillers.Q10,
                      panicles.Q1, panicles.Q2, panicles.Q3, panicles.Q4, panicles.Q5, panicles.Q6, panicles.Q7, panicles.Q8, panicles.Q9, panicles.Q10,
                      leaves.Q1, leaves.Q2, leaves.Q3, leaves.Q4, leaves.Q5, leaves.Q6, leaves.Q7, leaves.Q8, leaves.Q9, leaves.Q10,
                      #=====
                      SNL.Q1, SNL.Q2, SNL.Q3, SNL.Q4, SNL.Q5, SNL.Q6, SNL.Q7, SNL.Q8, SNL.Q9, SNL.Q10,
                      DH.Q1, DH.Q2, DH.Q3, DH.Q4, DH.Q5, DH.Q6, DH.Q7, DH.Q8, DH.Q9, DH.Q10,
                      WH.Q1, WH.Q2, WH.Q3, WH.Q4, WH.Q5, WH.Q6, WH.Q7, WH.Q8, WH.Q9, WH.Q10,
                      GM.Q1, GM.Q2, GM.Q3, GM.Q4, GM.Q5, GM.Q6, GM.Q7, GM.Q8, GM.Q9, GM.Q10,
                      RT.Q1, RT.Q2, RT.Q3, RT.Q4, RT.Q5, RT.Q6, RT.Q7, RT.Q8, RT.Q9, RT.Q10,
                      WM.Q1, WM.Q2, WM.Q3, WM.Q4, WM.Q5, WM.Q6, WM.Q7, WM.Q8, WM.Q9, WM.Q10,
                      LF.Q1, LF.Q2, LF.Q3, LF.Q4, LF.Q5, LF.Q6, LF.Q7, LF.Q8, LF.Q9, LF.Q10,
                      def.Q1, def.Q2, def.Q3, def.Q4, def.Q5, def.Q6, def.Q7, def.Q8, def.Q9, def.Q10,
                      BPH.Q1, BPH.Q2, BPH.Q3, BPH.Q4, BPH.Q5, BPH.Q6, BPH.Q7, BPH.Q8, BPH.Q9, BPH.Q10,
                      WPH.Q1, WPH.Q2, WPH.Q3, WPH.Q4, WPH.Q5, WPH.Q6, WPH.Q7, WPH.Q8, WPH.Q9, WPH.Q10,
                      AW.Q1, AW.Q2, AW.Q3, AW.Q4, AW.Q5, AW.Q6, AW.Q7, AW.Q8, AW.Q9, AW.Q10,
                      RB.Q1, RB.Q2, RB.Q3, RB.Q4, RB.Q5, RB.Q6, RB.Q7, RB.Q8, RB.Q9, RB.Q10,
                      #======
                      
                      BLB.Q1, BLB.Q2, BLB.Q3, BLB.Q4, BLB.Q5, BLB.Q6, BLB.Q7, BLB.Q8, BLB.Q9, BLB.Q10,
                      LB.Q1, LB.Q2, LB.Q3, LB.Q4, LB.Q5, LB.Q6, LB.Q7, LB.Q8, LB.Q9, LB.Q10,
                      BS.Q1, BS.Q2, BS.Q3, BS.Q4, BS.Q5, BS.Q6, BS.Q7, BS.Q8, BS.Q9, BS.Q10,
                      BLS.Q1, BLS.Q2, BLS.Q3, BLS.Q4, BLS.Q5, BLS.Q6, BLS.Q7, BLS.Q8, BLS.Q9, BLS.Q10,
                      NBS.Q1, NBS.Q2, NBS.Q3, NBS.Q4, NBS.Q5, NBS.Q6, NBS.Q7, NBS.Q8, NBS.Q9, NBS.Q10,
                      RS.Q1, RS.Q2, RS.Q3, RS.Q4, RS.Q5, RS.Q6, RS.Q7, RS.Q8, RS.Q9, RS.Q10,
                      LS.Q1, LS.Q2, LS.Q3, LS.Q4, LS.Q5, LS.Q6, LS.Q7, LS.Q8, LS.Q9, LS.Q10,
                      SHB.Q1, SHB.Q2, SHB.Q3, SHB.Q4, SHB.Q5, SHB.Q6, SHB.Q7, SHB.Q8, SHB.Q9, SHB.Q10,
                      SHR.Q1, SHR.Q2, SHR.Q3, SHR.Q4, SHR.Q5, SHR.Q6, SHR.Q7, SHR.Q8, SHR.Q9, SHR.Q10,
                      SR.Q1, SR.Q2, SR.Q3, SR.Q4, SR.Q5, SR.Q6, SR.Q7, SR.Q8, SR.Q9, SR.Q10,
                      FS.Q1, FS.Q2, FS.Q3, FS.Q4, FS.Q5, FS.Q6, FS.Q7, FS.Q8, FS.Q9, FS.Q10,
                      NB.Q1, NB.Q2, NB.Q3, NB.Q4, NB.Q5, NB.Q6, NB.Q7, NB.Q8, NB.Q9, NB.Q10,
                      DP.Q1, DP.Q2, DP.Q3, DP.Q4, DP.Q5, DP.Q6, DP.Q7, DP.Q8, DP.Q9, DP.Q10
  )
  
  
  return(form2.data)
}

#eos
