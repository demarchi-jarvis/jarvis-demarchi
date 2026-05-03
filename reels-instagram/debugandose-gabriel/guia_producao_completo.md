# GUIA DE PRODUÇÃO COMPLETO
## Reels Instagram — "O que faz um Consultor de TI?"
## Canal: Debugando-se | Personagem: Gabriel (Executivo Animado)
### Versão definitiva — Maio 2026

---

# VISÃO GERAL DO PROJETO

**Objetivo:** Reels Instagram 9:16, ~3–4 minutos de conteúdo cortado em múltiplos Reels de 60–90s cada.
**Personagem:** Gabriel — Executivo gordinho, pardo, cabelo bem cortado e óculos modernos.
**Roteiro:** Script completo "Debugando-se" com 9 cenas.
**Áudio de origem:** Importado do YouTube (extraído externamente).
**Pipeline:** Midjourney → Extração de áudio → HeyGen (lip-sync) → CapCut (edição/cortes/legendas).

---

# PARTE 1 — PERSONAGEM GABRIEL (Geração de Imagem)

## Ferramenta: Midjourney v6.1
**Acesso:** discord.gg/midjourney | Plano Basic $10/mês

---

## SHOT A — Plano Médio Principal (Shot de fala padrão)

```
Hyperrealistic cinematic portrait, photorealistic 3D render, Unreal Engine 5 quality.
A charismatic, chubby mixed-race Brazilian man (pardo warm brown skin tone),
late 30s, visibly overweight but confident and well-presented.
Very clean short tapered fade haircut, perfectly styled, slightly longer on top
with a natural side part — barbershop fresh, "disfarçado" cut style.
Short well-groomed beard stubble, neat.
Modern slim rectangular black eyeglasses, slightly large frames for his face.
Wearing a tailored fitted dark navy blue blazer, crisp white dress shirt,
top button casually undone, no tie — polished business casual executive.
Warm natural smile, slight confident smirk, direct eye contact with camera,
eyebrows slightly raised — the expression of someone about to reveal important information.
Framing: waist-up, upper body centered slightly right of frame, space on left for text overlays.
Background: premium modern corporate tech office in São Paulo,
floor-to-ceiling glass windows with soft bokeh city skyline,
translucent floating holographic UI elements (cloud, circuit lines, data charts)
in electric blue and purple tones.
Cinematic lighting: warm soft key light from upper-left, cool blue rim light from right,
subtle volumetric light from windows. Ultra-sharp focus on face,
8K skin texture detail, ARRI Alexa cinematic lens, shallow depth of field.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## SHOT B — Ângulo 3/4 Lateral (Apresentando dados / Cena 3 e 5)

```
[Mesmo personagem do Shot A acima]
He is turned 3/4 to the right, body slightly angled away from camera.
His right hand is open and extended toward the camera, as if presenting key information.
Left hand rests on a desk beside him. Body language: passionate professor mid-explanation.
On his right side (left of frame): a large curved monitor showing server alert dashboard
with red blinking warning "ALERTA: 900GB / LIMITE: 50GB".
Same premium office environment, same cinematic lighting.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## SHOT C — Plano Aberto / Corpo Inteiro (Gancho inicial / Cena 1)

```
[Mesmo personagem do Shot A acima]
Full body wide shot. He stands confidently in the center of a large modern open-plan
tech office. Background: blurred colleagues at standing desks, large glass partitions,
floating digital screens with data.
He holds a tablet loosely in one hand, other hand in blazer pocket.
Feet slightly apart, relaxed authoritative stance.
Camera angle: slightly low-angle (eye-level of shorter person) — conveys authority.
Dramatic contrast lighting from above, floor illuminated softly.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## SHOT D — Close Facial (CTA / Cena 9)

```
[Mesmo personagem do Shot A acima]
Extreme close-up portrait. Face and upper chest only.
Big genuine warm smile showing white teeth, eyes slightly crinkled in the corners.
Direct eye contact, completely relaxed confidence — the expression of "I just solved it."
Head very slightly tilted left. Ultra sharp focus on eyes behind glasses.
Cinematic bokeh background, warm golden hour light from upper right,
cool blue fill from left. Subtle lens flare. Shallow depth of field.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## SHOT E — Sala de Servidores (Cena 3 — Servidor crítico)

