# MovieFlix Analytics

Projeto que simula a arquitetura de uma plataforma de streaming, integrando aplicação web, Docker, CI/CD e pipeline de dados (Data Lake → Data Warehouse → Data Mart).

---

##️ Arquitetura Resumida

### **Aplicação Web**
- Desenvolvida em Python.
- Empacotada com Docker.
- Executada via `docker-compose`.
- Imagem publicada em: `dhgtr/caixa_proj_final`.

---

## CI/CD (GitHub Actions)

### **CI – Build/Test/Push**
- Build da imagem Docker.
- Teste simples de disponibilidade.
- Push automático para o Docker Hub.

### **CD – Deploy**
- Baixa a imagem publicada.
- Sobe a aplicação com `docker-compose`.


Workflows em: .github/workflows/


---

## Pipeline de Dados

### **Data Lake (dados brutos)**
Local: `data/lake/`  
Arquivos:
- `movies.csv`
- `users.csv`
- `ratings.csv`

---

## Insights

Consultas SQL em `sql/insights.sql`:

1. Top 5 filmes mais populares  
2. Gênero com melhor avaliação média  
3. País que mais assiste filmes  





