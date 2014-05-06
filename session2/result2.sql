INSERT ALL
	INTO F(x, y , violation, motivation) VALUES ('ABC','EF', false,'ABC is een superkey')
	INTO F(x, y , violation, motivation) VALUES ('E','D', true,'E is geen superkey')
	INTO F(x, y , violation, motivation) VALUES ('D','A', true,'A is geen superkey')
	;
SELECT * FROM Problem1;