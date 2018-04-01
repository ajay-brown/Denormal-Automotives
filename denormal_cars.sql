SELECT model_title FROM car_models;
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'VOLKS';
SELECT DISTINCT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
SELECT DISTINCT * FROM car_models WHERE year = 2010 OR year = 2011 OR year = 2012 OR year = 2013 OR year = 2014 OR year = 2015;