#' sp_demography() Function
#'
#' This function is a sub-function of setscenario().
#'
#' @param Stages : Number of life-Stages (integer). Requires a minimum of 2, for "juvenile" (stage 0) and "adult". Maximum is 3.
#' @param MaxAge : Maximum age in years
#' @param prob_reproduction : Probability to produce offsprings
#' @param num_offsprings : Expected the number of offsprings
#' @param prob_surv : Probability to survive
#' @import RangeShiftR
#' @keywords sp_demography
#' @export
#' @examples
#' dontrun{
#' sp_demography()
#' }


# Demography

sp_demography <- function(Stages, MaxAge, prob_reproduction, num_offsprings, prob_surv){

  Demography(StageStruct = sp_stage(Stages,
                                    MaxAge,
                                    prob_reproduction,
                                    num_offsprings,
                                    prob_surv),
             ReproductionType = 0) # Some species are the limiting sex regarding reproduction and dispersal, and we hence use an asexual model.

}
