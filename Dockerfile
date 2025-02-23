FROM fusuf/whatsasena:latest

RUN git clone https://github.com/AnonyMouSeTEAM/QueenBella /root/QueenBella
WORKDIR /root/QueenBella/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