```
[Mesmo personagem do Shot A acima]
He stands in a dark server room with rows of black server racks.
Red warning lights are blinking on multiple servers.
A large wall monitor behind him shows: "ALERTA CRÍTICO — 900GB / LIMITE: 50GB" in red.
He snaps his fingers and the scene transitions: the red alert servers dissolve into
clean floating blue cloud icons (Azure/AWS cloud visualization).
His expression: calm authority, "I've seen this before and I know the fix."
Dramatic deep contrast lighting, server rack LED strips illuminate his face from below.
Same character, glasses, navy blazer.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## SHOT F — Tela Dividida Executor / Estrategista (Cena 4)

```
Split screen composition 9:16.
LEFT HALF: [Mesmo personagem do Shot A] typing rapidly on a keyboard with glowing code
on screen — "Hands-on" mode. Sleeves slightly rolled up, focused intense expression.
RIGHT HALF: Same character standing at a large illuminated whiteboard/digital display
with a project roadmap diagram, pointing to a step on the roadmap.
Other team members (blurred) sit attentively around a conference table.
Right half character: blazer on, more formal, strategic expression.
Clean divide between the two halves. Title at top center (space left blank for text overlay).
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## INSTRUÇÃO DE CONSISTÊNCIA ENTRE SHOTS

```
1. Gere o Shot A primeiro. Aprove a melhor variação.
2. Clique em "Use as Image" no Midjourney na imagem aprovada.
3. Para todos os outros shots (B, C, D, E, F): adicione ao final do prompt:
   --cref [URL_DO_SHOT_A_APROVADO] --cw 85
   Isso mantém o rosto do Gabriel consistente em todos os ângulos.
4. Se o rosto mudar muito: use o recurso "Character Reference" do Midjourney
   (ícone de pessoa no campo de prompt no Discord).
5. Salve todas as imagens aprovadas em PNG 1080x1920.
```

---

# PARTE 2 — EXTRAÇÃO DE ÁUDIO DO YOUTUBE

## Objetivo: Extrair o áudio do vídeo "Debugando-se" para usar no HeyGen

### Ferramentas gratuitas para extração:

| Ferramenta | URL | Formato | Qualidade |
|---|---|---|---|
| yt-dlp (CLI) | github.com/yt-dlp/yt-dlp | MP3/WAV | Melhor |
| Y2Mate | y2mate.com | MP3 | Boa |
| 4K Video Downloader | 4kdownload.com | MP3/AAC | Boa |
| OnlineVideoConverter | onlinevideoconverter.pro | MP3 | Básica |

### Comando yt-dlp (recomendado para máxima qualidade):
```bash
# Instalar yt-dlp
pip install yt-dlp

# Extrair APENAS o áudio em WAV (melhor qualidade para lip sync)
yt-dlp -x --audio-format wav --audio-quality 0 \
  "https://www.youtube.com/watch?v=AxKGPnsqg5Q" \
  -o "gabriel_debugandose_audio.%(ext)s"

# Alternativa em MP3 320kbps
yt-dlp -x --audio-format mp3 --audio-quality 0 \
  "https://www.youtube.com/watch?v=AxKGPnsqg5Q" \
  -o "gabriel_debugandose_audio.%(ext)s"
```

### Pós-processamento do áudio (Audacity — gratuito):
```
1. Abra o arquivo WAV no Audacity
2. Efeitos → Redução de Ruído (se houver ruído de fundo)
3. Efeitos → Normalizar → -1dB (para não distorcer)
4. Efeitos → Compressor: Threshold -18dB, Ratio 3:1 (voz mais presente)
5. Exportar como WAV 44100Hz, 16-bit (formato ideal para HeyGen)
```

