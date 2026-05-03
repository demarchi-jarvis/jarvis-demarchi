# GUIA COMPLETO — Reels Instagram: Executivo Consultor de TI
## Animação Realista com IA | Formato 9:16 | 60–75 segundos

---

# PARTE 1 — PERSONAGEM (Geração de Imagem)

## Ferramenta Recomendada: Midjourney v6.1
Acesso: discord.gg/midjourney | Plano Basic $10/mês

---

## PROMPT PRINCIPAL — Plano Médio (Shot Principal de Fala)

```
Hyperrealistic cinematic portrait, photorealistic render style.
A charismatic chubby mixed-race Brazilian man (pardo skin tone, warm brown complexion),
late 30s, slightly overweight build with a confident posture.
Sharp clean tapered fade haircut, very well-groomed, neat short beard stubble.
Modern thin rectangular black eyeglasses.
Wearing a tailored fitted navy blue blazer over a crisp white dress shirt,
top button casually open, no tie — polished business casual.
Slight natural smile, direct confident eye contact with camera,
expressive raised eyebrow — the look of someone about to share an important insight.
Framing: upper body shot, waist up, slightly right of center.
Background: premium modern corporate tech office, floor-to-ceiling glass windows,
soft bokeh blur of São Paulo city skyline, subtle floating holographic UI elements
(cloud icons, data charts, circuit lines) in translucent electric blue tones.
Dramatic cinematic lighting: warm soft key light from upper left,
cool rim light from right, volumetric light rays through the windows.
Ultra sharp focus on face, 8K texture detail, ARRI Alexa camera style,
depth of field, filmic color grade, professional executive vibe.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## PROMPT VARIAÇÃO 2 — Ângulo Lateral / Apresentando Dados

```
[mesma descrição do personagem acima]
He is turning 3/4 to the right, right hand open and extended toward camera
as if presenting key information to the viewer.
His left hand rests naturally. Body language: confident professor explaining a concept.
The background on his left side shows a large curved monitor with dashboards.
Same office environment, same lighting setup.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## PROMPT VARIAÇÃO 3 — Plano Aberto / Ambiente Corporativo

```
[mesma descrição do personagem acima]
Full body wide shot, he stands in the center of a large modern open-plan office.
Other blurred professionals visible in background working at standing desks.
He holds a tablet loosely in one hand, other hand in blazer pocket.
Casual confident stance, feet slightly apart.
Ceiling track lighting, large brand logo visible blurred on back wall.
Shot from slightly lower angle (eye-level of a shorter person) to convey authority.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## PROMPT VARIAÇÃO 4 — Close Facial / CTA Final

```
[mesma descrição do personagem acima]
Extreme close-up portrait, face and upper chest only.
Big warm genuine smile showing teeth, eyes slightly crinkled — charismatic energy.
Direct eye contact, eyebrows relaxed, head very slightly tilted left.
The vibe: "I just solved your problem and I know it."
Extremely sharp focus on eyes and glasses. Bokeh background.
Shallow depth of field, cinematic lens flare in top right corner.
--ar 9:16 --style raw --v 6.1 --q 2
```

---

## DICAS PARA CONSISTÊNCIA ENTRE AS 4 IMAGENS

1. Gere as 4 variações. Escolha 1 imagem de cada que seja a melhor.
2. Na variação 1 aprovada, clique em "Use as Image" no Midjourney.
3. Para as variações 2, 3 e 4: adicione `--cref [URL_DA_IMAGEM_1] --cw 80` no final do prompt. Isso mantém o rosto consistente entre os shots.
4. Se o personagem mudar muito: use o recurso `Character Reference` do Midjourney v6.

---

# PARTE 2 — SELO FIAP E ELEMENTOS VISUAIS

## Prompt para inserir o selo FIAP na cena (Midjourney)

```
Add to the scene: a prestigious gold embossed certification badge/seal visible
on the executive's blazer lapel pin, with the text "FIAP" and "Especialização"
in elegant serif typography. The badge glows subtly with golden light.
Also add a second badge showing cloud icons representing AWS certification.
Both badges should look premium and official, like Olympic medals.
```

## Overlays para inserir no CapCut (após animação)
Crie ou baixe no LottieFiles.com:
- Badge FIAP dourado animado (aparece em 2s, pulsa levemente)
- Ícone AWS nuvem (aparece ao mencionar "cloud")
- Engrenagens girando (aparece ao mencionar "automação")
- Símbolo de rede neural (aparece ao mencionar "IA")
- Cifrão com seta subindo (aparece ao mencionar "custo" ou "economia")

---

# PARTE 3 — ROTEIRO DE ÁUDIO (60–70 segundos)

## Para usar no ElevenLabs ou gravar sua própria voz

---

**[0–4s] — GANCHO (sobre a imagem de plano aberto)**
"Sua empresa já pagou caro por TI... e ainda assim os problemas continuam?"

---

**[4–18s] — PROBLEMA + VIRADA (imagem principal, plano médio)**
"A maioria das empresas mantém um time inteiro de TI com salário, encargo e treinamento mensal — pra resolver problemas que um especialista resolve em dias.
Eu sou consultor de tecnologia. E uma diária minha entrega o resultado que um time inteiro leva semanas pra atingir."

---

**[18–38s] — PROPOSTA DE VALOR (imagem lateral, apresentando)**
"Com especialização FIAP e domínio das principais ferramentas do mercado — AWS, automação, integrações, arquitetura de sistemas e inteligência artificial —
eu não instalo software. Eu desenho a estratégia que faz o seu negócio escalar.
Usando a tecnologia certa, no momento certo, sem desperdício."

---

**[38–54s] — VANTAGEM COMPETITIVA (plano médio, direto ao ponto)**
"Enquanto seu concorrente ainda está decidindo qual sistema comprar,
você já pode ter automação funcionando, IA atendendo clientes
e processos digitais economizando tempo e dinheiro real.
Tudo isso com o custo de uma diária — não de um time."

---

**[54–65s] — CTA (close facial, sorrindo)**
"Quer saber o que a tecnologia pode fazer pelo seu negócio?
Me chama no direct ou acessa o link na bio.
Primeira conversa é gratuita."

---

## Marcações para ElevenLabs (adicione ao texto)

Use estas pausas e ênfases no campo de texto do ElevenLabs:

```
Sua empresa já pagou caro por TI... <break time="0.5s"/> 
e ainda assim os problemas continuam?

