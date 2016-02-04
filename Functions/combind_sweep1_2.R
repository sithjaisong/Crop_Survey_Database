

combind_sweep1_2 <- function(data1 = dataf2.1, data2 = dataf2.2){
  form2.sweep <- matrix(nrow = 0, ncol = 9)
  # = sweep visit1
  visit1.sweep <- as.data.frame(wide_sweep(dataf2.1))
  visit1.sweep$visit <- "1"
  visit1.sweep <- long_sweep(visit1.sweep)

  # = sweep visit2

  visit2.sweep <- as.data.frame(wide_sweep(dataf2.2))
  visit2.sweep$visit <- "2"
  visit2.sweep <- long_sweep(visit2.sweep)


  # === combind visit1 and visit2 sweep=====

  new.row.sweep <- rbind(visit1.sweep, visit2.sweep)
  form2.sweep <- rbind(form2.sweep, new.row.sweep)

}
