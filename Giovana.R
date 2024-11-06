# Exemplo de texto
texto <- "ana e auria são amigas"

# Transformando toda a string em maiúsculas
texto_maiusculo <- toupper(texto)

# Exibindo o resultado
print(texto_maiusculo)

# Criando um exemplo de data frame
df <- data.frame(
  nome = c("João", "Maria", "Ana"),
  cidade = c("São Paulo", "Rio de Janeiro", "Belo Horizonte"),
  idade = c(25, 30, 22), # Coluna numérica
  stringsAsFactors = FALSE # Para evitar que colunas de texto sejam convertidas para fatores
)

# Exibindo o data frame original
print("Data frame original:")
print(df)

# Aplicando a transformação para maiúsculas nas colunas de texto (caracter)
df[] <- lapply(df, function(x) if(is.character(x)) toupper(x) else x)

# Exibindo o data frame após transformação
print("Data frame com todas as variáveis de texto em maiúsculas:")
print(df)



