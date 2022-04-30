CREATE TABLE users (
id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) NOT NULL,
hashsaltpass VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

INSERT INTO users(id, username, hashsaltpass)
VALUES
  (1,"root","$2y$10$HK4q2Hcva/A1ZnwLHHEiMOfzjrZpjxzYEyFXY.t53Y0I9bbhfIqx2"),
  (2,"user","$2y$10$VivVeyTPq0L/IVn49oTnNOEsf7fxiGbP0P7avl8p2/4/hjxI4MunG");
