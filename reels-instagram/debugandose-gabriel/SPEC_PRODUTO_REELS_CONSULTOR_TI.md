# ESPECIFICAÇÃO DE PRODUTO — PRD
## Reels Instagram: "Consultor de TI com Personagem Executivo Animado por IA"
### Projeto: @labdatadev | Canal: Debugando-se
### Versão: 1.0 FINAL | Classificação: Entrega Executiva | Maio 2026

---

## SUMÁRIO EXECUTIVO

Este documento especifica a entrega completa de uma série de **Reels Instagram** para o canal **@labdatadev** (Laboratório Demarchi — Desenvolvimento e Dados), representando **Antonio Demarchi**, Engenheiro de Software, Especialização FIAP, expertise em .NET e AWS, sob a persona do personagem animado **"Gabriel"**.

O produto é uma **série de vídeos curtos em formato 9:16** para Instagram Reels, com personagem executivo gerado e animado por IA, lip sync sincronizado com áudio original, e edição profissional com overlays de motion graphics.

**Problema que resolve:** O proprietário não tem presença em vídeo no Instagram, perdendo visibilidade frente a concorrentes que já usam conteúdo em vídeo para posicionar seus serviços de consultoria.

**Solução:** Pipeline automatizado de produção de vídeo com IA que gera conteúdo de alta qualidade visual sem necessidade de gravação presencial.

**Resultado esperado:** Série de 8 Reels publicados ao longo de 5 semanas, posicionando @labdatadev como referência em Consultoria de TI no Instagram com custo total de **$39/mês** em ferramentas.

---

## ÍNDICE

1. Contexto de Negócio e Objetivo
2. Público-alvo e Personas
3. Especificação do Personagem Gabriel
4. Arquitetura do Pipeline de Produção
5. Especificação dos Prompts — Midjourney
6. Especificação dos Prompts — HeyGen
7. Especificação dos Roteiros
8. Especificação Visual e de Edição
9. Especificação de Áudio
10. Plano de Publicação e Estratégia de Conteúdo
11. Métricas de Sucesso (KPIs)
12. Orçamento e Ferramentas
13. Cronograma de Execução
14. Riscos e Mitigações
15. Checklist de Aceite (Definition of Done)
16. Glossário

---

# 1. CONTEXTO DE NEGÓCIO E OBJETIVO

## 1.1 Contexto

**Empresa:** Demarchi MEI — Consultoria de Tecnologia da Informação
**Canal Instagram:** @labdatadev (Laboratório Demarchi — Desenvolvimento e Dados)
**Proprietário:** Antonio Demarchi (Engenheiro de Software, Especialização FIAP, AWS)
**Localização:** Vassouras e Barra do Piraí, Rio de Janeiro

O mercado de consultoria de TI carece de conteúdo educativo direto e visual para pequenas e médias empresas. O público-alvo (donos de empresa, gestores, CEOs de PMEs) consome conteúdo majoritariamente via Instagram Reels e não lê artigos técnicos.

A presença atual da @labdatadev no Instagram não inclui vídeos com personagem falante — o formato de maior alcance orgânico na plataforma em 2026.

## 1.2 Objetivo do Produto

| Tipo | Objetivo |
|------|----------|
| **Primário** | Gerar leads qualificados de PMEs interessadas em consultoria de TI |
| **Secundário** | Estabelecer autoridade técnica do @labdatadev no Instagram |
| **Terciário** | Construir audiência recorrente para o canal |

## 1.3 Escopo desta Entrega

**Inclui:**
- Especificação completa do personagem Gabriel (6 variações de shot)
- Pipeline de produção documentado (Midjourney → yt-dlp → HeyGen → CapCut)
- 5 roteiros de 20 segundos com estratégias distintas
- 1 roteiro longo de 60–90s com 9 cenas completas (série Debugando-se)
- Todos os prompts de IA prontos para execução (Midjourney, HeyGen)
- Especificação visual completa (cores, fontes, overlays, legendas)
- Plano de publicação com ordem estratégica de 5 semanas

**Não inclui:**
- Execução da produção (o proprietário executa com base nesta spec)
- Gestão de tráfego pago / impulsionamento
- Criação de landing page ou CRM de leads

---

# 2. PÚBLICO-ALVO E PERSONAS

## 2.1 Persona Primária — "O Dono Sobrecarregado"

```
Nome fictício:  Carlos, 42 anos
Cargo:          CEO / Dono de PME (10–80 funcionários)
Setor:          Varejo, Serviços, Indústria leve
Dor principal:  TI interna custa caro e não resolve rápido o suficiente
Comportamento:  Consome Reels no celular entre 18h–22h
Gatilho:        "Economizar sem perder qualidade"
Objeção:        "Consultor é caro"
```