---

# PARTE 3 — DIVISÃO DO ÁUDIO POR CENAS

## Como dividir o áudio completo em clipes por cena (para sincronizar com os shots)

Use o **Audacity** ou **Adobe Premiere** para cortar o áudio nos timestamps do roteiro:

| Clipe | Cena | Conteúdo | Shot a usar |
|-------|------|----------|-------------|
| audio_cena1.wav | Gancho (abertura) | "Fala, pessoal do Debugando-se! Não, eu não sumi..." | Shot C (plano aberto) |
| audio_cena2.wav | O Problema | "Bem-vindos de volta. Aqui no Debugando-se..." | Shot A (plano médio) |
| audio_cena3.wav | A Solução | "Quando você pisa no mundo corporativo..." | Shot E (sala servidores) + Shot B (3/4) |
| audio_cena4.wav | Duas Faces | "E como nós atuamos? De duas maneiras..." | Shot F (tela dividida) |
| audio_cena5.wav | Cibersegurança | "Agora, quando elevamos o jogo..." | Shot A (plano médio) |
| audio_cena6.wav | Consultoria vs Fábrica | "Mas calma lá, Gabriel!..." | Shot B (3/4) |
| audio_cena7.wav | Big Four | "E para fechar o ciclo do conhecimento..." | Shot A (plano médio) |
| audio_cena8.wav | Regra de Ouro | "Mas atenção a essa regra de ouro..." | Shot A (plano médio) |
| audio_cena9.wav | CTA Final | "O mistério da consultoria tecnológica está revelado..." | Shot D (close facial) |

---

# PARTE 4 — CONFIGURAÇÃO DO HEYGEN (Lip Sync com áudio importado)

## Plano necessário: HeyGen Creator ($29/mês) ou Business ($89/mês para HD)

### Passo a Passo Completo:

**ETAPA 1 — Criar o Photo Avatar do Gabriel**
```
1. Acesse app.heygen.com
2. Menu lateral: Avatars → Create New Avatar
3. Selecione: Photo Avatar
4. Upload: Shot A (PNG 1080x1920)
5. Modo: EXPRESSIVE (não "Standard" — dá mais vida às expressões)
6. Aguarde processamento: 10–20 minutos
7. Repita para Shot B, C, D (cada um vira um avatar separado)
```

**ETAPA 2 — Criar vídeo com lip sync por áudio importado**
```
1. Menu: Create Video → Talking Photo
2. Selecione: Avatar do Gabriel (Shot A)
3. Clique em: Audio → Upload Audio File
4. Upload: audio_cena2.wav (ou o clipe correspondente)
5. Resolução: 1080 x 1920 (9:16) — OBRIGATÓRIO
6. Qualidade: Highest (somente no plano Business)
```

**ETAPA 3 — Configurações Avançadas (campo de ajuste fino)**
```
Head Movement: Natural          ← NUNCA deixar Static
Eye Contact: Direct Camera
Expression Intensity: 68%       ← entre 65-75%, evita exagero
Blink Rate: Natural
Shoulder Sway: Subtle
Background: Keep Original       ← mantém o background do Midjourney
```

**ETAPA 4 — Prompt de Direção de Cena (campo "Scene Description")**
```
Male executive tech professional, Brazilian, confident TV presenter energy.
Natural moderate head nods when emphasizing key points.
Slight forward lean on important statements.
Eyebrows raise naturally when asking rhetorical questions to viewer.
Natural blink rate. Subtle shoulder movement with breathing rhythm.
Occasional brief glance slightly off-camera then returns — authentic, not robotic.
Mouth opens wide on stressed syllables. Energy level: 7/10 — serious but engaging.
```

