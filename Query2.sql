-- INSERT INTO equipment VALUES (4,"equip-four","xyz",50);
-- SELECT * FROM equipment;

-- INSERT INTO performer VALUES (4,"performer-four","xyz","11-6543256-1");
-- SELECT * FROM performer;

-- UPDATE equipment SET Equipment_name = 'new set equipment' 
-- WHERE Equipment_ID IN (1,2);
-- SELECT * FROM equipment;

-- UPDATE performer SET Name = 'new set equipment' 
-- WHERE Performer_ID = 1;
-- SELECT * FROM performer;

-- DELETE FROM participate WHERE Show_ID = 2;
-- SELECT * FROM participate;

-- SELECT * FROM participate WHERE Participate_ID = 3;

-- SELECT * FROM showw JOIN participate WHERE showw.Show_ID=participate.Show_ID;

-- SELECT Show_name,Performer_ID FROM showw JOIN participate 
-- WHERE showw.Show_ID=participate.Show_ID;

-- SELECT AVG(Cost_Planned) FROM participate;

-- SELECT COUNT(NAME) FROM performer;

-- SELECT SUM(Required_Quantity) FROM required;

-- SELECT * FROM equipment,required;

