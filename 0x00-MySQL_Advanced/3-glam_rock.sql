--  write a SQL script that retrieves a list of bands with Glam rock as their main style
-- The output should have two columns named "band_name" and lifespan

SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