## 2.2 Persona Secundária — "O Gestor de TI Atolado"

```
Nome fictício:  Rafael, 35 anos
Cargo:          Gerente de TI / CTO de startup
Setor:          Tech, SaaS, Fintech
Dor principal:  Precisa de especialista externo para projetos específicos
                (cloud, segurança, integrações) sem contratar CLT
Comportamento:  Segue conteúdo técnico no Instagram e LinkedIn
Gatilho:        "Alguém que já fez isso antes"
Objeção:        "Precisa entender minha stack"
```

## 2.3 Persona Terciária — "O Profissional de TI em Transição"

```
Nome fictício:  Lucas, 28 anos
Cargo:          Dev / Analista querendo entrar em consultoria
Dor principal:  Não entende como funciona o mercado de consultoria
Comportamento:  Consome conteúdo educativo no Instagram
Gatilho:        "Entender como funciona a carreira"
Valor:          Vira seguidor e referencia o canal para empresas
```

---

# 3. ESPECIFICAÇÃO DO PERSONAGEM GABRIEL

## 3.1 Identidade Visual

O personagem **Gabriel** é a representação animada de um consultor de TI sênior brasileiro. Não é necessariamente Antonio Demarchi — é um arquétipo do "consultor de confiança".

| Atributo | Especificação |
|----------|---------------|
| **Etnia** | Pardo (warm brown skin tone — brasileiro miscigenado) |
| **Biótipo** | Gordinho / levemente acima do peso. Confiante, não apologético |
| **Idade aparente** | 35–42 anos (credibilidade + energia) |
| **Cabelo** | Tapered fade curto, bem alinhado, levemente mais comprido no topo com divisão natural lateral — estilo "disfarçado" de barbearia |
| **Barba** | Cavanhaque curto, bem cuidado (stubble) |
| **Óculos** | Retangulares finos, armação preta moderna, levemente grandes para o rosto |
| **Roupa** | Blazer navy blue ajustado + camisa branca, primeiro botão aberto, sem gravata — business casual executivo |
| **Postura** | Ereta, levemente inclinada para frente nas falas importantes |
| **Expressão padrão** | Sorriso sutil, confiante. Sobrancelha levemente levantada — "vou te contar algo importante" |

## 3.2 Tom e Personalidade

```
Arquétipo:      O Especialista Confiável
Tom de voz:     Firme, direto, levemente entusiasmado
Energia:        7/10 — sério mas acessível (não é ansioso, não é entediante)
Não é:          Vendedor forçado, acadêmico entediante, estagiário animado
É:              Palestrante TEDx que resolve problemas reais
```

## 3.3 Cenário Principal

```
Localização:    Escritório corporativo premium, São Paulo
Janelas:        Piso ao teto com bokeh de skyline urbano
Iluminação:     Chave quente (upper-left) + rim fria azul (right) + volumétrico das janelas
Elementos:      Hologramas translúcidos azuis (cloud, código, gráficos) flutuando no fundo
Paleta:         Azul elétrico #0066FF + roxo #7C3AED + branco sobre fundo escuro
```

## 3.4 Variações de Shot (6 obrigatórias)

| ID | Nome | Enquadramento | Uso no Roteiro |
|----|------|--------------|----------------|
| **Shot A** | Plano Médio Principal | Cintura para cima, ligeiramente à direita | Shot padrão de fala — maioria das cenas |
| **Shot B** | Angular 3/4 Lateral | Girado 3/4 à direita, mão aberta apresentando | Apresentação de dados / solução |
| **Shot C** | Plano Aberto / Corpo Inteiro | Corpo inteiro, câmera baixa (ângulo de autoridade) | Gancho inicial, abertura de vídeo |
| **Shot D** | Close Facial | Rosto e peito, ultra-close, sorriso genuíno | CTA final, hook de atenção |
| **Shot E** | Sala de Servidores | Fundo de racks com alertas vermelhos | Cena do problema / crise |
| **Shot F** | Tela Dividida | Esquerda: executor digitando / Direita: estrategista no quadro | Cena "duas faces do consultor" |

> **Regra de Consistência:** Gerar Shot A primeiro. Usar `--cref [URL_SHOT_A] --cw 85` em todos os outros para manter identidade facial.

---

# 4. ARQUITETURA DO PIPELINE DE PRODUÇÃO

## 4.1 Diagrama do Fluxo

