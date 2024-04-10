# OIBSIP-lvl1proj2-data_cleaning
Data cleaning corrects or removes inaccurate, duplicate, or incomplete data, ensuring reliable outcomes in analysis. It's vital for demonstrating proficiency in data analysis.


Data cleaning involves rectifying or eliminating inaccurate, corrupted, duplicate, or incomplete data in a dataset. This crucial step ensures the integrity of analysis outcomes. In my approach, I employed Google Sheets' formulas to detect and remove duplicates while also handling special characters. Additionally, I replaced missing values with appropriate placeholders to maintain data coherence. To ensure thoroughness, I cross-checked the cleaned dataset with SQL queries, confirming its suitability for analysis. This meticulous process underscores the significance of robust data cleaning skills in facilitating accurate and reliable insights.


Google sheet formulas

1. Removing Special Characters in the name column
=REGEXREPLACE(B2, "[^a-zA-Z0-9\s]", "")


2. Counting to see if there are blanks in a column
=COUNTBLANK(D:D)


3. Replacing blanks with Unknown
=IF(ISBLANK(B3), "UNKNOWN", B3)

=IF(OR(ISBLANK(INDIRECT("B" & ROW())), INDIRECT("B" & ROW()) = ""), "UNKNOWN", INDIRECT("B" & ROW()))


4. To fill empty spaces with unknown
=IF(LEN(TRIM(F2))=0, "UNKNOWN", F2)


5. Removing Leading or Trailing spaces
=TRIM(A1)


6. To fill empty spaces with unknown
=IF(LEN(TRIM(F2))=0, "UNKNOWN", F2)


7. Checking for duplicates in id column
Done by using conditional formatting with the rule =COUNTIF(A:A, A1) > 1


8. This formula sees whether there are special characters and labels it as TRUE if there are and FALSE if there are not
=REGEXMATCH(TRIM(CLEAN(B1)), "[^a-zA-Z0-9 ]")


9. This formula counts the number of TRUE to know the number of cells with special characters. 
=COUNTIF(D:D, TRUE)


10. This formula checks if the cell in column O is empty, and if it is, it fills the cell with "01/01/1900" (a placeholder date); otherwise, it keeps the original date value. 
=IF(LEN(TRIM(O2))=0, DATE(1900, 1, 1), O2)

