Create table
    If Not Exists Views (
        article_id int,
        author_id int,
        viewer_id int,
        view_date date
    )
Truncate table Views
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('1', '3', '5', '2019-08-01')
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('1', '3', '6', '2019-08-02')
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('2', '7', '7', '2019-08-01')
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('2', '7', '6', '2019-08-02')
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('4', '7', '1', '2019-07-22')
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('3', '4', '4', '2019-07-21')
insert into
    Views (
        article_id,
        author_id,
        viewer_id,
        view_date
    )
values ('3', '4', '4', '2019-07-21') -- Table: Views
    -- +---------------+---------+
    -- | Column Name   | Type    |
    -- +---------------+---------+
    -- | article_id    | int     |
    -- | author_id     | int     |
    -- | viewer_id     | int     |
    -- | view_date     | date    |
    -- +---------------+---------+
    -- The table may have duplicate rows (In other words, there is no primary key for this table in SQL).
    -- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
    -- Note that equal author_id and viewer_id indicate the same person.
    -- Find all the authors that viewed at least one of their own articles.
    -- Return the result table sorted by id in ascending order.
select
    distinct author_id as id
from Views
where author_id = viewer_id
order by id