```
┌─────────────────────────────────────────────────────────────────┐
│                    PIPELINE DE PRODUÇÃO                         │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  ETAPA 1           ETAPA 2           ETAPA 3        ETAPA 4     │
│  IMAGEM            ÁUDIO             ANIMAÇÃO       EDIÇÃO      │
│                                                                  │
│  Midjourney  ───►  yt-dlp       ───► HeyGen    ───► CapCut      │
│  v6.1             (YouTube)          Avatar IV       Pro         │
│                        │                                         │
│  6 shots PNG           Audacity                  Legendas       │
│  1080x1920        ─────►  9 clipes          ───► Overlays       │
│                   .wav por cena             ───► Badges         │
│                                             ───► Música         │
│                                                  SFX            │
│                                                      │           │
│                                                   MP4 Final     │
│                                                   1080x1920     │
│                                                   30fps 8Mbps   │
└──────────────────────────────────────────────────── │ ──────────┘
                                                       │
                                                  Instagram Reels
                                                  @labdatadev
```

## 4.2 Ferramentas por Etapa

| Etapa | Ferramenta Principal | Alternativa | Custo |
|-------|---------------------|-------------|-------|
| Geração de imagem | Midjourney v6.1 | Leonardo AI | $10/mês |
| Extração de áudio | yt-dlp (CLI) | Y2Mate | Gratuito |
| Processamento de áudio | Audacity | Adobe Audition | Gratuito |
| Lip sync / Animação | HeyGen Creator | D-ID | $29/mês |
| Edição final | CapCut | DaVinci Resolve | Gratuito |
| Overlays animados | LottieFiles | Freepik | Gratuito |
| Legendas automáticas | CapCut Auto Caption | Captions.ai | Gratuito |

## 4.3 Critérios de Aceitação por Etapa

### Etapa 1 — Imagem
- [ ] Shot A aprovado com skin tone pardo correto
- [ ] Óculos retangulares claramente visíveis
- [ ] Cabelo tapered fade nítido
- [ ] Fundo com bokeh corporativo de São Paulo
- [ ] Todos os outros shots com `--cref` aplicado — rosto consistente

### Etapa 2 — Áudio
- [ ] Áudio extraído sem artefatos
- [ ] Normalizado a -1dB (sem clipagem)
- [ ] Ruído de fundo reduzido
- [ ] 9 clipes separados por cena (longa) ou 5 arquivos (20s)
- [ ] Formato: WAV 44100Hz 16-bit

### Etapa 3 — Animação
- [ ] Lip sync sem delay perceptível (< 100ms)
- [ ] Expressão Intensity entre 65–75% (não parece cartoon)
- [ ] Head Movement: Natural (nunca Static)
- [ ] Resolução de saída: 1080x1920
- [ ] Sem watermark do HeyGen visível no plano de Creator

### Etapa 4 — Edição
- [ ] Legendas cobrem 100% da fala
- [ ] Palavra-chave destacada em cor diferente em cada frase
- [ ] Badge FIAP aparece ao mencionar "FIAP" ou "especialização"
- [ ] Ícone AWS aparece ao mencionar "cloud" ou "Azure"
- [ ] Música não cobre a voz (voz sempre predominante)
- [ ] Export: MP4 H.264 1080x1920 30fps 8Mbps+

---

# 5. ESPECIFICAÇÃO DOS PROMPTS — MIDJOURNEY

## 5.1 Prompt Base (Shot A — Master)

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

## 5.2 Prompts por Shot (delta sobre o Shot A)

**Shot B — Angular 3/4:**
```
[+ ao Shot A] He is turned 3/4 to the right, right hand open and extended toward camera
as if presenting key information. Left hand rests on desk. Body language: passionate
professor mid-explanation. Large curved monitor visible in background showing dashboards.
--cref [URL_SHOT_A] --cw 85 --ar 9:16 --style raw --v 6.1 --q 2
```

**Shot C — Plano Aberto:**
```
[+ ao Shot A] Full body wide shot. He stands in center of large modern open-plan tech office.
Background: blurred colleagues at standing desks, glass partitions, floating digital screens.
Tablet in one hand, other hand in blazer pocket. Low angle (authority framing).
--cref [URL_SHOT_A] --cw 85 --ar 9:16 --style raw --v 6.1 --q 2
```

**Shot D — Close Facial:**
```
[+ ao Shot A] Extreme close-up portrait, face and upper chest only.
Big genuine warm smile showing white teeth, eyes slightly crinkled.
Direct eye contact, head tilted slightly left. The vibe: "I just solved it."
Cinematic bokeh background, lens flare top right corner.
--cref [URL_SHOT_A] --cw 85 --ar 9:16 --style raw --v 6.1 --q 2
```

