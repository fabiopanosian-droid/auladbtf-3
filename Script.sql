REATE TABLE `Autores` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL
);

INSERT INTO `Autores` (`ID`, `Nome`) VALUES
(1, 'Nome Teste');



CREATE TABLE `Livros` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `Ano_publicacao` date DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL
) 



INSERT INTO `Livros` (`ID`, `Titulo`, `ISBN`, `Ano_publicacao`, `autor_id`) VALUES
(2, 'Bruno', '128', '2022-02-16', 1);




ALTER TABLE `Autores`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `Livros`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `autor_id` (`autor_id`);



ALTER TABLE `Autores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `Livros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `Livros`
  ADD CONSTRAINT `Livros_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `Autores` (`ID`);
COMMIT;

/* Comandos solicitados*/

INSERT INTO `Livros` (`Titulo`, `ISBN`, `Ano_publicacao`, `autor_id`) VALUES
('Bob', '129', '2021-05-10', 6);



SELECT * FROM Livros WHERE Ano_publicacao > 2020-01-01;

