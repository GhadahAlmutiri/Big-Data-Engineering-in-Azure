-- Getting the Least Frequent Tags
SELECT TOP 500 tag, COUNT(*) AS count
FROM
    OPENROWSET(
        BULK 'https://capstonedlstorage.dfs.core.windows.net/mydatalakefilesystem/Capstone2/Predictions/predictions_2024-05-27_08-08-11.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GROUP BY tag
ORDER BY count DESC;
