%% File Name: sirt-package.Rd
%% File Version: 2.703

\name{sirt-package}
\alias{sirt-package}
\alias{sirt}
\docType{package}

\title{
\packageTitle{sirt}
}

\description{
\packageDescription{sirt}
}

\author{
\packageAuthor{sirt}

Maintainer: \packageMaintainer{sirt}
}


\details{

The \pkg{sirt} package enables the estimation of following models:

\itemize{

%% M-dim generalized item response model
\item Multidimensional marginal maximum likelihood estimation (MML)
      of generalized logistic Rasch type models using the
      generalized logistic link function (Stukel, 1988) can be conducted
      with \code{\link{rasch.mml2}} and the argument \code{itemtype="raschtype"}.
      This model also allows the estimation of the 4PL item
      response model (Loken & Rulison, 2010).
      Multiple group estimation, latent regression models and
      plausible value imputation are supported. In addition, pseudo-likelihood
      estimation for fractional item response data can be conducted.

%% M-dim noncompensatory and compensatory IRT model
\item Multidimensional noncompensatory, compensatory and partially compensatory
item response models for dichotomous item responses (Reckase, 2009) can be estimated
with the \code{\link{smirt}} function and the options \code{irtmodel="noncomp"}
, \code{irtmodel="comp"} and \code{irtmodel="partcomp"}.

%% 1-dim Ramsay type model
\item The unidimensional quotient model (Ramsay, 1989) can be estimated
using \code{\link{rasch.mml2}} with \code{itemtype="ramsay.qm"}.

%% 1-dim nonparametric IRT models
\item Unidimensional nonparametric item response models can be estimated
 employing MML estimation (Rossi, Wang & Ramsay, 2002) by making use of
 \code{\link{rasch.mml2}} with \code{itemtype="npirt"}.
 Kernel smoothing for item response function estimation (Ramsay, 1991)
 is implemented in \code{\link{np.dich}}.

%% 1-dim Copula model
\item The multidimensional IRT copula model (Braeken, 2011) can be applied
    for handling local dependencies, see \code{\link{rasch.copula3}}.

%% 1-dim JML
\item Unidimensional joint maximum likelihood estimation (JML) of the Rasch model
is possible with the \code{\link{rasch.jml}} function. Bias correction methods
    for item parameters are included in \code{\link{rasch.jml.jackknife1}}
    and \code{\link{rasch.jml.biascorr}}.

%% M-dim LC Rasch model
\item The multidimensional latent class Rasch and 2PL model (Bartolucci, 2007)
which employs a discrete trait distribution can be estimated
with \code{\link{rasch.mirtlc}}.

%% Rater Models
\item The unidimensional 2PL rater facets model (Lincare, 1994) can be estimated
with \code{\link{rm.facets}}. A hierarchical rater model based on
signal detection theory (DeCarlo, Kim & Johnson, 2011) can be conducted
with \code{\link{rm.sdt}}. A simple latent class model for two exchangeable
raters is implemented in \code{\link{lc.2raters}}. See Robitzsch and Steinfeld (2018)
for more details.

%% Grade of membership model
\item The discrete grade of membership model (Erosheva, Fienberg & Joutard, 2007)
and the Rasch grade of membership model can be estimated by \code{\link{gom.em}}.

%% MCMC estimation multilevel IRT models
\item Some hierarchical IRT models and random item models for dichotomous
and normally distributed data (van den Noortgate, de Boeck & Meulders, 2003;
Fox & Verhagen, 2010) can be estimated with \code{\link{mcmc.2pno.ml}}.

%% 1-dim PCML
\item Unidimensional pairwise conditional likelihood estimation
    (PCML; Zwinderman, 1995) is implemented in \code{\link{rasch.pairwise}} or
    \code{\link{rasch.pairwise.itemcluster}}.

%% 1-dim PMML
\item Unidimensional pairwise marginal likelihood estimation
   (PMML; Renard, Molenberghs & Geys, 2004)
    can be conducted using \code{\link{rasch.pml3}}. In this function
    local dependence can be handled by imposing residual error structure
    or omitting item pairs within a dependent item cluster from the
    estimation. \cr
    The function \code{\link{rasch.evm.pcm}} estimates the multiple group
    partial credit model based on the pairwise eigenvector approach
    which avoids iterative estimation.

%% MCMC estimation of some models
\item Some item response models in \pkg{sirt} can be estimated via
Markov Chain Monte Carlo (MCMC) methods. In \code{\link{mcmc.2pno}}
the two-parameter normal ogive model can be estimated. A hierarchical
version of this model (Janssen, Tuerlinckx, Meulders & de Boeck, 2000)
is implemented in \code{\link{mcmc.2pnoh}}. The 3PNO testlet model
(Wainer, Bradlow & Wang, 2007; Glas, 2012) can be estimated with
\code{\link{mcmc.3pno.testlet}}.
Some hierarchical IRT models and random item models
(van den Noortgate, de Boeck & Meulders, 2003) can be estimated
with \code{\link{mcmc.2pno.ml}}.

%% NOHARM
\item For dichotomous response data, the free NOHARM software
(McDonald, 1982, 1997) estimates the multidimensional compensatory 3PL model and the function
\code{\link{R2noharm}} runs NOHARM from within \R. Note that NOHARM must be
downloaded from \emph{http://noharm.niagararesearch.ca/nh4cldl.html}
at first. A pure \R implementation of the NOHARM model with some extensions
can be found in \code{\link{noharm.sirt}}.

%% Nonparametric item response theory / ISOP model
\item The measurement theoretic founded nonparametric item
response models of Scheiblechner (1995, 1999) -- the ISOP
and the ADISOP model -- can be estimated with
\code{\link{isop.dich}} or \code{\link{isop.poly}}.
Item scoring within this theory can be conducted with
\code{\link{isop.scoring}}.

%% Functional unidimensional item response model
\item The functional unidimensional item response model
(Ip et al., 2013) can be estimated with \code{\link{f1d.irt}}.

%% 1-dim Rasch model variational approximation
\item The Rasch model can be estimated by variational approximation
(Rijmen & Vomlel, 2008) using \code{\link{rasch.va}}.

%% 1-dim Guttman model
\item The unidimensional probabilistic Guttman model (Proctor, 1970) can be
    specified with \code{\link{prob.guttman}}.

%% jackknife WLE
\item A jackknife method for the estimation of standard errors of the
    weighted likelihood trait estimate (Warm, 1989) is available in
    \code{\link{wle.rasch.jackknife}}.

%% reliability
\item Model based reliability for dichotomous data can be calculated by the method
of Green and Yang (2009) with \code{\link{greenyang.reliability}} and the
marginal true score method of Dimitrov (2003) using the function
\code{\link{marginal.truescore.reliability}}.

%% DETECT
\item Essential unidimensionality can be assessed by the DETECT
    index (Stout, Habing, Douglas & Kim, 1996), see the function
    \code{\link{conf.detect}}.

%% linking / alignment
\item Item parameters from several studies can be linked using the Haberman
method (Haberman, 2009) in \code{\link{linking.haberman}}. See also
\code{\link{equating.rasch}} and \code{\link{linking.robust}}.
The alignment procedure (Asparouhov & Muthen, 2013)
\code{\link{invariance.alignment}} is originally for comfirmatory factor
analysis and aims at obtaining approximate invariance.


%% Person Fit
\item Some person fit statistics in the Rasch model (Meijer & Sijtsma, 2001)
    are included in \code{\link{personfit.stat}}.

%% LSDM
\item An alternative to the linear logistic test model (LLTM), the
    so called least squares distance model for cognitive diagnosis
    (LSDM; Dimitrov, 2007), can be estimated with the function
    \code{\link{lsdm}}.

%% LSEM
\item Local structural equation models (LSEM) can be estimated with the
\code{\link{lsem.estimate}} function (Hildebrandt et al., 2016).

}

}




\references{
Asparouhov, T., & Muthen, B. (2014). Multiple-group factor analysis alignment.
\emph{Structural Equation Modeling, 21}(4), 1-14.
\doi{10.1080/10705511.2014.919210}

Bartolucci, F. (2007). A class of multidimensional
IRT models for testing unidimensionality and clustering
items. \emph{Psychometrika, 72}, 141-157.

Braeken, J. (2011). A boundary mixture approach to violations of conditional
independence. \emph{Psychometrika, 76}(1), 57-76.
\doi{10.1007/s11336-010-9190-4}

DeCarlo, T., Kim, Y., & Johnson, M. S. (2011).
A hierarchical rater model for constructed responses, with a signal detection
rater model. \emph{Journal of Educational Measurement, 48}(3), 333-356.
\doi{10.1111/j.1745-3984.2011.00143.x}

Dimitrov, D. (2003). Marginal true-score measures and reliability
for binary items as a function of their IRT parameters.
\emph{Applied Psychological Measurement, 27}, 440-458.

Dimitrov, D. M. (2007). Least squares distance method of cognitive validation
and analysis for binary items using their item response theory parameters.
\emph{Applied Psychological Measurement, 31}, 367-387.

Erosheva, E. A., Fienberg, S. E., & Joutard, C. (2007).
Describing disability through individual-level mixture models
for multivariate binary data. \emph{Annals of Applied Statistics,
1}, 502-537.

Fox, J.-P. (2010). \emph{Bayesian item response modeling}. New York: Springer.
\doi{10.1007/978-1-4419-0742-4}

Fox, J.-P., & Verhagen, A.-J. (2010). Random item effects modeling for
cross-national survey data.
In E. Davidov, P. Schmidt, & J. Billiet (Eds.),
\emph{Cross-cultural Analysis: Methods and Applications}
(pp. 467-488), London: Routledge Academic.

Fraser, C., & McDonald, R. P. (1988). NOHARM: Least squares item factor analysis.
\emph{Multivariate Behavioral Research, 23}, 267-269.

Glas, C. A. W. (2012). \emph{Estimating and testing the extended testlet model.}
LSAC Research Report Series, RR 12-03.

Green, S.B., & Yang, Y. (2009). Reliability of summed item
scores using structural equation modeling: An alternative to
coefficient alpha. \emph{Psychometrika, 74}, 155-167.

Haberman, S. J. (2009). \emph{Linking parameter estimates derived
from an item response model through separate calibrations}.
ETS Research Report ETS RR-09-40. Princeton, ETS.
\doi{10.1002/j.2333-8504.2009.tb02197.x}

Hildebrandt, A., Luedtke, O., Robitzsch, A., Sommer, C., &
Wilhelm, O. (2016). Exploring factor model parameters across continuous variables
with local structural equation models.
\emph{Multivariate Behavioral Research, 51}(2-3), 257-278.
\doi{10.1080/00273171.2016.1142856}

Ip, E. H., Molenberghs, G., Chen, S. H., Goegebeur, Y., &
De Boeck, P. (2013). Functionally unidimensional item
response models for multivariate binary data.
\emph{Multivariate Behavioral Research, 48}, 534-562.

Janssen, R., Tuerlinckx, F., Meulders, M., & de Boeck, P. (2000).
A hierarchical IRT model for criterion-referenced measurement.
\emph{Journal of Educational and Behavioral Statistics, 25}, 285-306.

Jeon, M., & Rijmen, F. (2016). A modular approach for item response theory modeling with 
the \R package \pkg{flirt}. \emph{Behavior Research Methods, 48}(2), 742-755.
\doi{10.3758/s13428-015-0606-z}

Linacre, J. M. (1994). \emph{Many-Facet Rasch Measurement}.
Chicago: MESA Press.

Loken, E. & Rulison, K. L. (2010). Estimation of a four-parameter
item response theory model. \emph{British Journal of Mathematical
and Statistical Psychology, 63}, 509-525.

McDonald, R. P. (1982). Linear versus nonlinear models in item response theory.
\emph{Applied Psychological Measurement, 6}(4), 379-396.
\doi{10.1177/014662168200600402}

McDonald, R. P. (1997). Normal-ogive multidimensional model.
In W. van der Linden & R. K. Hambleton (1997):
\emph{Handbook of modern item response theory} (pp. 257-269).
New York: Springer.
\doi{10.1007/978-1-4757-2691-6_15}

Meijer, R. R., & Sijtsma, K. (2001). Methodology
review: Evaluating person fit. \emph{Applied Psychological
Measurement, 25}, 107-135.

Proctor, C. H. (1970). A probabilistic formulation and statistical analysis
for Guttman scaling. \emph{Psychometrika, 35}, 73-78.

Ramsay, J. O. (1989). A comparison of three simple test theory models.
\emph{Psychometrika, 54}, 487-499.

Ramsay, J. O. (1991). Kernel smoothing approaches to
nonparametric item characteristic curve estimation.
\emph{Psychometrika, 56}, 611-630.

Reckase, M. (2009). \emph{Multidimensional item response theory}.
New York: Springer. \doi{10.1007/978-0-387-89976-3}

Renard, D., Molenberghs, G., & Geys, H. (2004). A pairwise likelihood
approach to estimation in multilevel probit models. \emph{Computational Statistics
& Data Analysis, 44}, 649-667.

Rijmen, F., & Vomlel, J. (2008). Assessing the performance of
variational methods for mixed logistic regression models.
\emph{Journal of Statistical Computation and Simulation, 78}, 765-779.

Robitzsch, A., & Steinfeld, J. (2018). Item response models for human ratings: Overview,
estimation methods, and implementation in R.
\emph{Psychological Test and Assessment Modeling, 60}(1), 101-139.

Rossi, N., Wang, X. & Ramsay, J. O. (2002). Nonparametric item response function
estimates with the EM algorithm.
\emph{Journal of Educational and Behavioral Statistics, 27}, 291-317.

Rusch, T., Mair, P., & Hatzinger, R. (2013).
\emph{Psychometrics with \R: A Review of CRAN Packages for Item Response Theory.}
http://epub.wu.ac.at/4010/1/resrepIRThandbook.pdf

Scheiblechner, H. (1995). Isotonic ordinal
probabilistic models (ISOP). \emph{Psychometrika, 60}(2), 281-304.
\doi{10.1007/BF02301417}

Scheiblechner, H. (1999). Additive conjoint isotonic
probabilistic models (ADISOP). \emph{Psychometrika, 64}, 295-316.

Schroeders, U., Robitzsch, A., & Schipolowski, S. (2014). A comparison of different
psychometric approaches to modeling testlet structures: An example with C-tests.
\emph{Journal of Educational Measurement, 51}(4), 400-418.
\doi{10.1111/jedm.12054}

Stout, W., Habing, B., Douglas, J., & Kim, H. R. (1996).
Conditional covariance-based nonparametric multidimensionality assessment.
\emph{Applied Psychological Measurement, 20}(4), 331-354.
\doi{10.1177/014662169602000403}

Stukel, T. A. (1988). Generalized logistic models.
\emph{Journal of the American Statistical Association, 83}(402), 426-431.
\doi{10.1080/01621459.1988.10478613}

Uenlue, A., & Yanagida, T. (2011). \R you ready for \R?:
The CRAN psychometrics task view.
\emph{British Journal of Mathematical and Statistical Psychology, 64}(1), 182-186.
\doi{10.1348/000711010X519320}

van den Noortgate, W., De Boeck, P., & Meulders, M. (2003).
Cross-classification multilevel logistic models in psychometrics.
\emph{Journal of Educational and Behavioral Statistics, 28}, 369-386.

Warm, T. A. (1989). Weighted likelihood estimation of ability in item response theory.
\emph{Psychometrika, 54}, 427-450.

Wainer, H., Bradlow, E. T., & Wang, X. (2007).
\emph{Testlet response theory and its applications}.
Cambridge: Cambridge University Press.

Zwinderman, A. H. (1995). Pairwise parameter estimation in Rasch models.
\emph{Applied Psychological Measurement, 19}, 369-375.
}



\seealso{
For estimating multidimensional models for polytomous item responses
see the \pkg{mirt}, \pkg{flirt} (Jeon & Rijmen, 2016) and \pkg{TAM} packages.

For conditional maximum likelihood estimation see the \pkg{eRm} package.

For pairwise estimation likelihood methods (also known as composite
likelihood methods) see \pkg{pln} or \pkg{lavaan}.

The estimation of cognitive diagnostic models is possible
using the \pkg{CDM} package.

For the multidimensional latent class IRT model see the \pkg{MultiLCIRT}
package which also allows the estimation IRT models with polytomous item responses.

Latent class analysis can be carried out with \pkg{covLCA}, \pkg{poLCA},
\pkg{BayesLCA}, \pkg{randomLCA} or \pkg{lcmm} packages.

Markov Chain Monte Carlo estimation for item response models can also
be found in the \pkg{MCMCpack} package (see the \code{MCMCirt} functions
therein).

See Rusch, Mair and Hatzinger (2013) and Uenlue and Yanagida (2011)
for reviews of psychometrics packages in \R.
}


\examples{
##
##   |-----------------------------------------------------------------|
##   | sirt 0.40-4 (2013-11-26)                                        |
##   | Supplementary Item Response Theory                              |
##   | Maintainer: Alexander Robitzsch <a.robitzsch at bifie.at >      |
##   | https://sites.google.com/site/alexanderrobitzsch/software       |
##   |-----------------------------------------------------------------|
##
##                       _/              _/
##              _/_/_/      _/  _/_/  _/_/_/_/
##           _/_/      _/  _/_/        _/
##              _/_/  _/  _/          _/
##         _/_/_/    _/  _/            _/_/
##
}

\keyword{package}