**Shot E — Sala de Servidores:**
```
[+ ao Shot A] He stands in dark server room with rows of black server racks.
Red warning lights blinking. Wall monitor shows: "ALERTA CRÍTICO 900GB / LIMITE 50GB".
He snaps fingers — scene begins dissolving into clean floating blue cloud icons.
Deep contrast lighting, server rack LEDs illuminate face from below.
--cref [URL_SHOT_A] --cw 85 --ar 9:16 --style raw --v 6.1 --q 2
```

**Shot F — Tela Dividida:**
```
Split screen 9:16 composition.
LEFT: [personagem do Shot A] typing on keyboard with glowing code. Sleeves rolled up.
RIGHT: same character at illuminated whiteboard with project roadmap, pointing.
Team members blurred in conference room background. Blank title space at top center.
--cref [URL_SHOT_A] --cw 85 --ar 9:16 --style raw --v 6.1 --q 2
```

---

# 6. ESPECIFICAÇÃO DOS PROMPTS — HEYGEN

## 6.1 Configuração Padrão de Avatar

```
Menu:               Avatars → Create New Avatar → Photo Avatar
Modo:               EXPRESSIVE (obrigatório — não usar Standard)
Resolução output:   1080 x 1920 (9:16)
Qualidade:          Highest (plano Business) / High (plano Creator)
```

## 6.2 Parâmetros de Animação

| Parâmetro | Valor | Razão |
|-----------|-------|-------|
| Head Movement | Natural | Robotismo zero — varia levemente como humano real |
| Eye Contact | Direct Camera | Mantém conexão com espectador |
| Expression Intensity | 68% | Entre 65–75%: expressivo sem parecer cartoon |
| Blink Rate | Natural | Blinks em frequência humana (~15x/min) |
| Shoulder Sway | Subtle | Dá sensação de respiração e presença corporal |
| Background | Keep Original | Mantém o cenário gerado no Midjourney |

## 6.3 Prompt de Direção de Cena (campo "Scene Description")

```
Male executive tech professional, Brazilian, confident TV presenter energy.
Natural moderate head nods when emphasizing key points.
Slight forward lean on important statements.
Eyebrows raise naturally when asking rhetorical questions to viewer.
Natural blink rate. Subtle shoulder movement with breathing rhythm.
Occasional brief glance slightly off-camera then returns — authentic, not robotic.
Mouth opens wide on stressed syllables. Energy level: 7/10 — serious but engaging.
```

## 6.4 Fluxo de Upload por Shot

```
Para cada clipe de áudio:
  1. Selecionar o avatar correspondente ao Shot da cena
  2. Audio → Upload Audio File → [arquivo .wav da cena]
  3. Aplicar configurações padrão acima
  4. Renderizar
  5. Download → nomear como "Gabriel_Cena[N]_Shot[X].mp4"
```

---

# 7. ESPECIFICAÇÃO DOS ROTEIROS

## 7.1 Série Longa — "Debugando-se" (9 Cenas / ~4 minutos total)

Destinada a ser cortada em 3 Reels de 60–90s. Referência completa em `guia_producao_completo.md`.

| Reels | Cenas | Hook | Duração |
|-------|-------|------|---------|
| Reels 1 | 1 + 2 + início 3 | "O que diabos faz um consultor de TI?" | ~75s |
| Reels 2 | 3 (completa) + 4 + 5 | "Servidor no gargalo. 900GB em 50GB." | ~90s |
| Reels 3 | 6 + 7 + 8 + 9 | "A KPMG não pode auditar o que ela implementou." | ~90s |

## 7.2 Série Curta — 5 Roteiros de 20 Segundos

Regra técnica: **55–65 palavras, 3 palavras/segundo, 20s exatos.**

Estrutura invariável de todos os 5 roteiros:

```
[0–3s]   HOOK         → Para o scroll. Pergunta ou afirmação de impacto.
[3–14s]  NÚCLEO       → Problema + Solução. Onde está a venda real.
[14–17s] CREDENCIAL   → "FIAP. AWS." — 3 segundos máximo.
[17–20s] CTA          → Uma ação. Link na bio ou direct.
```

### Tabela de Estratégias

| # | Nome | Hook | Público | Objetivo | Semana |
|---|------|------|---------|---------|--------|
| V1 | Dor do Servidor | Urgência/crise | Donos de empresa | Conversão direta | 2ª |
| V2 | Custo Real | Financeiro | CEOs, CFOs | Quebrar objeção preço | 5ª |
| V3 | 6 Meses vs 2 Semanas | Velocidade | Gestores TI | Prova de eficiência | 3ª |
| V4 | Revelação | Curiosidade/educação | Amplo | Crescimento orgânico | 1ª |
| V5 | Vantagem Competitiva | FOMO | Decision-makers | Urgência de decisão | 4ª |

> Roteiros completos palavra por palavra em: `roteiros_20s_consultor_ti.md`

