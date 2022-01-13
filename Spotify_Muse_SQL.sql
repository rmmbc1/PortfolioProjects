--SQL Data Exploration
--The following explorers the breakdown of the Spotify dataset for band Muse. 


---------------Album Breakdown--------------

--Top 10 Most popular ablums---
select ROW_NUMBER() over (order by popularity desc) as Rank, * from (
select 
top 10
Album,
avg(popularity) as Popularity
from dbo.Spotify_Muse_view
where album <> 'Neutron Star Collision [Love Is Forever]'
group by album
order by Popularity desc
) as Q1

--Number of songs per album--
select ROW_NUMBER() over (order by AlbumCount desc) as Rank, * from (
select 
top 10
Album,
count(album) as AlbumCount
from dbo.Spotify_Muse_view
where album <> 'Neutron Star Collision [Love Is Forever]'
group by album
) as Q1



----------------Song Breakdown-------------

--Top 10 Most Popular Songs
select 
top 10
ROW_NUMBER() over (order by popularity desc) as Rank,
*
from dbo.Spotify_Muse_view

--Top 10 Longest Duration Songs
select 
top 10
ROW_NUMBER() over (order by duration desc) as Rank,
*
from dbo.Spotify_Muse_view

--Top 10 Energy Songs
select 
top 10
ROW_NUMBER() over (order by energy desc) as Rank,
*
from dbo.Spotify_Muse_view

--Top 10 Dance Songs
select 
top 10
ROW_NUMBER() over (order by danceability desc) as Rank,
*
from dbo.Spotify_Muse_view

