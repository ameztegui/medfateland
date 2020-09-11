// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// genros
double genros(double phi, double theta, double a1, double a2, double b, double n1, double n2, double c);
RcppExport SEXP _medfateland_genros(SEXP phiSEXP, SEXP thetaSEXP, SEXP a1SEXP, SEXP a2SEXP, SEXP bSEXP, SEXP n1SEXP, SEXP n2SEXP, SEXP cSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type phi(phiSEXP);
    Rcpp::traits::input_parameter< double >::type theta(thetaSEXP);
    Rcpp::traits::input_parameter< double >::type a1(a1SEXP);
    Rcpp::traits::input_parameter< double >::type a2(a2SEXP);
    Rcpp::traits::input_parameter< double >::type b(bSEXP);
    Rcpp::traits::input_parameter< double >::type n1(n1SEXP);
    Rcpp::traits::input_parameter< double >::type n2(n2SEXP);
    Rcpp::traits::input_parameter< double >::type c(cSEXP);
    rcpp_result_gen = Rcpp::wrap(genros(phi, theta, a1, a2, b, n1, n2, c));
    return rcpp_result_gen;
END_RCPP
}
// ellipseROS
NumericVector ellipseROS(NumericVector phi, double theta, double vws, double ros);
RcppExport SEXP _medfateland_ellipseROS(SEXP phiSEXP, SEXP thetaSEXP, SEXP vwsSEXP, SEXP rosSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type phi(phiSEXP);
    Rcpp::traits::input_parameter< double >::type theta(thetaSEXP);
    Rcpp::traits::input_parameter< double >::type vws(vwsSEXP);
    Rcpp::traits::input_parameter< double >::type ros(rosSEXP);
    rcpp_result_gen = Rcpp::wrap(ellipseROS(phi, theta, vws, ros));
    return rcpp_result_gen;
END_RCPP
}
// doubleEllipseROS
NumericVector doubleEllipseROS(NumericVector phi, double theta, double vws, double ros);
RcppExport SEXP _medfateland_doubleEllipseROS(SEXP phiSEXP, SEXP thetaSEXP, SEXP vwsSEXP, SEXP rosSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type phi(phiSEXP);
    Rcpp::traits::input_parameter< double >::type theta(thetaSEXP);
    Rcpp::traits::input_parameter< double >::type vws(vwsSEXP);
    Rcpp::traits::input_parameter< double >::type ros(rosSEXP);
    rcpp_result_gen = Rcpp::wrap(doubleEllipseROS(phi, theta, vws, ros));
    return rcpp_result_gen;
END_RCPP
}
// fireBrandFallingHeight
double fireBrandFallingHeight(double initialHeight, double timeFalling, double Dp);
RcppExport SEXP _medfateland_fireBrandFallingHeight(SEXP initialHeightSEXP, SEXP timeFallingSEXP, SEXP DpSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type initialHeight(initialHeightSEXP);
    Rcpp::traits::input_parameter< double >::type timeFalling(timeFallingSEXP);
    Rcpp::traits::input_parameter< double >::type Dp(DpSEXP);
    rcpp_result_gen = Rcpp::wrap(fireBrandFallingHeight(initialHeight, timeFalling, Dp));
    return rcpp_result_gen;
END_RCPP
}
// totalFirebrandLoftingTime
double totalFirebrandLoftingTime(double z, double z0, double zF, double Dp);
RcppExport SEXP _medfateland_totalFirebrandLoftingTime(SEXP zSEXP, SEXP z0SEXP, SEXP zFSEXP, SEXP DpSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type z(zSEXP);
    Rcpp::traits::input_parameter< double >::type z0(z0SEXP);
    Rcpp::traits::input_parameter< double >::type zF(zFSEXP);
    Rcpp::traits::input_parameter< double >::type Dp(DpSEXP);
    rcpp_result_gen = Rcpp::wrap(totalFirebrandLoftingTime(z, z0, zF, Dp));
    return rcpp_result_gen;
END_RCPP
}
// totalGasFlowPersistenceTime
double totalGasFlowPersistenceTime(double z, double t0, double zF);
RcppExport SEXP _medfateland_totalGasFlowPersistenceTime(SEXP zSEXP, SEXP t0SEXP, SEXP zFSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type z(zSEXP);
    Rcpp::traits::input_parameter< double >::type t0(t0SEXP);
    Rcpp::traits::input_parameter< double >::type zF(zFSEXP);
    rcpp_result_gen = Rcpp::wrap(totalGasFlowPersistenceTime(z, t0, zF));
    return rcpp_result_gen;
END_RCPP
}
// findFireBrandLoftedHeight
double findFireBrandLoftedHeight(double t0, double z0, double zF, double Dp);
RcppExport SEXP _medfateland_findFireBrandLoftedHeight(SEXP t0SEXP, SEXP z0SEXP, SEXP zFSEXP, SEXP DpSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type t0(t0SEXP);
    Rcpp::traits::input_parameter< double >::type z0(z0SEXP);
    Rcpp::traits::input_parameter< double >::type zF(zFSEXP);
    Rcpp::traits::input_parameter< double >::type Dp(DpSEXP);
    rcpp_result_gen = Rcpp::wrap(findFireBrandLoftedHeight(t0, z0, zF, Dp));
    return rcpp_result_gen;
END_RCPP
}
// willBurnWhenHitFloor
bool willBurnWhenHitFloor(double zIni, double Dp);
RcppExport SEXP _medfateland_willBurnWhenHitFloor(SEXP zIniSEXP, SEXP DpSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type zIni(zIniSEXP);
    Rcpp::traits::input_parameter< double >::type Dp(DpSEXP);
    rcpp_result_gen = Rcpp::wrap(willBurnWhenHitFloor(zIni, Dp));
    return rcpp_result_gen;
END_RCPP
}
// fireBrandBurningTimeFromCanopyStructure
double fireBrandBurningTimeFromCanopyStructure(double LAIc);
RcppExport SEXP _medfateland_fireBrandBurningTimeFromCanopyStructure(SEXP LAIcSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type LAIc(LAIcSEXP);
    rcpp_result_gen = Rcpp::wrap(fireBrandBurningTimeFromCanopyStructure(LAIc));
    return rcpp_result_gen;
END_RCPP
}
// fireBrandFlameHeightFromCanopyStructure
double fireBrandFlameHeightFromCanopyStructure(double crownLength, double LAIc);
RcppExport SEXP _medfateland_fireBrandFlameHeightFromCanopyStructure(SEXP crownLengthSEXP, SEXP LAIcSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type crownLength(crownLengthSEXP);
    Rcpp::traits::input_parameter< double >::type LAIc(LAIcSEXP);
    rcpp_result_gen = Rcpp::wrap(fireBrandFlameHeightFromCanopyStructure(crownLength, LAIc));
    return rcpp_result_gen;
END_RCPP
}
// getTrackSpeciesTranspiration
NumericVector getTrackSpeciesTranspiration(NumericVector trackSpecies, NumericVector Eplant, DataFrame x);
RcppExport SEXP _medfateland_getTrackSpeciesTranspiration(SEXP trackSpeciesSEXP, SEXP EplantSEXP, SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type trackSpecies(trackSpeciesSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type Eplant(EplantSEXP);
    Rcpp::traits::input_parameter< DataFrame >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(getTrackSpeciesTranspiration(trackSpecies, Eplant, x));
    return rcpp_result_gen;
END_RCPP
}
// getTrackSpeciesDDS
NumericVector getTrackSpeciesDDS(NumericVector trackSpecies, NumericVector DDS, DataFrame x);
RcppExport SEXP _medfateland_getTrackSpeciesDDS(SEXP trackSpeciesSEXP, SEXP DDSSEXP, SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type trackSpecies(trackSpeciesSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type DDS(DDSSEXP);
    Rcpp::traits::input_parameter< DataFrame >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(getTrackSpeciesDDS(trackSpecies, DDS, x));
    return rcpp_result_gen;
END_RCPP
}
// spwbgridDay
List spwbgridDay(CharacterVector lct, List xList, List soilList, IntegerVector waterO, List queenNeigh, List waterQ, List correctionFactors, CharacterVector date, NumericVector tminVec, NumericVector tmaxVec, NumericVector rhminVec, NumericVector rhmaxVec, NumericVector precVec, NumericVector radVec, NumericVector wsVec, NumericVector latitude, NumericVector elevation, NumericVector slope, NumericVector aspect, double patchsize);
RcppExport SEXP _medfateland_spwbgridDay(SEXP lctSEXP, SEXP xListSEXP, SEXP soilListSEXP, SEXP waterOSEXP, SEXP queenNeighSEXP, SEXP waterQSEXP, SEXP correctionFactorsSEXP, SEXP dateSEXP, SEXP tminVecSEXP, SEXP tmaxVecSEXP, SEXP rhminVecSEXP, SEXP rhmaxVecSEXP, SEXP precVecSEXP, SEXP radVecSEXP, SEXP wsVecSEXP, SEXP latitudeSEXP, SEXP elevationSEXP, SEXP slopeSEXP, SEXP aspectSEXP, SEXP patchsizeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< CharacterVector >::type lct(lctSEXP);
    Rcpp::traits::input_parameter< List >::type xList(xListSEXP);
    Rcpp::traits::input_parameter< List >::type soilList(soilListSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type waterO(waterOSEXP);
    Rcpp::traits::input_parameter< List >::type queenNeigh(queenNeighSEXP);
    Rcpp::traits::input_parameter< List >::type waterQ(waterQSEXP);
    Rcpp::traits::input_parameter< List >::type correctionFactors(correctionFactorsSEXP);
    Rcpp::traits::input_parameter< CharacterVector >::type date(dateSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type tminVec(tminVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type tmaxVec(tmaxVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type rhminVec(rhminVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type rhmaxVec(rhmaxVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type precVec(precVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type radVec(radVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type wsVec(wsVecSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type latitude(latitudeSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type elevation(elevationSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type slope(slopeSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type aspect(aspectSEXP);
    Rcpp::traits::input_parameter< double >::type patchsize(patchsizeSEXP);
    rcpp_result_gen = Rcpp::wrap(spwbgridDay(lct, xList, soilList, waterO, queenNeigh, waterQ, correctionFactors, date, tminVec, tmaxVec, rhminVec, rhmaxVec, precVec, radVec, wsVec, latitude, elevation, slope, aspect, patchsize));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_medfateland_genros", (DL_FUNC) &_medfateland_genros, 8},
    {"_medfateland_ellipseROS", (DL_FUNC) &_medfateland_ellipseROS, 4},
    {"_medfateland_doubleEllipseROS", (DL_FUNC) &_medfateland_doubleEllipseROS, 4},
    {"_medfateland_fireBrandFallingHeight", (DL_FUNC) &_medfateland_fireBrandFallingHeight, 3},
    {"_medfateland_totalFirebrandLoftingTime", (DL_FUNC) &_medfateland_totalFirebrandLoftingTime, 4},
    {"_medfateland_totalGasFlowPersistenceTime", (DL_FUNC) &_medfateland_totalGasFlowPersistenceTime, 3},
    {"_medfateland_findFireBrandLoftedHeight", (DL_FUNC) &_medfateland_findFireBrandLoftedHeight, 4},
    {"_medfateland_willBurnWhenHitFloor", (DL_FUNC) &_medfateland_willBurnWhenHitFloor, 2},
    {"_medfateland_fireBrandBurningTimeFromCanopyStructure", (DL_FUNC) &_medfateland_fireBrandBurningTimeFromCanopyStructure, 1},
    {"_medfateland_fireBrandFlameHeightFromCanopyStructure", (DL_FUNC) &_medfateland_fireBrandFlameHeightFromCanopyStructure, 2},
    {"_medfateland_getTrackSpeciesTranspiration", (DL_FUNC) &_medfateland_getTrackSpeciesTranspiration, 3},
    {"_medfateland_getTrackSpeciesDDS", (DL_FUNC) &_medfateland_getTrackSpeciesDDS, 3},
    {"_medfateland_spwbgridDay", (DL_FUNC) &_medfateland_spwbgridDay, 20},
    {NULL, NULL, 0}
};

RcppExport void R_init_medfateland(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