## 7.3 Regras de Copywriting para todos os roteiros

```
PROIBIDO:
  ✗ Introduções ("Olá, tudo bem?", "Bem-vindos ao canal")
  ✗ Jargões sem tradução imediata ("IAM", "DevSecOps" sem contexto)
  ✗ Frases passivas ("É possível que...", "Talvez você...")
  ✗ CTA duplo (pedir like E comentar E compartilhar tudo junto em 20s)

OBRIGATÓRIO:
  ✓ Primeira palavra do vídeo é o hook. Sem preâmbulo.
  ✓ Verbo de ação no imperativo no CTA ("Chama", "Acessa", "Salva")
  ✓ Credenciais FIAP e AWS sempre citadas no bloco [14–17s]
  ✓ "Uma diária" deve aparecer em pelo menos 3 dos 5 roteiros
  ✓ Voz em primeira pessoa ("Eu entro", "Eu resolvo") = autoridade
```

---

# 8. ESPECIFICAÇÃO VISUAL E DE EDIÇÃO

## 8.1 Paleta de Cores do Projeto

| Uso | Cor | Hex |
|-----|-----|-----|
| Legenda padrão | Branco | `#FFFFFF` |
| Contorno de legenda | Preto | `#000000` |
| Destaque "FIAP" | Dourado | `#FFD700` |
| Destaque "AWS" | Laranja AWS | `#FF6B35` |
| Destaque "Cloud/Azure" | Azul tech | `#00B4D8` |
| Destaque "IA" | Roxo | `#A855F7` |
| Destaque "diária/economia" | Verde | `#22C55E` |
| Destaque "AppSec/RedTeam" | Vermelho | `#EF4444` |
| Alerta/servidor | Vermelho crítico | `#DC2626` |
| Elementos holográficos | Azul elétrico | `#0066FF` |
| Background escuro do estúdio | Carvão | `#1A1A2E` |

## 8.2 Tipografia de Legendas

```
Fonte principal:    Montserrat ExtraBold  (preferido)
Alternativa:        Anton
Tamanho:            80pt (Reels 20s) / 76pt (Reels 60–90s)
Cor base:           #FFFFFF
Contorno:           #000000 — espessura 3px
Sombra:             #000000 — opacidade 45% — deslocamento Y: 3px
Animação:           Word by Word (palavra por palavra, não frase)
Posição:            Terço inferior — 120px acima da borda inferior
Destaque:           1 palavra-chave por frase em cor da tabela 8.1
```

## 8.3 Estrutura de Cortes de Câmera (Reels 20s)

```
0–3s:   Shot D (close) — hook — zoom in lento 2%
3–11s:  Shot A (plano médio) — núcleo — Ken Burns sutil
11–16s: Shot B ou E (contextual) — credencial — pan suave 3%
16–20s: Shot D (close/sorrindo) — CTA — zoom in final 5%
```

## 8.4 Overlays e Motion Graphics por Cena

| Momento | Overlay | Busca LottieFiles | Duração |
|---------|---------|-------------------|---------|
| Menção "FIAP" | Badge hexagonal dourado pulsando | "gold badge seal" | 3s |
| Menção "AWS" / "cloud" | Nuvem azul flutuando | "cloud computing blue" | 2s |
| Menção "IA" | Rede neural pulsando | "neural network AI" | 2s |
| Menção "automação" | Engrenagens girando | "gear automation" | 2s |
| Cena servidor (alerta) | Sinal vermelho piscando | "alert warning red" | duração cena |
| Cena servidor (resolução) | Nuvem limpa / checkmark | "cloud success" | 2s |
| Tela dividida (Shot F) | Labels "EXECUTOR" + "ESTRATEGISTA" | texto manual no CapCut | duração cena |
| CTA final | Ícone de direct/seta | "arrow right neon" | 3s |

## 8.5 Transições

```
Entre shots do mesmo personagem:   Crossfade suave 0.3s
Entre cenas diferentes:            Whoosh + corte seco
Entrada do vídeo:                  Fade in from black 0.5s
Saída do vídeo:                    Fade to black 1s
Ken Burns (em shots estáticos):    Zoom 2–5% ao longo de toda a cena
```

---

# 9. ESPECIFICAÇÃO DE ÁUDIO

## 9.1 Voz / Fala

```
Fonte do áudio (opções em ordem de preferência):
  1. Áudio original do YouTube (canal Debugando-se) — extraído via yt-dlp
  2. Gravação própria do proprietário + cleanup no Audacity
  3. Geração sintética no ElevenLabs (caso opções 1 e 2 não estejam disponíveis)

Processamento obrigatório (Audacity):
  - Normalizar: -1dB
  - Noise Reduction: nível moderado (preservar naturalidade)
  - Compressor: Threshold -18dB, Ratio 3:1, Attack 5ms, Release 200ms
  - EQ: boost leve 2kHz–4kHz (presença), corte 200Hz (remove embolamento)
  - Export: WAV 44100Hz, 16-bit, mono (HeyGen aceita melhor mono)
```