**ETAPA 5 — Repetir para cada clipe de cena**
```
Crie um vídeo HeyGen separado para cada audio_cena.wav:
- Gabriel_Cena1.mp4 (Shot C + audio_cena1.wav)
- Gabriel_Cena2.mp4 (Shot A + audio_cena2.wav)
- Gabriel_Cena3a.mp4 (Shot E + audio_cena3.wav — primeira metade)
- Gabriel_Cena3b.mp4 (Shot B + audio_cena3.wav — segunda metade)
- Gabriel_Cena4.mp4 (Shot F — imagem estática com leve animação)
- Gabriel_Cena5.mp4 (Shot A + audio_cena5.wav)
- Gabriel_Cena6.mp4 (Shot B + audio_cena6.wav)
- Gabriel_Cena7.mp4 (Shot A + audio_cena7.wav)
- Gabriel_Cena8.mp4 (Shot A + audio_cena8.wav)
- Gabriel_Cena9.mp4 (Shot D + audio_cena9.wav)
```

---

# PARTE 5 — EDIÇÃO FINAL NO CAPCUT

## Estrutura de Montagem Cena por Cena

| Tempo | Clipe | Shot | Efeito de Câmera | Overlay |
|-------|-------|------|-----------------|---------|
| 0–8s | Cena 1 — Gancho | C (plano aberto) | Zoom in lento 3% | Título "DEBUGANDO-SE" neon |
| 8–30s | Cena 2 — O Problema | A (plano médio) | Ken Burns sutil | Ícones de "?" flutuando |
| 30–75s | Cena 3 — Solução | E (servidores) → B (3/4) | Corte seco + pan direita | Alert vermelho → ícone Azure nuvem |
| 75–105s | Cena 4 — Duas Faces | F (tela dividida) | Corte + zoom in suave | Label "EXECUTOR" e "ESTRATEGISTA" |
| 105–165s | Cena 5 — Cibersegurança | A (plano médio) | Zoom in 5% gradual | Ícones: escudo, cadeado, código verde |
| 165–210s | Cena 6 — Consultoria vs Fábrica | B (3/4) | Pan suave esquerda | Ícone fábrica vs ícone pessoa |
| 210–270s | Cena 7 — Big Four | A (plano médio) | Estático + overlay lateral | 4 pilares gregos com logos Big Four |
| 270–300s | Cena 8 — Regra de Ouro | A (plano médio) | Zoom in suave | Balança de justiça + X vermelho |
| 300–360s | Cena 9 — CTA Final | D (close facial) | Zoom in final dramático | Botões "Inscrever", "Like", "Compartilhar" |

---

## Configuração de Legendas (Estilo Hormozi)

```
Fonte:      Montserrat ExtraBold  (ou Anton)
Tamanho:    76pt
Cor base:   BRANCO #FFFFFF
Contorno:   PRETO #000000 — 3px
Sombra:     #000000, 45% opacidade, deslocamento Y: 3px
Animação:   Word by Word (palavra por palavra)
Posição:    Terço inferior — 120px acima da borda inferior
```

### Palavras-chave para destacar (cor diferente):
```
"FIAP"              → dourado   #FFD700
"AWS"               → laranja   #FF6B35
"Cloud" / "Azure"   → azul      #00B4D8
"IA"                → roxo      #A855F7
"diária"            → verde     #22C55E
"Sprint"            → verde     #22C55E
"consultor"         → branco bold maior
"Big Four"          → dourado   #FFD700
"ISO 27001"         → cinza prata #C0C0C0
"AppSec" / "RedTeam" / "BlueTeam" / "IAM" → vermelho #EF4444
```

---

## Overlays e Motion Graphics (LottieFiles.com — gratuito)

Buscar e baixar na LottieFiles por cena:

