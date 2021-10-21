SELECT * INTO vine_votes_20 
FROM vine_table 
WHERE total_votes >= 20;

SELECT * INTO vine_votes_05 
FROM vine_votes_20 
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

SELECT * INTO vine_y 
FROM vine_votes_05 
WHERE vine='Y';

SELECT * INTO vine_y 
FROM vine_votes_05 
WHERE vine='N';

select count(*) from vine_Y;

select count(*) from vine_N;

select count(*) from vine_Y
where star_rating = 5;

select count(*) from vine_N
where star_rating = 5;

SELECT A.NUMer, A.DENOM, cast(A.NUMer as float)/A.DENOM 
FROM 
(  
  select
	(SELECT COUNT(*) from vine_Y where star_rating = 5) as Numer,
	(select count(*) from vine_Y) as denom
  
) A;

SELECT A.NUMer, A.DENOM, cast(A.NUMer as float)/A.DENOM 
FROM 
(  
  select
	(SELECT COUNT(*) from vine_N where star_rating = 5) as Numer,
	(select count(*) from vine_N) as denom
  
) A;
