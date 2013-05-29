
// includes from the plugin

#include <Rcpp.h>


#ifndef BEGIN_RCPP
#define BEGIN_RCPP
#endif

#ifndef END_RCPP
#define END_RCPP
#endif

using namespace Rcpp;


// user includes


// declarations
extern "C" {
SEXP file21a045a71b7( SEXP crater, SEXP drater, SEXP dimA, SEXP B, SEXP dimB) ;
}

// definition

SEXP file21a045a71b7( SEXP crater, SEXP drater, SEXP dimA, SEXP B, SEXP dimB ){
BEGIN_RCPP

      //////////////////////////////////////////
      //////// I N P U T ///////////////////////
      // c.rater
      Rcpp::NumericMatrix CRA(crater);
      // d.rater
      Rcpp::NumericVector DRA(drater) ;
      int K = CRA.ncol();
      int I = CRA.nrow();
      
      // define input and arrays
      // dimA (I,K+1,K+1)
      Rcpp::IntegerVector dimAA(dimA);
      // array B (I,K+1,TP)
      Rcpp::NumericMatrix BB(B);
      Rcpp::IntegerVector dimBB(dimB);
      Rcpp::NumericMatrix CC( dimAA[0]*dimAA[1] , dimBB[2] ) ;
      
      ////////////////////////////////////////////
      
      //*********************
      // create h1 matrix
      NumericMatrix h1(I*(K+1),K) ;
      int nrh1 = h1.nrow();
      
      for (int kk=0;kk<(K+1);++kk){
          for (int ii=0;ii<I;++ii){
              for (int jj=0;jj<K;++jj){
                  h1(ii+I*kk,jj) = CRA( ii , jj )  - DRA[ii]*kk ;
                                     }
                                 }
                          }
                          
      //**********************************
      // compute logistic distribution
      // for (int kk=0; kk<K; ++kk){
      for (int kk=0;kk<K;++kk){
          NumericVector inpv =h1(_,kk) ;
          NumericVector res0=plogis(inpv) ;
          for (int ii=0;ii<nrh1;++ii){
              h1(ii,kk) = res0[ii] ;
                               }
                      }
      
      //***********************************
      // compute matrix with rater probabilities  
      
      // P(X=0) ;                
      NumericMatrix PRA(I*(K+1),K+1) ;         
      for (int jj=0;jj<(K+1);++jj){                
          for (int ii=0;ii<I;++ii){
              PRA(ii,jj) = h1(ii+I*jj, 0 ) ;
                      }    
                  }
      // other categories
      for (int cc=1;cc<K;++cc){            
      for (int jj=0;jj<(K+1);++jj){            
          for (int ii=0;ii<I;++ii){
              PRA(ii+I*cc,jj) = h1(ii+I*jj, cc ) - h1(ii+I*jj, cc-1 ) ;
                      }               
                  }
              }
      // last category
      int cc=K ;        
      for (int jj=0;jj<(K+1);++jj){            
          for (int ii=0;ii<I;++ii){
              PRA(ii+I*cc,jj) = 1 - h1(ii+I*jj, cc-1 ) ;
                      }               
                  }
      
      //**************************
      // multiplication 
      
      NumericMatrix AA=PRA ;             
                  
      int a1 = dimAA[0];
      int a2 = dimAA[1];
      int a3 = dimAA[2];
      int b3 = dimBB[2]; 
      
      // ii -> loop within a matrix
      //for (int ii=0 ; ii < a1 ; ++ii ){
      for (int zz=0 ; zz < a2 ; ++zz){
          for (int ii=0 ; ii < a1 ; ++ii ){        
              for (int hh=0 ; hh < b3 ; ++hh){ // loop over columns
                  for (int kk=0 ; kk < a3 ; ++kk){
                      CC(ii+zz*a1,hh) += AA(ii+zz*a1,kk)*BB(ii+a1*kk,hh)  ; // *BB(kk,hh) ;
                              }
                          }
                      }
                  }
                           
      ///////////////////////////////////////////////////////
      ///////////// O U T P U T   ///////////////////////////
      return List::create(_["PRA"] = PRA , _["probtotal"] = CC);            
                  
      //return( wrap(res0) );
END_RCPP
}