| Cena | Ícone LottieFiles | Busca |
|------|------------------|-------|
| Cena 2 | Pontos de interrogação pulsando | "question mark tech" |
| Cena 3 | Alerta vermelho piscando | "alert warning red" |
| Cena 3 | Nuvem Azure azul flutuando | "cloud computing blue" |
| Cena 4 | Código digitando (matrix) | "code typing" |
| Cena 4 | Roadmap / mapa de projeto | "roadmap project" |
| Cena 5 | Escudo digital | "shield security" |
| Cena 5 | Cadeado fechando | "lock closing" |
| Cena 5 | Rede neural pulsando | "neural network AI" |
| Cena 7 | Pilares / colunas | "pillars architecture" |
| Cena 8 | Balança de justiça | "justice scale" |
| Cena 8 | X vermelho bloqueio | "block deny red" |
| Cena 9 | Botão like animado | "like button" |

### Badge FIAP (criar manualmente no CapCut ou Canva):
```
Formato: círculo ou hexágono dourado
Texto linha 1: "FIAP" — bold, branco
Texto linha 2: "Especialização" — fino, branco
Efeito: brilho dourado pulsando suave (1s on/1s off)
Aparece: nas Cenas 2 e 5 (quando menciona FIAP)
Duração na tela: 3 segundos
```

---

## Trilha Sonora

```
Plataforma: Epidemic Sound (epidemic sound.com) ou CapCut Biblioteca
Busca:      "corporate tech background" | "executive motivation" | "tech inspiration"
BPM:        95–110 (moderado, não agitado)
Volume:     -18dB a -20dB abaixo da voz
Estrutura:
  - Cenas 1-3: versão mais tensa/intrigante
  - Cenas 4-6: versão mais dinâmica
  - Cenas 7-8: versão séria/autoritária
  - Cena 9:   versão mais inspiradora/positiva, volume sobe levemente no final

SFX (efeitos sonoros):
  - Transições entre cenas: "whoosh" suave (biblioteca CapCut)
  - Alert servidor (Cena 3): som de alarme digital
  - Transformação Cloud (Cena 3): som de "swoosh" digital
  - Badge FIAP aparecendo: som de "ping" dourado
  - X bloqueio (Cena 8): som de erro/bloqueio
  - CTA final: som de "chime" ou notificação positiva
```

---

# PARTE 6 — ESTRATÉGIA DE CORTE EM MÚLTIPLOS REELS

O roteiro completo tem ~4 minutos. Ideal cortar em 3 Reels de 60–90s:

## Reels 1 — "Por que as empresas imploram por consultores?" (Gancho)
```
Cenas 1 + 2 + início da 3
Duração: ~75 segundos
Hook: "O que diabos faz um consultor de tecnologia?"
CTA: "Continua no próximo vídeo — salva esse aqui"
```

## Reels 2 — "Uma Sprint vs 6 meses de erro" (Problema/Solução)
```
Cenas 3 (completa) + 4 + 5
Duração: ~90 segundos
Hook: "Servidor no gargalo, 900GB em um limite de 50GB..."
CTA: "Você sabia que existe diferença entre consultoria e auditoria? Vídeo seguinte"
```

## Reels 3 — "A Regra de Ouro que o mercado esconde" (Valor + CTA)
```
Cenas 6 + 7 + 8 + 9
Duração: ~90 segundos
Hook: "A KPMG não pode auditar o que a KPMG implementou. Sabia disso?"
CTA: Completo (inscrever, like, comentar, compartilhar)
```

---

# PARTE 7 — ESPECIFICAÇÕES TÉCNICAS FINAIS

| Parâmetro | Valor |
|-----------|-------|
| Resolução | 1080 x 1920 px (9:16) |
| FPS | 30 |
| Formato | MP4, H.264 |
| Bitrate vídeo | 8 Mbps mínimo |
| Áudio exportação | AAC, 320kbps, stereo |
| Duração por Reels | 60–90 segundos |
| Miniatura (thumbnail) | Frame entre 2–4s (expressão de autoridade) |

---

# PARTE 8 — WORKFLOW COMPLETO (Cronograma)

