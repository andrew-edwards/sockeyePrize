READMEpredictions.txt

Doing each stock in a separate folder. Chilko was first and has a longer .Rmd.

fraser_covariates are created in report/analysis-2025-3.Rmd. That was used as a
template for fraser/chilko/analysis-2025-4.Rmd, which is then used as a whittled
down template for each stock in turn (saves changing cache names etc.). So each
stock has a separate subdirectory. Doing new stocks in desktop 4. Writing notes
here (so not duplicating in .Rmd).

For Chiko, we used PDO and then BI separately, PDO came out best for both
age4 and age5 and so for other stocks we are just going to do PDO to save
time. So Chilko has extra code for picking the best run for age4 and age5, not
needed for later ones. Late Stuart onwards has time series code which could go back into
Chilko also.

Didn't have time to add in Carrie's longer SST time series, which has some
NA's which will need thinking about (see her email).



Timings. Each extra lag should be $2^XX$ longer.

9 lags - 3.8 seconds

12 lags - 21 seconds (8 times longer, makes sense.

14 lags - 90 seconds (makes sense, four times longer, ish)

15 lags - 200 secs, about three minutes (makes sense).

16 lags - should be about 320 seconds, 5 minutes.

17 lags - took 720 seconds, 12 minutes before. Then 1587 secs, 26 minutes at
home.

18 lags - probably about an hour, so a sensible limit.



The full list of stocks is (doing them in order), with our final predictions of returns for each:

Fraser River:
  Chilko	 319,990
  Late Stuart     42,022
  Quesnel        128,392
  Raft
  Stellako
Bristol Bay:
  Alagnak
  Egegik
  Igushik
  Kvichak
  Naknek
  Nushagak
  Ugashik
  Wood
Columbia River:
  Bonneville Lock & Dam



Future ideas: Late Stuart has a kind of regime change, could try fitting from
1999 onwards (Zooplankton might come into play then)
