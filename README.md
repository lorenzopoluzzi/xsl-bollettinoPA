# xsl-bollettinoPA
Progetto Java per la creazione del bollettino postale per la PA (pubblica amministrazione) seguendo le norma indicate dalla documentazione ufficiale delle Poste Italiane.
Progetto molto semplice e facile da integrare in progetti più grandi in quanto utile per vedere il funzionamento del file XSL e XML per generare il documento PDF, in questo caso il bollettino PA.
Al suo interno viene usata la libreria di [Apache-FOP](https://xmlgraphics.apache.org/fop/)

## Configurazione
Una volta eseguito il clone del progetto basta importarlo su qualsiasi IDE (Netbeans, Eclipse, IntelliJ ecc..) e inserire nel classpath del progetto le librerie che sono dentro alla foder _lib_

Una volta configurata basta fare il _Run_ dell'applicazione e verrà creato il file **bollettino.pdf** nella _root_ del progetto. 
