# Prompt Completo — Reels Instagram: Consultor de TI Animado
**Objetivo:** Vídeo 9:16, 60–90s, estilo Pixar Realista, animação labial sincronizada, cortes dinâmicos de câmera.

---

## 1. PERSONAGEM — Prompt Base (Midjourney / Leonardo AI / Ideogram)

### Versão Principal (Neutro / Explicando)
```
Cinematic 3D animation, Pixar-meets-Unreal Engine 5 realism. A charismatic, chubby, mixed-race Brazilian (pardo skin tone) male executive in his late 30s. Clean tapered fade haircut, well-groomed short beard. Stylish modern eyeglasses (thin black rectangular frames). Wearing a tailored navy blue blazer over a crisp white dress shirt, no tie, one button open — business casual confidence. Warm, trustworthy smile, looking directly at the camera with engaging energy. Upper body framing, slightly off-center. Background: premium modern tech office, floor-to-ceiling glass windows, soft bokeh of a São Paulo skyline, subtle floating holographic data icons (cloud, code brackets, gear) in muted blue tones. Rim lighting, warm key light, 8K render, photorealistic skin texture, expressive facial features. Professional yet approachable vibe. --ar 9:16 --style raw --v 6.1
```

### Versão 2 — Apontando / Apresentando (para overlay de texto)
```
[mesmo prompt acima] — He is gesturing with his right hand open toward the camera, as if presenting a key idea. Slight forward lean, eyebrows raised with conviction. --ar 9:16 --style raw --v 6.1
```

### Versão 3 — Sorrindo / Call to Action
```
[mesmo prompt acima] — Big confident smile, head slightly tilted, both hands open in a welcoming gesture. Energy of someone who just delivered a great insight. --ar 9:16 --style raw --v 6.1
```

> **Dica Midjourney:** Após gerar, use `/describe` na imagem escolhida para refinar o estilo. Use sempre `--cref [URL da imagem aprovada]` para manter consistência entre versões.

---

## 2. ROTEIRO DE ÁUDIO — Script para ElevenLabs

### Estrutura do Reels (60 segundos)

**[0–5s] GANCHO (Dor do cliente)**
> "Você gasta uma fortuna com TI e ainda assim o seu negócio trava na hora que mais precisa escalar?"

**[5–20s] PROBLEMA + VIRADA**
> "A maioria das empresas contrata um time inteiro de TI — salário, encargo, treinamento — pra resolver problemas que um especialista resolve em dias. Eu sou consultor de tecnologia. E uma diária minha substitui meses de retrabalho interno."

**[20–40s] PROPOSTA DE VALOR — Os benefícios**
> "Com certificação FIAP e experiência em cloud AWS, automação, integrações e arquitetura de sistemas, eu trago o que há de mais moderno no mercado. Não instalo software. Eu desenho a estratégia que faz a sua empresa escalar — usando as ferramentas certas, no momento certo."

**[40–55s] PROVA SOCIAL + DIFERENCIAL**
> "Enquanto seus concorrentes ainda estão debatendo qual sistema comprar, seus clientes já poderiam estar sendo atendidos com automação, IA e processos digitais que economizam tempo e dinheiro real."

**[55–60s] CTA (Chamada para Ação)**
> "Me chama no direct ou acessa o link na bio. Vamos conversar sobre o que a tecnologia pode fazer pelo seu negócio — sem complicação."

---

## 3. VOZ — Configuração no ElevenLabs

- **Idioma:** Português Brasileiro
- **Voz sugerida:** `Adam` (adaptado PT-BR) ou crie um clone com áudio seu
- **Estabilidade:** 55%
- **Clareza + Similaridade:** 75%
- **Tom:** Firme, articulado, levemente entusiasmado — como um palestrante TEDx
- **Velocidade:** 0.95x (ligeiramente mais lento que o padrão para dar autoridade)

> **Alternativa:** Grave você mesmo o áudio e use o ElevenLabs só para limpeza e equalização de voz.

---

## 4. ANIMAÇÃO LABIAL — Configuração no HeyGen

### Setup do Projeto
1. **Plano necessário:** HeyGen Creator ou acima (suporta upload de imagem própria)
2. **Upload:** Imagem gerada no Passo 1 (versão neutra, PNG 1080x1920)
3. **Modo:** `Photo Avatar` → `Expressive Animation`
4. **Áudio:** Importe o MP3 gerado no ElevenLabs
5. **Configurações avançadas:**
   - Ative `Head Movement: Natural`
   - Ative `Eye Blink: On`
   - `Expression Intensity: 70%` (evita exagero de cartoon)

