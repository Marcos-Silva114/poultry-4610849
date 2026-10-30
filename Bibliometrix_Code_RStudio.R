# Instalar pacotes
install.packages("bibliometrix")
install.packages("rio")

# Carregar pacotes
library(bibliometrix)
library(rio)

# Importar bases
webofscience_data <- convert2df("C:\Inovar\Resumos PPGCA\Revisão bibliográfica - TCC/wos.bib", dbsource = "wos", format = "bibtex")

# Ver quantos registros cada base tem
nrow(webofscience_data)

# Juntar bases e remover duplicatas
M <- mergeDbSources( webofscience_data, remove.duplicated = TRUE)

# Ver número final
nrow(M)

# Exportar para Excel
rio::export(M, file = "C:\Inovar\Resumos PPGCA\Revisão bibliográfica - TCC/M.xlsx")

# Abrir interface biblioshiny
biblioshiny()