## 9.2 Configuração ElevenLabs (se usado)

```
Idioma:             Português Brasileiro
Voz sugerida:       Adam PT-BR ou clone de voz própria
Estabilidade:       55%
Clareza/Similaridade: 75%
Velocidade:         0.95x (autoridade — ligeiramente abaixo do padrão)
Tom:                Firme, articulado, levemente entusiasmado
```

### Marcações SSML para ElevenLabs

```xml
Eu sou consultor de tecnologia. <break time="0.3s"/>
E uma diária minha <emphasis level="strong">entrega o resultado</emphasis>
que um time inteiro leva semanas pra atingir.

6 meses pra migrar pro cloud... <break time="0.5s"/>
ou <emphasis level="strong">2 semanas.</emphasis>
```

## 9.3 Trilha Sonora

```
Plataforma:         Epidemic Sound ou CapCut Biblioteca
Busca:              "corporate tech background" | "executive motivation" | "tech urgency"
BPM:                100–115 (Reels 20s) / 95–110 (Reels 60–90s)
Volume relativo:    -20dB abaixo da voz (voz sempre protagonista)
Fade in:            0.5s no início
Fade out:           1.0s no final

Variação por emoção:
  Hook/tensão:      Versão mais tensa, "suspense tech"
  Solução/energia:  Versão dinâmica, "corporate upbeat"
  CTA final:        Versão inspiradora, volume sobe +2dB nos últimos 3s
```

## 9.4 SFX (Efeitos Sonoros)

| Momento | SFX | Volume relativo |
|---------|-----|-----------------|
| Transições entre shots | Whoosh suave | -15dB |
| Badge FIAP aparecendo | Ping dourado / chime | -12dB |
| Alerta servidor (Shot E) | Alarme digital | -8dB |
| Resolução / nuvem | Swoosh digital ascendente | -12dB |
| X de bloqueio (Cena 8) | Erro / buzzer suave | -10dB |
| CTA final | Chime positivo / notificação | -10dB |

---

# 10. PLANO DE PUBLICAÇÃO E ESTRATÉGIA DE CONTEÚDO

## 10.1 Funil de Conteúdo

```
TOPO (Consciência):     V4 — Revelação
                        Educa. Gera salvamentos. Traz novos seguidores.

MEIO (Consideração):    V3 — 6 Meses vs 2 Semanas
                        Prova eficiência. Público técnico qualificado.

FUNDO (Decisão):        V1 — Dor do Servidor
                        V5 — Vantagem Competitiva
                        V2 — Custo Real
                        Convertem quem já conhece o produto.
```

## 10.2 Calendário de Publicação — 5 Semanas

| Semana | Data | Roteiro | Objetivo | Horário |
|--------|------|---------|---------|---------|
| 1 | Semana 1 | V4 — Revelação | Crescer audiência | 18h30 |
| 2 | Semana 2 | V1 — Dor do Servidor | Primeira conversão | 19h00 |
| 3 | Semana 3 | V3 — 6 Meses vs 2 Semanas | Prova técnica | 18h30 |
| 4 | Semana 4 | V5 — Vantagem Competitiva | Fechar decisores | 19h00 |
| 5 | Semana 5 | V2 — Custo Real | Retargeting | 18h30 |

> **Reels longos (Série Debugando-se):** Publicar 1 por semana, intercalando com os curtos. Reels 1 na semana 1, Reels 2 na semana 3, Reels 3 na semana 5.

## 10.3 Hashtag Strategy

```
Tier 1 (volume alto — alcance):
  #ConsultoriaDeTI #TecnologiaDaInformação #TransformaçãoDigital

Tier 2 (volume médio — segmentado):
  #FIAP #AWS #AutomaçãoEmpresarial #ConsultorTI

Tier 3 (nicho — engajamento qualificado):
  #CloudMigration #Cibersegurança #TIParaEmpresas #DebugandoSe

Máximo por post: 8–10 hashtags (Instagram 2026 — menos é mais)
```

## 10.4 Legenda Padrão do Post (template)

```
[Linha 1 — repete o hook do vídeo como gancho de leitura]

[Linhas 2–4 — expande o problema/solução em 2–3 frases curtas]

💼 [Credencial] | ☁️ [Ferramenta] | 🤖 [Benefício]

👉 [CTA único — link na bio ou direct]

#hashtag1 #hashtag2 #hashtag3 [máx 8–10]
```

