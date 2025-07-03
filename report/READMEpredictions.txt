READMEpredictions.txt

Doing each stock in a separate folder. Chilko was first and has a longer .Rmd.

fraser_covariates are created in report/analysis-2025-3.Rmd. That was used as a
template for fraser/chilko/analysis-2025-4.Rmd, which is then used as a whittled
down template for each stock in turn (saves changing cache names etc.). So each
stock has a separate subdirectory. Doing new stocks in desktop 4. Writing notes
here (so not duplicating in .Rmd).

For Chilko, we used PDO and then BI separately, PDO came out best for both
age4 and age5 and so for other stocks we are just going to do PDO to save
time. So Chilko has extra code for picking the best run for age4 and age5, not
needed for later ones. Late Stuart onwards has time series code which could go back into
Chilko also.

Didn't have time to add in Carrie's longer SST time series, which has some
NA's which will need thinking about (see her email).

For each .Rmd, change the knit_exit chunks to eval = FALSE, and manually check
things - just read through.

Stellako age4s - all SVEs had sst_spring (starts in 1982) or zooplankton (starts
even later), which means they can't make predictions before 1985, so the MVE
cannot either. See the .Rmd for more details.

Bristol Bay
***********

Going to do four separate calculations then combine them (1.2, 1.3, 2.2,
2.3). So wrangle the data differently (not combining ages) than for Fraser River.

bristol-bay/bristol-bay-covariates.Rmd to make bristol_bay_covariates, based on
 report/analysis-2025-3.Rmd for Fraser River (also did some analyses in that).

Probably use report/analysis-2025-4.Rmd as template for the analyses (i.e. not a
later modified one from a river subdirectory). Actually, might be best to use
the latest simpler one, and just add anything else in that's needed. No need for
correlation plots. Aha - given so few covariates, we don't need to manually
reduce them (like we did for age5 based on age4 results for F River), so can just set one
up and then copy for the others. And should hopefully run fairly quickly.

HERE run alagnak, check .pdf, see HERE to carry on.



Timings. Each extra lag should be $2^XX$ longer.

9 lags - 3.8 seconds

12 lags - 21 seconds (8 times longer, makes sense.

14 lags - 90 seconds (makes sense, four times longer, ish)

15 lags - 200 secs, about three minutes (makes sense).

16 lags - should be about 320 seconds, 5 minutes.

17 lags - took 720 seconds, 12 minutes before. Then 1587 secs, 26 minutes at
home.

18 lags - probably about an hour, so a sensible limit.

21 lags (Raft) - presumably 8 hours.

The full list of stocks is (doing them in order), with our final predictions of returns for each:

Fraser River:
  Chilko	 319,990
  Late Stuart     42,022
  Quesnel        128,392
  Raft           Started in Desktop 4, 2:30pm Wed. Should be done by 10:30pm.
  Stellako        59,209
Bristol Bay:   doing covariates in Desktop 2.
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
1999 onwards (Zooplankton might come into play then).
Longer SST time series should be good - see notes in Stellako analysis.
,
