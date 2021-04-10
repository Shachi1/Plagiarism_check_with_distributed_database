DROP VIEW BFS_view;
CREATE VIEW BFS_view AS
select * from SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1) WHERE functionName = 'BFS';
select * from BFS_view;