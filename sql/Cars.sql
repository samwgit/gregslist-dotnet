-- Active: 1666715476024@@SG-sambcw-userdb-6830-mysql-master.servers.mongodirector.com@3306@garfieldgaming

CREATE TABLE
    IF NOT EXISTS cars(
        id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
        make VARCHAR(255) NOT NULL,
        model VARCHAR(255) NOT NULL,
        year int NOT NULL CHECK (year >= 1886),
        price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
        description VARCHAR(255),
        imgUrl VARCHAR(255) DEFAULT "https://www.autolist.com/assets/listings/default_car.jpg"
    );

INSERT INTO
    cars(
        make,
        model,
        year,
        price,
        description,
        imgUrl
    )
VALUES (
        "Odie",
        "Garfelf",
        3000,
        100,
        "I love lasanga it is so good and yummy I HATE backend work",
        "https://s1.cdn.autoevolution.com/images/news/audi-r8-v10-gets-full-garfield-wrap-becomes-project-carfield-109151_1.jpg"
    );

SELECT * FROM cars WHERE id = 1;

DELETE FROM cars where id = 1;

UPDATE cars SET model = "Garfelf" WHERE Id = 2;