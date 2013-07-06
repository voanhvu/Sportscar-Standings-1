CREATE PROCEDURE [Proc_OM_Score_RemoveDependencies]
@ID int
AS
BEGIN
-- Contact scores
DELETE FROM OM_ScoreContactRule WHERE ScoreID=@ID;
-- Score rules
DELETE FROM OM_Rule WHERE RuleScoreID=@ID;
END
