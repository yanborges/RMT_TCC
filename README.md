# 🎓 Regressão Multi-Target — Projeto de TCC UFSCar

Este repositório contém o código e os experimentos desenvolvidos para o **Trabalho de Conclusão de Curso (TCC)** do curso de **Engenharia de Computação da UFSCar**, sob orientação do **Prof. Dr. Alexandre Levada**.  
O projeto investiga e implementa abordagens para o **problema de Regressão Multi-Target (MTR)**, utilizando **Python** e bibliotecas de aprendizado de máquina como **Scikit-learn** e **Pandas**.

---

## 📘 Sobre o Projeto

A **Regressão Multi-Target (MTR)** é uma variação da regressão tradicional em que **múlticas variáveis dependentes** precisam ser previstas simultaneamente.  
Este trabalho teve como objetivo analisar e comparar diferentes estratégias e algoritmos aplicáveis a esse tipo de problema, com foco em desempenho, correlação entre alvos e interpretabilidade.

Foram conduzidos experimentos com diferentes conjuntos de dados e técnicas de pré-processamento, avaliando o impacto de cada abordagem nos resultados finais.

---

## ⚙️ Tecnologias Utilizadas

- **Python 3.x**
- **Pandas** — manipulação e análise de dados
- **NumPy** — operações matemáticas e vetorização
- **Scikit-learn** — modelos de regressão, métricas e validação cruzada
- **Matplotlib / Seaborn** — visualização de dados e resultados
- **Jupyter Notebook** — desenvolvimento e experimentação
- **Git / GitHub** — versionamento e controle de projeto

---

## 📂 Estrutura do Repositório

mtr-datasets/         # Conjuntos de dados utilizados nos experimentos

.DS_Store             # Arquivo de sistema (ignorar)

.gitignore            # Arquivos e pastas ignorados pelo Git

Estatistica.ipynb     # Análises estatísticas

MTR_TCC.ipynb         # Código principal do TCC — modelagem e experimentos

README.md             # Documentação do projeto

config.py             # Configurações e funções auxiliares

resultados.csv        # Resultados dos modelos (métricas, predições, etc.)

---

## 🧠 Metodologia

1. **Exploração e limpeza dos dados**  
   - Tratamento de valores ausentes e outliers  
   - Normalização e codificação de variáveis

2. **Análise estatística e correlação entre targets**  
   - Avaliação da relação entre variáveis de saída  
   - Identificação de dependências relevantes

3. **Modelagem e treinamento**  
   - Implementação de modelos de regressão individual e multi-target  
   - Teste de estratégias como Regressão em Cadeia e MultiOutputRegressor  

4. **Avaliação de desempenho**  
   - Métricas: RRMSE correlação entre targets  
   - Validação cruzada e análise de erros

---

## 📊 Resultados

Os resultados são apresentados em `resultados.csv` e analisados no notebook principal (`MTR_TCC.ipynb`).  
As conclusões destacam como a modelagem conjunta dos alvos pode melhorar o desempenho em cenários com forte correlação entre variáveis dependentes.

---

## 👨‍🏫 Orientação

Projeto desenvolvido sob orientação do **Prof. Dr. Alexandre Levada**,  
Departamento de Computação — **Universidade Federal de São Carlos (UFSCar)**.

---

## 📎 Como Executar

1. Clone este repositório:
   ```bash
   git clone https://github.com/yanborges/mtr-regressao-multitarget.git
   cd mtr-regressao-multitarget

2.	Crie um ambiente virtual e instale as dependências:
    ```bash
python -m venv venv
source venv/bin/activate   # (Linux/Mac)
venv\Scripts\activate      # (Windows)

<!-- pip install -r requirements.txt -->

3.	Abra os notebooks:
    ```bash
jupyter notebook

✉️ Contato

Autor: Yan Borges
Instituição: Universidade Federal de São Carlos (UFSCar)
E-mail: [yangborges@gmail.com]
LinkedIn: [linkedin.com/in/yan-borges]