---

# 11. MÉTRICAS DE SUCESSO (KPIs)

## 11.1 KPIs de Produto (por Reels)

| Métrica | Meta por Reels (30 dias) | Por que importa |
|---------|--------------------------|-----------------|
| Visualizações | > 500 | Prova de alcance |
| Taxa de retenção até 15s | > 60% | Hook funcionando |
| Taxa de conclusão (20s) | > 45% | Conteúdo relevante |
| Salvamentos | > 30 | Sinal de valor para o algoritmo |
| Compartilhamentos | > 15 | Alcance orgânico multiplicado |
| Cliques no link da bio | > 10 por semana | Conversão direta |

## 11.2 KPIs de Canal (após 5 semanas)

| Métrica | Meta |
|---------|------|
| Novos seguidores | +200 |
| Mensagens diretas qualificadas | 5+ |
| Propostas geradas | 2+ |

## 11.3 Sinal de Iteração

Se um Reels atingir < 300 views nos primeiros 7 dias:
1. Regravar o hook com variação diferente
2. Testar publicar em horário alternativo (12h–13h)
3. Boostar o post com R$20 de impulsionamento segmentado (CEOs, 30–55 anos, Brasil)

---

# 12. ORÇAMENTO E FERRAMENTAS

## 12.1 Custo Mensal

| Ferramenta | Função | Plano | Custo/mês |
|---|---|---|---|
| Midjourney | Geração dos 6 shots do personagem | Basic | $10 |
| HeyGen | Lip sync + animação facial | Creator | $29 |
| ElevenLabs | Geração de voz (opcional) | Starter | $5 |
| yt-dlp | Extração de áudio do YouTube | Gratuito | $0 |
| Audacity | Processamento de áudio | Gratuito | $0 |
| CapCut | Edição final, legendas, export | Gratuito | $0 |
| LottieFiles | Overlays animados | Gratuito | $0 |
| **TOTAL MÍNIMO** | | | **$39/mês** |
| **TOTAL COMPLETO** | | | **$44/mês** |

## 12.2 Custo Único (setup inicial)

| Item | Custo estimado |
|------|----------------|
| 1 mês de Midjourney (geração dos 6 shots) | $10 |
| 1 mês de HeyGen (renderizar todos os vídeos) | $29 |
| **Total de setup** | **$39** |

> Após o setup, os shots gerados podem ser reusados em novos roteiros sem custo adicional de Midjourney.

---

# 13. CRONOGRAMA DE EXECUÇÃO

```
DIA 1 — PERSONAGEM (2–3h)
├── Acessar Midjourney no Discord
├── Enviar Shot A prompt e gerar 4 variações
├── Selecionar e salvar URL da imagem aprovada
├── Gerar Shots B, C, D, E, F com --cref [URL_SHOT_A] --cw 85
└── Salvar todos em PNG 1080x1920

DIA 2 — ÁUDIO (1–2h)
├── Instalar yt-dlp: pip install yt-dlp
├── Extrair áudio: yt-dlp -x --audio-format wav [URL_YOUTUBE]
├── Abrir no Audacity: normalizar, reduzir ruído, comprimir
├── Cortar em clipes por cena (9 para a série longa, 5 para os 20s)
└── Exportar: WAV 44100Hz 16-bit

DIA 3 — ANIMAÇÃO HEYGEN (3–5h de processamento)
├── Criar 4 Photo Avatars (Shot A, B, D, E)
├── Configurar parâmetros padrão da seção 6.2
├── Submeter 9+ renderizações com os clipes de áudio
├── Aguardar processamento (~15–20 min por vídeo)
└── Download de todos os MP4 resultantes

DIA 4 — EDIÇÃO CAPCUT (3–4h)
├── Importar todos os clipes MP4 no CapCut
├── Montar na ordem da tabela de cortes (seção 8.3)
├── Ativar Auto Caption → ajustar manualmente
├── Aplicar highlights de cor nas palavras-chave
├── Inserir overlays LottieFiles nos momentos corretos
├── Inserir badge FIAP animado
├── Adicionar trilha sonora + SFX
├── Cortar em versões separadas por Reels
└── Exportar: MP4 H.264 1080x1920 30fps 8Mbps AAC 320kbps

SEMANA 1–5 — PUBLICAÇÃO
└── Seguir calendário da seção 10.2
    Publicar entre 18h–21h horário de Brasília
```

---

# 14. RISCOS E MITIGAÇÕES

