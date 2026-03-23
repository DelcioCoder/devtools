# ⚡ DevTools (Bash Workflow)

Um conjunto de funções e atalhos em Bash para melhorar a produtividade no dia a dia de desenvolvimento.

Inclui utilidades para:

* Docker (`docker compose logs`)
* Navegação rápida entre projetos
* Manipulação de clipboard
* Autocomplete inteligente

---

## 🚀 Instalação

### 1. Clonar o repositório

```bash
git clone https://github.com/teu-usuario/devtools.git ~/devtools
```

---

### 2. Criar symlink

```bash
ln -s ~/devtools/.devtools.sh ~/.devtools.sh
```

---

### 3. Importar no `.bashrc`

Adiciona no final do teu `.bashrc`:

```bash
source ~/.devtools.sh
```

---

### 4. Recarregar

```bash
source ~/.bashrc
```

---

## 🧰 Comandos disponíveis

### 📋 `clip`

Copia o conteúdo de um ficheiro para o clipboard.

```bash
clip arquivo.txt
```

---

### 📁 `stb`

Navega rapidamente para o projeto backend.

```bash
stb
```

> Caminho atual:
> `~/Documentos/projectos/sentaurai-backend`

---

### 📦 `dlogs`

Mostra logs de serviços do Docker Compose.

```bash
dlogs nginx
dlogs worker
dlogs mqtt_consumer
```

---

## ⚡ Autocomplete (TAB)

O comando `dlogs` suporta autocomplete automático baseado nos serviços do `docker compose`.

Exemplo:

```bash
dlogs ng[TAB]
```

➡️ Completa para:

```bash
dlogs nginx
```

---

## 🧠 Como funciona

O autocomplete usa:

```bash
docker compose config --services
```

Para listar dinamicamente os serviços disponíveis.

---

## 📂 Estrutura

```bash
.devtools.sh
```

---

## 🔥 Roadmap

* [ ] Comando `d` (wrapper completo para Docker)
* [ ] Atalhos para Git
* [ ] Integração com Neovim
* [ ] Scripts para Django (manage.py shortcuts)

---

## 💡 Motivação

Este projeto foi criado para acelerar tarefas repetitivas e melhorar o fluxo de trabalho no terminal.

Inspirado em setups de desenvolvedores experientes.

---

## 🤝 Contribuição

Sinta-se livre para melhorar e adaptar ao seu workflow.

---

## 📄 Licença

MIT
