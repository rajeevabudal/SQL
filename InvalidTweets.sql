Create table
    If Not Exists Tweets(
        tweet_id int,
        content varchar(50)
    )
Truncate table Tweets
insert into
    Tweets (tweet_id, content)
values ('1', 'Vote for Biden')
insert into
    Tweets (tweet_id, content)
values (
        '2',
        'Let us make America great again!'
    ) -- Table: Tweets
    -- +----------------+---------+
    -- | Column Name    | Type    |
    -- +----------------+---------+
    -- | tweet_id       | int     |
    -- | content        | varchar |
    -- +----------------+---------+
    -- In SQL, tweet_id is the primary key for this table.
    -- This table contains all the tweets in a social media app.
    -- Find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
    -- Return the result table in any order.
select tweet_id
from Tweets
where LENGTH(content) > 15