| # | Risco | Probabilidade | Impacto | Mitigação |
|---|-------|--------------|---------|-----------|
| R1 | Rosto do Gabriel inconsistente entre shots | Alta | Alto | Usar `--cref --cw 85` em todos; regerar se muito diferente |
| R2 | Lip sync com delay visível | Média | Alto | Testar trecho de 5s antes de renderizar o vídeo completo |
| R3 | Watermark HeyGen no Creator plan | Baixa | Alto | Verificar posicionamento; HeyGen Creator não tem watermark em 2026 |
| R4 | Áudio do YouTube com direitos autorais | Média | Médio | Usar ElevenLabs ou gravar voz própria como alternativa |
| R5 | Pele do personagem fora do tom "pardo" | Alta | Médio | Incluir "warm brown skin tone" + "pardo" explicitamente no prompt |
| R6 | Reels com baixo alcance nos primeiros 7 dias | Média | Baixo | Boostar R$20 em impulsionamento segmentado |
| R7 | CapCut muda interface / recursos | Baixa | Baixo | DaVinci Resolve como alternativa completa e gratuita |

---

# 15. CHECKLIST DE ACEITE — DEFINITION OF DONE

### Personagem ✓ quando:
- [ ] Shot A aprovado com todos os atributos visuais do Gabriel (seção 3.1)
- [ ] Todos os 6 shots gerados com rosto consistente via `--cref`
- [ ] Arquivos salvos como PNG 1080x1920

### Áudio ✓ quando:
- [ ] Arquivo WAV extraído e processado (normalizado, sem ruído)
- [ ] Clipes separados por cena prontos para upload

### Animação ✓ quando:
- [ ] Lip sync sem delay perceptível em todos os clipes
- [ ] Expression Intensity natural (65–75%)
- [ ] Nenhum watermark visível
- [ ] Todos os MP4 em 1080x1920

### Edição ✓ quando:
- [ ] Legendas cobrem 100% da fala
- [ ] Mínimo 1 palavra destacada em cor diferente por frase
- [ ] Badge FIAP aparece ao mencionar "FIAP"
- [ ] Ícone AWS aparece ao mencionar "cloud" ou "Azure"
- [ ] Música não cobre a voz em nenhum momento
- [ ] SFX nas transições corretas
- [ ] Export: MP4 H.264 1080x1920 30fps 8Mbps+ AAC 320kbps stereo

### Publicação ✓ quando:
- [ ] Legenda escrita seguindo template da seção 10.4
- [ ] 8–10 hashtags dos tiers 1+2+3 incluídas
- [ ] Publicado entre 18h–21h horário de Brasília
- [ ] CTA no vídeo condizente com o CTA da legenda
- [ ] Link na bio atualizado (se aplicável)

---

# 16. GLOSSÁRIO

| Termo | Definição |
|-------|-----------|
| **Shot** | Enquadramento específico do personagem (plano, ângulo) |
| **Lip sync** | Sincronização da boca animada com o áudio falado |
| **Hook** | Primeiros 3s do vídeo — frase que impede o usuário de rolar para o próximo |
| **CTA** | Call to Action — instrução final pedindo uma ação ao espectador |
| **Tapered fade** | Estilo de corte de cabelo com degradê nas laterais — cabelo "disfarçado" |
| **Pardo** | Classificação de cor de pele no sistema brasileiro: miscigenado, tom médio-quente |
| **Ken Burns** | Efeito de zoom/pan lento em imagem estática, criando sensação de movimento |
| **FOMO** | Fear Of Missing Out — gatilho emocional de medo de perder uma oportunidade |
| **Sprint cirúrgica** | Referência ágil: entrega focada de 2–4 semanas com objetivo específico |
| **Business casual** | Vestimenta profissional sem gravata — blazer + camisa casual |
| **SSML** | Speech Synthesis Markup Language — marcações de pausa e ênfase no ElevenLabs |
| **PRD** | Product Requirements Document — documento de especificação de produto |

---

## REFERÊNCIAS DE ARQUIVOS DO PROJETO

| Arquivo | Conteúdo |
|---------|---------|
| `guia_producao_completo.md` | Pipeline detalhado + extração yt-dlp + 9 clipes por cena |
| `prompts_personagem_midjourney.md` | Prompts v1 + roteiro 60s + ElevenLabs config |
| `guia_heygen_capcut_v2.md` | HeyGen passo a passo + tabela CapCut + checklist |
| `roteiros_20s_consultor_ti.md` | 5 roteiros completos de 20s com storyboard |
| `SPEC_PRODUTO_REELS_CONSULTOR_TI.md` | **Este documento — especificação master** |

---

*Documento elaborado por: Claude Sonnet 4.6 — Analista Sênior de Produto / Prompt Engineer*
*Projeto: Demarchi Consultoria de TI — @labdatadev — Reels Instagram*
*Versão: 1.0 FINAL — Maio 2026*
*Status: Pronto para execução*
