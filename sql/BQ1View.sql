#+-+-+-+-+-+-+-+-+#
# Create view BQ1 #
#+-+-+-+-+-+-+-+-+#
CREATE OR REPLACE VIEW BQ1
AS
SELECT *
FROM GENDER_STATS_DATA
WHERE UPPER(INDICATOR_CODE)='SE.TER.CMPL.FE.ZS';