### Prompt de Direção de Cena para o HeyGen (campo "Scene Direction")
```
The character speaks directly to camera with moderate, natural head movements. 
He nods gently when making key points. Eyebrows raise slightly when presenting 
a question to the viewer. Maintains consistent eye contact. Occasional blinks. 
Slight shoulder movement. Professional TV presenter energy.
```

> **Alternativa ao HeyGen:** D-ID (mais acessível) ou Kling AI com animação de personagem.

---

## 5. CORTES DE CÂMERA — Animação no CapCut / DaVinci Resolve

### Estrutura de Cortes (sincronizado com o roteiro)

| Tempo | Ângulo / Efeito | Descrição |
|-------|-----------------|-----------|
| 0–5s  | Close no rosto (zoom lento entrando) | Cria tensão no gancho |
| 5–15s | Plano médio (cintura p/ cima) | Estabilidade ao apresentar o problema |
| 15–25s | Leve zoom out + pan sutil direita | Abre espaço para overlay de ícones |
| 25–40s | Plano médio com overlay de hologramas | Reforça autoridade técnica visualmente |
| 40–50s | Corte para versão "apontando" (imagem 2) | Gestos reforçam o ponto de virada |
| 50–60s | Volta ao close, sorrindo (imagem 3) | CTA com energia positiva e conexão |

### Prompt para gerar transições de câmera via CapCut AI (campo "Auto Reframe")
```
Dynamic cinematic cuts, slow zoom in during speech peaks, subtle Ken Burns effect 
on all static shots, smooth crossfade between angles. No jump cuts. 
Professional corporate documentary feel.
```

---

## 6. OVERLAYS E MOTION GRAPHICS

### Ícones 3D para inserir via CapCut / After Effects

Nos momentos mencionados no roteiro, insira ícones animados ao lado do personagem:

- **"cloud AWS"** → Ícone nuvem azul flutuante
- **"automação"** → Engrenagens girando
- **"IA"** → Neurônio/rede neural pulsando
- **"integrações"** → Setas conectando blocos
- **"FIAP"** → Selo/badge dourado aparecendo (1s de duração)

> Fonte gratuita de ícones 3D animados: **LottieFiles.com** — busque por "cloud tech", "AI neural", "gear automation"

### Legendas (estilo Alex Hormozi / Andrew Tate)
- **Fonte:** Montserrat Bold ou Anton
- **Tamanho:** Grande (ocupa 80% da largura)
- **Cor:** Branco com contorno preto fino
- **Animação:** Palavra por palavra, com destaque (cor laranja ou amarelo) na palavra-chave de cada frase
- **Posição:** Terço inferior da tela

---

## 7. TRILHA SONORA E SOM

- **Música de fundo:** Lo-fi corporativo ou Ambient Tech (buscar no Epidemic Sound: "corporate inspiration" ou "tech background")
- **Volume da trilha:** -18dB abaixo da voz (voz deve ser sempre protagonista)
- **SFX (efeitos):** Som de "whoosh" suave nas transições de câmera
- **Equalização da voz:** Boost leve em 2kHz–4kHz para presença, corte em 200Hz para remover "embolamento"

---

## 8. ESPECIFICAÇÕES TÉCNICAS FINAIS

| Parâmetro | Valor |
|-----------|-------|
| Resolução | 1080 x 1920 px (9:16) |
| FPS | 30 |
| Duração | 60–75 segundos |
| Formato exportação | MP4, H.264, bitrate 8Mbps+ |
| Áudio | AAC 320kbps, stereo |
| Miniatura | Frame entre 2–4s (personagem com expressão de autoridade) |

---

## 9. FERRAMENTAS RESUMIDAS (por etapa)

| Etapa | Ferramenta Principal | Alternativa Gratuita |
|-------|---------------------|----------------------|
| Personagem | Midjourney v6 | Leonardo AI (free tier) |
| Voz | ElevenLabs | Murf AI |
| Animação labial | HeyGen | D-ID |
| Edição / Cortes | CapCut Pro | DaVinci Resolve |
| Ícones animados | LottieFiles | Freepik |
| Legendas estilo Hormozi | CapCut Auto Caption | Captions.ai |

---

## 10. CHECKLIST ANTES DE PUBLICAR

- [ ] Gancho nos primeiros 3 segundos (sem introdução)
- [ ] Legendas ativadas (70% dos reels são assistidos sem som)
- [ ] Resolução 1080x1920 verificada
- [ ] Música não cobre a voz
- [ ] CTA claro nos últimos 5 segundos
- [ ] Hashtags: #consultoriaTI #tecnologia #transformacaodigital #FIAP #AWS #automacao #reels
- [ ] Postar entre 18h–21h (horário de pico Instagram BR)

---

*Documento gerado para: Demarchi Consultoria de TI — Reels Instagram*
*Data: Maio 2026*
