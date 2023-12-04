# Usa un'immagine di base con un sistema operativo Linux, ad esempio Debian
FROM debian:latest

# Aggiorna l'indice dei pacchetti e installa GCC
RUN apt-get update && apt-get install -y gcc

# Imposta la directory di lavoro (opzionale)
WORKDIR /usr/src/myapp

# Comandi per compilare il tuo programma (adattalo al tuo caso specifico)
# Ad esempio, se il tuo file sorgente si chiama 'main.c':
# COPY main.c .
# RUN gcc -o myapp main.c

# Imposta un comando predefinito o entrypoint (opzionale)
# CMD ["./myapp"]
