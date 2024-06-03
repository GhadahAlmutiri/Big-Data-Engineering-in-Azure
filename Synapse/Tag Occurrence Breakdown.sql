-- Getting the Tag Frequency Distribution
SELECT
    COUNT(*) AS tag_count,
    COUNT(CASE WHEN tag_freq = 1 THEN 1 END) AS tags_appearing_once,
    COUNT(CASE WHEN tag_freq = 2 THEN 1 END) AS tags_appearing_twice,
    COUNT(CASE WHEN tag_freq = 3 THEN 1 END) AS tags_appearing_thrice,
    COUNT(CASE WHEN tag_freq >= 4 THEN 1 END) AS tags_appearing_4_or_more_times
FROM
    (
        SELECT
            tag,
            COUNT(*) AS tag_freq
        FROM
            OPENROWSET(
                BULK 'https://capstonedlstorage.dfs.core.windows.net/mydatalakefilesystem/Capstone2/Predictions/predictions_2024-05-27_08-08-11.csv',
                FORMAT = 'CSV',
                PARSER_VERSION = '2.0',
                HEADER_ROW = TRUE
            ) AS [result]
        GROUP BY tag
    ) AS tag_freq_table
