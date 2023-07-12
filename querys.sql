2 - select avg(comment_count) as average
from (select count(contents) as comment_count, photo_id  from comments 
	group by photo_id) 
as comment_count;


1 - select comments.contents,comments.photo_id, users.username from comments inner join users on comments.user_id = users.id
where comments.photo_id = 3;

3 - select distinct count(contents) as comment_count, photo_id from comments
group by photo_id order by count(contents) desc 
limit 1; 

4 - select count(contents) as comment_count from comments where photo_id = 10;

5 - SELECT user_id, SUM(activity_count) AS total_activity
FROM (
  SELECT user_id, COUNT(*) AS activity_count
  FROM comments
  GROUP BY user_id
  UNION ALL
  SELECT user_id, COUNT(*) AS activity_count
  FROM photos
  GROUP BY user_id
) AS combined_activity
GROUP BY user_id
ORDER BY total_activity DESC
LIMIT 1;

6 - select  avg(length(contents)) as avg_per_comment from comments;