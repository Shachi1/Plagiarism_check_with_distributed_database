--Created by Mehjabeen Shachi
clear screen;
--delete existing table
drop table SourceCode cascade constraints;

--Create SourceCode database
create table SourceCode(
id     integer, 
code   varchar2(4000),  
        PRIMARY KEY (id)
);


--Insert data into the SourceCode database
insert into SourceCode values(1, 'visited = [False] * (max(self.graph) + 1)
queue = []
queue.append(s)
visited[s] = True
while queue:
    s = queue.pop(0)
    print (s, end = " ")
    for i in self.graph[s]:
        if visited[i] == False:
            queue.append(i)
                visited[i] = True');


insert into SourceCode values(2, 'visited.append(node)
queue.append(node)
while queue:
    s = queue.pop(0)
	    print (s, end = " ") 
    for neighbour in graph[s]:
      if neighbour not in visited:
        visited.append(neighbour)
        queue.append(neighbour)');
		

insert into SourceCode values(3, 'visited = [False] * (max(self.graph) + 1)
queue.append(s)
visited[s] = True
while queue:
    s = queue.pop(0)
    for i in self.graph[s]:
        if visited[i] == False:
            queue.append(i)
                visited[i] = True');


insert into SourceCode values(4, 'visited = [False] * (max(self.graph) + 1)
queue = []
queue.append(s)
visited[s] = True
while queue:
    s = queue.pop(0)
    print (s, end = " ")
    for i in self.graph[s]:
        if visited[i] == False:
            queue.append(i)
                visited[i] = True');		
		
--commit;
COLUMN id        HEADING 'ID';
COLUMN code      HEADING 'Source Code';
COLUMN coderId   HEADING 'Coder ID';
COLUMN functionName   HEADING 'Function Name';

column code format a50 TRU;
set linesize 130; 

select * from SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1);
--select * from SourceCode;
--select * from CodeInfo1@site1 union select * from CodeInfo2@site1;
