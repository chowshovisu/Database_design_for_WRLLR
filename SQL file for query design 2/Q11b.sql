SELECT *
FROM V11a
WHERE totalsales = (SELECT Max(totalsales) FROM V11a);