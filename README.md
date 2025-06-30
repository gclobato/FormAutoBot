# FormAutoBot

# FormAutoBot 🤖

Automação de preenchimento de formulário usando Robot Framework + SeleniumLibrary.  
Esse projeto simula o preenchimento completo de um formulário com campos de texto, checkbox, radio buttons, select dropdowns e date pickers, no site de testes.

---

## 📌 Funcionalidades

- Abre navegador automaticamente
- Preenche nome, e-mail, telefone e endereço
- Seleciona gênero e dias da semana
- Escolhe opções em menus suspensos (país, cor, animal)
- Interage com campos de data (via date picker e campos diretos)
- Realiza envio do formulário (`Submit`)
- Gera relatórios de teste completos (`report.html`, `log.html`, `output.xml`)

---

## 💻 Pré-requisitos

- [Python 3.10+](https://www.python.org/downloads/)
- [Google Chrome](https://www.google.com/chrome/)
- [ChromeDriver](https://sites.google.com/chromium.org/driver/) compatível com a versão do Chrome
- [VS Code 

---

## 🚀 Instalação


# 1. Clone o repositório
git clone https://github.com/seu-usuario/FormAutoBot.git
cd FormAutoBot

# 2. Crie um ambiente virtual (opcional)
python -m venv .venv
.\.venv\Scripts\activate  # Windows

# 3. Instale as dependências
pip install -r requirements.txt

robot form.robot

# Estrutura
FormAutoBot/
│
├── form.robot           # Arquivo principal do teste
├── README.md            # Descrição do projeto
├── .venv/               # Ambiente virtual (se criado)
├── output.xml           # Saída da execução
├── log.html             # Log detalhado
└── report.html          # Relatório final

# Autor
Guilherme Lobato
Automação com Robot Framework, Selenium e Python.

