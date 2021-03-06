use tweety
GO

select * from [user]
select * from [profile]
select * from tweets
select * from hashtag
select * from follower
select * from likes
select * from dislikes
select * from comments
select * from privateChat

----

insert into [user] values
(1,'ali_33','p1234',null), -- we can use a default url for displayPic
(2,'ahmad_54','p1239',null),
(3,'sara_89','p1230',null),
(4,'alice_21','p1232',null),
(5,'mike_99','p1236',null)

insert into [profile] values
--(null,'Ali','Khan','M','2001-12-12',null,'Pakistan','active'),  --issue:either userID should be not null or a PK
--(null,'Ali','Khan','M','2001-12-12',null,'Pakistan','active'),
(1,'Ali','Khan','M','2001-12-12',null,'Pakistan','active'),
(3,'Sara','Ahmad','F','2000-1-14',null,'Pakistan','active'),
(5,'Mike','Davis','M','1995-7-1',null,'UK','inactive'),
(4,'Alice','Jonnas','F','2001-12-29',null,'USA','active')


insert into tweets values
(1,1,'My cars life time is over #daily',default), --issue: timestamp not null doesn't work
(2,1,'Looking for a car #cars',null),
(3,1,'Got one #daily',default),
(4,2,'At gym #workout',default),
(5,3,'Got fired #upset',default),
(6,2,'2 days to go #PSL',default),
(7,4,'enjoying race #Formula1',default),
(8,4,'Alex in his Ferrari turned tables #Formula1',default),
(9,4,'So happy',default)

insert into hashtag values
(1,2,'#cars'),
(2,1,'#daily'),
(3,8,'#Formula1'),
(4,7,'#Formula1'),
(5,6,'#PSL'),
(6,5,'#upset'),
(7,3,'#daily'),
(8,4,'#workout')

insert into follower values
--(1,1),   -- scemantic constraint: userid!=followerid
(1,2),
(1,3),
(1,4),
(2,3),
(2,5),
(4,1),
(4,2),
(4,3),
(4,5),
(3,2)

insert into likes values
--(1,1),  -- issue:can a person like his own tweet?
(2,1),    -- here likers can only be the followers 
(3,2),
(2,3),
(4,2),
(3,4),
(3,6),
(5,4),
(2,5),
(1,8)

insert into dislikes values
--(1,1),  -- issue:can a person dislike his own tweet?
(1,7),    -- here dislikers can only be the followers 
(3,7),
(5,9),
(2,9),
(3,6),
(2,5),
(3,1),
(4,1)

insert into comments values
--(1,1,1,null,default),  --issue: comment should be not null also can a person comment on his own tweet?
--(1,1,100,null,default), -- issue: commenter ID should be a foriegn key,it's from user ID
(2,1,3,'sad for you',default),  -- here commenters are only followers
(3,1,4,'yep its done',default),
(4,3,2,'looks great',default),
(5,4,5,'me too',default),
(6,6,3,'cannot wait',default),
(7,5,2,'feel sad for you',default),
(8,8,1,'through the roof',default),
(9,9,3,'same here',default),
(10,9,2,'me too',default)

insert into privateChat values
(1,1,2,1,'Hi',default),
(1,2,1,2,'Hello',default),
(1,1,2,3,'How are you doing?',default),
(1,2,1,4,'Great',default),
(2,3,4,1,'great job done',default),
(2,4,3,2,'thanks',default),
(3,3,2,1,'See you tomorrow',default),
(3,2,3,2,'ok :)',default)

---- checking actions

-- in likes and dislikes actions should be cascade
-- in follower followerid should have same actions like userid
-- in comment commenterid should have cascade actions
