REM COMO EXECUTAR
REM powershell -WindowStyle Hidden -Command "Start-Process 'C:\testebloqueio.bat' -Verb RunAs -WindowStyle Hidden"

@echo off
title BLOQUEIO DE IAs - LABORATORIO
color 0C

echo ==========================================
echo BLOQUEIO PROFISSIONAL DE INTELIGENCIA ARTIFICIAL
echo ==========================================
echo.

REM Caminho do hosts
set HOSTS=C:\Windows\System32\drivers\etc\hosts

echo Criando backup do hosts...
copy %HOSTS% %HOSTS%.backup >nul

echo.
echo Removendo protecao anterior...
attrib -r %HOSTS%

echo.
echo Bloqueando sites de IA...

(
echo.
echo #### BLOQUEIO DE IAs ####

echo 127.0.0.1 openai.com
echo 127.0.0.1 www.openai.com
echo 127.0.0.1 chat.openai.com
echo 127.0.0.1 chatgpt.com

echo 127.0.0.1 copilot.microsoft.com
echo 127.0.0.1 bing.com
echo 127.0.0.1 www.bing.com

echo 127.0.0.1 gemini.google.com
echo 127.0.0.1 bard.google.com

echo 127.0.0.1 claude.ai

echo 127.0.0.1 poe.com

echo 127.0.0.1 perplexity.ai

echo 127.0.0.1 you.com

echo 127.0.0.1 character.ai

echo 127.0.0.1 janitorai.com

echo 127.0.0.1 midjourney.com

echo 127.0.0.1 leonardo.ai

echo 127.0.0.1 runwayml.com

echo 127.0.0.1 stablecog.com

echo 127.0.0.1 huggingface.co

echo 127.0.0.1 deepai.org

echo 127.0.0.1 writesonic.com

echo 127.0.0.1 copy.ai

echo 127.0.0.1 rytr.me

echo 127.0.0.1 jasper.ai

echo 127.0.0.1 quillbot.com

echo 127.0.0.1 wordtune.com

echo 127.0.0.1 sudowrite.com

echo 127.0.0.1 replit.com

echo 127.0.0.1 phind.com

echo 127.0.0.1 blackbox.ai

echo 127.0.0.1 codeium.com

echo 127.0.0.1 tabnine.com

echo 127.0.0.1 synthesia.io

echo 127.0.0.1 murf.ai

echo 127.0.0.1 elevenlabs.io

echo 127.0.0.1 play.ht

echo 127.0.0.1 canva.com

echo 127.0.0.1 looka.com

echo 127.0.0.1 remove.bg

echo 127.0.0.1 cleanup.pictures

echo 127.0.0.1 upscale.media

echo 127.0.0.1 letsenhance.io

echo 127.0.0.1 dalle2.ai

echo 127.0.0.1 nightcafe.studio

echo 127.0.0.1 dreamstudio.ai

echo 127.0.0.1 ideogram.ai

echo 127.0.0.1 tensor.art

echo 127.0.0.1 seaart.ai

echo 127.0.0.1 civitai.com

echo 127.0.0.1 deepseek.com
echo 127.0.0.1 chat.deepseek.com
echo #### FIM BLOQUEIO IAs ####

echo #### EXCEÇÕES ####
echo 127.0.0.1 chat.google.com

) >> %HOSTS%

echo.
echo Limpando cache DNS...
ipconfig /flushdns

echo.
echo Protegendo arquivo hosts...

attrib +r %HOSTS%

echo.
echo =====================================
echo BLOQUEIO ATIVO COM SUCESSO
echo =====================================
echo.

pause