```
DIA 1 — Personagem (2–3h)
├── Gerar Shot A no Midjourney (30min, testar 4 variações)
├── Aprovar Shot A e salvar URL
├── Gerar Shots B, C, D, E, F usando --cref [URL Shot A] --cw 85
└── Salvar todos em PNG 1080x1920

DIA 2 — Áudio (1h)
├── Extrair áudio do YouTube com yt-dlp
├── Processar no Audacity (normalizar, remover ruído)
└── Cortar em 9 clipes por cena (audio_cena1.wav ... audio_cena9.wav)

DIA 3 — HeyGen (3–4h de processamento)
├── Criar 4 Photo Avatars (Shot A, B, D, E)
├── Gerar 9 vídeos com lip sync (15–20 min cada)
└── Download de todos os MP4s

DIA 4 — Edição (3–4h)
├── Importar todos os clipes no CapCut
├── Montar na ordem da tabela de cenas
├── Adicionar legendas (palavra por palavra + highlights)
├── Inserir overlays LottieFiles por cena
├── Inserir badge FIAP animado
├── Adicionar música + SFX
├── Cortar em 3 Reels separados
└── Exportar: 3x MP4 1080x1920 30fps

DIA 4 — Publicação
├── Reels 1: publicar às 18h
├── Reels 2: publicar 2 dias depois às 19h
└── Reels 3: publicar 2 dias depois às 19h
```

---

# PARTE 9 — ORÇAMENTO

| Ferramenta | Função | Custo |
|---|---|---|
| Midjourney Basic | Geração de personagem | $10/mês |
| HeyGen Creator | Lip sync HD | $29/mês |
| ElevenLabs | Não necessário (áudio do YouTube) | $0 |
| CapCut | Edição final | $0 (gratuito) |
| Audacity | Processamento de áudio | $0 (gratuito) |
| yt-dlp | Extração de áudio | $0 (gratuito) |
| LottieFiles | Overlays animados | $0 (gratuito) |
| **TOTAL** | | **$39/mês** |

---

# PARTE 10 — CHECKLIST ANTES DE PUBLICAR

### Técnico:
- [ ] Resolução 1080x1920 confirmada
- [ ] Lip sync está natural (boca não atrasa nem trava)
- [ ] Legendas cobrem 100% das falas
- [ ] Música não cobre a voz (testar sem fone)
- [ ] Sem watermark do HeyGen visível
- [ ] Badge FIAP aparece ao mencionar "FIAP"
- [ ] Ícone AWS aparece ao mencionar "cloud" / "Azure"
- [ ] Duração dentro de 60–90s por Reels

### Conteúdo:
- [ ] Gancho nos primeiros 3s sem introdução longa
- [ ] CTA claro no final de cada Reels
- [ ] "Link na bio" mencionado no Reels 3

### Publicação:
- [ ] Legenda do post escrita (não só hashtags)
- [ ] Horário: 18h–21h horário de Brasília
- [ ] Hashtags incluídas:
  `#ConsultoriaDeTI #TecnologiaDaInformação #FIAP #AWS #Cibersegurança
   #TransformaçãoDigital #ConsultorTI #DebugandoSe #BigFour #ISO27001`

---

### Legenda sugerida para o Reels 1:
```
Você sabia que a maioria das empresas paga um time inteiro de TI
pra resolver o que um consultor faz em dias? 🤔

Um consultor de tecnologia não é "cara da TI glorificado".
É o especialista que entra, resolve e sai — sem 6 meses de erro.

💼 Especialização FIAP
☁️ AWS, Azure, Automação, IA
🔐 Cibersegurança na prática

Parte 1 de 3 — salva a série completa 👆

#ConsultoriaDeTI #FIAP #AWS #DebugandoSe
```

---

*Documento: Demarchi Consultoria de TI — Reels "Debugando-se" — Gabriel Executivo Animado*
*Versão 3.0 Definitiva — Maio 2026*
*Pipeline: Midjourney → yt-dlp → Audacity → HeyGen → CapCut*
