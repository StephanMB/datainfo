SELECT DISTINCT p.pid FROM Person p, Acts a,  
	WHERE a.pid = p.pid 
	AND a.mid IN (
		SELECT m.mid FROM Movie m 
			WHERE m.name = 'Back to the Future'
	)
);

