### Bloco 21 - Vocabulary Booster

![homer lendo o dicionário](https://media.giphy.com/media/l2Je66zG6mAAZxgqI/giphy.gif)

---

### Arquivos

1 arquivo para cada desafio.

```
Desafio 1 - Crie uma query que mostre se o país pertence ou não à região "Europe".

desafio1.sql

```
```

Desafio 2 - Categorize o nível de remuneração de cada cargo.

desafio2.sql

```

---

### Arquivos


O arquivo deve conter apenas o código SQL do desafio resolvido. Não se esqueça de incluir o ponto e vírgula (";") no final de suas queries e também de colocar o nome do banco_de_dados.tabela_por_completo, como no exemplo a seguir:

```

SELECT * FROM hr.countries;

```

---


### Arquivos

Para entregar o seu projeto você deverá criar um **Pull Request** neste repositório. Este Pull Request deverá conter na **pasta raiz** do projeto os arquivos desafio1.sql, desafio2.sql e assim por diante até o desafio16.sql, que conterão seu código SQL de cada desafio obrigatório, respectivamente.


---

### Arquivos (IMPORTANTE!)

Todos os arquivos devem ser criados na raíz do projeto. Caso contrário, o avaliador não conseguirá "enxergar" estes arquivos.

---

### Testando

```
MYSQL_USER=<USER> MYSQL_PASSWORD=<PASSWORD> HOSTNAME=<HOST> npm test
```

```
MYSQL_USER=root MYSQL_PASSWORD=123456 HOSTNAME=localhost npm test
```

---

### Dicas

- Muito cuidado com erros de digitação, nomenclaturas, etc.

- Utilize o comando abaixo para criar todos os arquivos de uma só vez.

```
touch desafio{1..N}.sql
```

- Utilize 'ctrl + shift + o' para abrir os arquios no workbench.


---

### Testes x Banco de Dados

Toda vez que rodar os testes, o banco de dados é dropado. Então, precisará importá-lo novamente.

---

### Vamos 'codar'?

![gatinho codando](https://media.giphy.com/media/LmNwrBhejkK9EFP504/giphy.gif)