[...]

Eu sou consultor de tecnologia. <break time="0.3s"/>
E uma diária minha <emphasis level="strong">entrega o resultado</emphasis> 
que um time inteiro leva semanas pra atingir.
```

---

# PARTE 4 — CONFIGURAÇÃO DO HEYGEN

## Plano: Creator ($29) ou Business ($89) — recomendado Business para HD

### Passo a passo

**1. Criar o Photo Avatar**
- Menu: Avatars → Create Avatar → Photo Avatar
- Upload da Variação 1 (imagem principal)
- Selecione: "Expressive" mode
- Aguarde processamento (5–15 minutos)

**2. Criar vídeo com lip sync**
- Menu: Create Video → Talking Photo
- Selecione seu avatar criado
- Upload do áudio gerado no ElevenLabs (MP3 ou WAV)
- Resolução: 1080x1920 (9:16)

**3. Configurações avançadas no HeyGen**
```
Head Movement: Natural (não Static)
Eye Contact: Direct Camera
Expression Intensity: 65–75%
Background: Remove (você vai inserir o fundo depois no CapCut)
          OU mantenha o fundo original da sua imagem Midjourney
```

**4. Repita para as outras variações**
- Crie 3 vídeos: variação 1 (principal), variação 2 (lateral), variação 4 (close)
- A variação 3 (plano aberto) pode ser estática com leve animação no CapCut

---

## Prompt de direção para o campo "Scene Description" do HeyGen

```
Male executive speaker, professional TV presenter energy.
Natural moderate head nods when emphasizing key points.
Slight forward lean when making important statements.
Eyebrows raise naturally during questions to viewer.
Eyes blink at natural human rate. Shoulders move subtly with breath.
Occasional glance slightly off-camera then back — authentic, not robotic.
```

---

# PARTE 5 — EDIÇÃO NO CAPCUT

## Estrutura de Montagem (sincronizada com o roteiro)

| Tempo | Clipe | Ângulo | Efeito |
|-------|-------|--------|--------|
| 0–4s | Variação 3 (plano aberto) | Wide | Zoom in lento entrando |
| 4–18s | Variação 1 (principal) | Plano médio | Estático, legendas ativas |
| 18–38s | Variação 2 (lateral) | 3/4 | Leve pan esquerda + overlay ícones |
| 38–54s | Variação 1 (principal) | Plano médio | Zoom in suave 5% |
| 54–65s | Variação 4 (close) | Close facial | Zoom in final + música sobe |

---

## Configuração de Legendas (estilo Hormozi)

No CapCut: Texto → Auto Caption → depois edite manualmente:

```
Fonte: Montserrat ExtraBold ou Anton
Tamanho: 72–80pt
Cor: BRANCO (#FFFFFF)
Contorno: PRETO 3px
Sombra: Preta, 40% opacidade, deslocamento 2px
Animação: Word by word (palavra por palavra)
Destaque: Palavra-chave em AMARELO (#FFD700) ou LARANJA (#FF6B00)
Posição: Terço inferior, 100px acima da borda
```

### Palavras para destacar em cor diferente:
- "FIAP" → dourado
- "AWS" → laranja
- "diária" → verde
- "economizando" → verde
- "IA" → azul elétrico
- "estratégia" → branco bold maior

---

## Música de Fundo

Buscar no CapCut Biblioteca de Sons ou Epidemic Sound:
- Termo de busca: "corporate inspiration", "tech background 2024", "executive motivational"
- Duração: mínimo 70 segundos
- BPM: 90–110 (não muito agitado)
- Volume: -18dB a -20dB abaixo da voz

---

# PARTE 6 — WORKFLOW COMPLETO (Ordem de Execução)

```
DIA 1 (2–3 horas):
├── Gerar 4 imagens no Midjourney (30 min por variação)
├── Selecionar as melhores e ajustar com --cref
└── Salvar em PNG 1080x1920

DIA 2 (1–2 horas):
├── Gerar áudio no ElevenLabs com o roteiro acima
├── Revisar a pronúncia e pausas
└── Exportar MP3 320kbps

DIA 2 (2–3 horas de render):
├── Upload das 3 imagens no HeyGen
├── Criar 3 Photo Avatars
└── Gerar 3 vídeos com lip sync (HeyGen leva ~15 min por vídeo)

DIA 3 (2–3 horas):
├── Importar 3 vídeos no CapCut
├── Montar na ordem da tabela acima
├── Adicionar legendas + highlights
├── Inserir overlays de ícones (LottieFiles)
├── Adicionar badge FIAP animado
├── Inserir música de fundo
└── Exportar 1080x1920, 30fps, MP4

DIA 3 (publicação):
└── Publicar entre 18h–21h horário de Brasília
```

---

# PARTE 7 — CHECKLIST FINAL

### Antes de exportar:
- [ ] Lip sync está natural (boca não trava nem atrasa)
- [ ] Legendas cobrem todas as falas
- [ ] Badge FIAP aparece em cena (entre 18s–38s)
- [ ] Música não cobre a voz
- [ ] Vídeo termina em 60–75 segundos
- [ ] Resolução: 1080 x 1920 confirmada
- [ ] Sem watermark do HeyGen visível

### Antes de publicar:
- [ ] Gancho nos primeiros 3s sem introdução
- [ ] CTA no final com link na bio mencionado
- [ ] Legenda do post escrita (não só hashtags)
- [ ] Hashtags: #ConsultoriaDeTI #TecnologiaDaInformação #FIAP #AWS #AutomaçãoEmpresarial #TransformaçãoDigital #ConsultorTI #TIParaEmpresas

### Legenda sugerida para o post:
```
Quanto custa manter um time de TI que não entrega resultado? 💡

Um consultor especializado resolve em dias o que equipes internas 
levam meses tentando.

💼 Especialização FIAP
☁️ Certificado AWS
🤖 IA + Automação + Integrações

👉 Primeira conversa gratuita — link na bio.

#ConsultoriaDeTI #FIAP #AWS #TransformaçãoDigital
```

---

# PARTE 8 — ORÇAMENTO TOTAL

| Ferramenta | Plano | Valor/mês |
|------------|-------|-----------|
| Midjourney | Basic | $10 |
| ElevenLabs | Starter | $5 |
| HeyGen | Business | $89 |
| CapCut | Gratuito | $0 |
| LottieFiles | Gratuito | $0 |
| **TOTAL** | | **$104** |

**Opção econômica (qualidade 80%):**
Midjourney Basic $10 + HeyGen Creator $29 + ElevenLabs Free $0 = **$39**

---

*Documento: Demarchi Consultoria de TI — Reels Executivo Animado*  
*Versão 2.0 — Maio 2026*
