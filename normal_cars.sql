CREATE TABLE make_title (
    make_title TEXT NOT NULL PRIMARY KEY,
    make_code TEXT NOT NULL,
    make_year INT NOT NULL
);

CREATE TABLE model_title (
    model_title TEXT NOT NULL PRIMARY KEY,
    model_code TEXT NOT NULL,
    model_make TEXT NOT NULL, --FK
    model_year INT NOT NULL --FK
)

CREATE TABLE year {
    year INT NOT NULL PRIMARY KEY,
    make_title TEXT NOT NULL, --FK
    model_title TEXT NOT NULL --FK
}
ALTER TABLE make_title ADD CONSTRAINT year FOREIGN KEY (make_year) REFERENCES year;
ALTER TABLE model_title ADD CONSTRAINT make FOREIGN KEY (model_make) REFERENCES make_title;
ALTER TABLE model_title ADD CONSTRAINT year FOREIGN KEY (model_year) REFERENCES year;
ALTER TABLE year ADD CONSTRAINT make FOREIGN KEY (make_title) REFERENCES make_title;
ALTER TABLE year ADD CONSTRAINT make FOREIGN KEY (model_title) REFERENCES model_title;