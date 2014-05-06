SELECT DISTINCT p.pid FROM Person p,
	JOIN Acts a ON (a.pid = a.pid),
	JOIN Movie m ON (m.mid = a.mid),
	WHERE m.name = 'Back to the Future'
;

