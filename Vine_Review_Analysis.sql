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
