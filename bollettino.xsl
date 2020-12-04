<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4" page-height="29.7cm" page-width="21.0cm" margin-top="1cm" margin-left="0cm" margin-right="0cm" margin-bottom="1cm">
          <!-- Page template goes here -->
		  <fo:region-body />
        </fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="A4">
        <!-- Page content goes here -->
        <fo:flow flow-name="xsl-region-body">
			<fo:block font-size="8pt">
				<!-- Intestazione -->
				<fo:table margin-top="0.0cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="16.48cm" />
					<fo:table-column column-width="0.4mm" />
					<fo:table-column column-width="4.48cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell>
								<fo:block margin-left="1cm" font-weight="bold" font-size="9pt">
									<fo:external-graphic src="url('loghi/pagoPA_nero.jpg')"  vertical-align="middle" content-height="50" content-width="41" />
									<fo:inline font-weight="bold">AVVISO DI PAGAMENTO</fo:inline>
								</fo:block>
								<fo:block margin-left="1cm" margin-right="0.2cm" text-align-last="justify">
									<fo:leader leader-pattern="space" />
								</fo:block>
								<fo:block margin-left="1cm" margin-right="0.2cm" text-align-last="justify" font-size="14pt">
									<fo:inline font-weight="bold" >
										oggetto_del_pagamento
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block margin-left="0.2cm" margin-right="1cm" text-align="right" >
									<fo:inline font-weight="bold"> 
										<fo:external-graphic src="url('loghi/marchio-grigio.jpg')" content-height="80" content-width="80" />
									</fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- 1° parte del bollettino -->
				<fo:table margin-top="0.3cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="10.48cm" />
					<fo:table-column column-width="0.4mm" />
					<fo:table-column column-width="10.48cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-weight="bold">ENTE CREDITORE </fo:inline>
									<fo:inline font-size="6pt"> Cod. Fiscale </fo:inline>
									<fo:inline font-size="6pt" font-style="italic"> cf_ente </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ffffff" height="0.5cm">
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-weight="bold">DESTINATARIO AVVISO </fo:inline>
									<fo:inline font-size="6pt"> Cod. Fiscale </fo:inline>
									<fo:inline font-size="6pt" font-style="italic"> cf_destinatario </fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
						<fo:table-row> 
							<fo:table-cell>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-style="italic" font-weight="bold">
									ente_creditore
								</fo:block>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-style="italic">
									settore_ente
								</fo:block>
								<fo:block font-size="6pt" margin-top="0.7cm" margin-left="1cm" font-style="italic">
									into_ente
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-style="italic" font-weight="bold">
									nome_cognome_destinatario
								</fo:block>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-style="italic">
									indirizzo_destinatario
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
				<!-- 2° parte del bollettino -->
				<fo:table margin-top="1cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="10.48cm" />
					<fo:table-column column-width="0.4mm" />
					<fo:table-column column-width="10.48cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-weight="bold">QUANTO E QUANDO PAGARE? </fo:inline>
									<fo:inline font-size="6pt" font-style="italic"> pagamento_rateale </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ffffff" height="0.5cm">
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-weight="bold">DOVE PAGARE? </fo:inline>
									<fo:inline font-size="6pt"> Lista dei canali di pagamento su </fo:inline>
									<fo:inline font-size="6pt" font-weight="bold"> www.pagopa.gov.it </fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
						<fo:table-row> 
							<fo:table-cell>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-style="italic" font-weight="bold">
									<fo:inline font-weight="bold" font-style="italic">Importo </fo:inline>
									<fo:inline font-size="10pt" font-weight="bold"> Euro </fo:inline>
									<fo:inline font-size="6pt" font-weight="bold"> entro il </fo:inline>
									<fo:inline font-weight="bold" font-style="italic"> data </fo:inline>
								</fo:block>
								<fo:block margin-left="1cm" font-style="italic">
									<fo:inline>Puoi pagare con una unica rata </fo:inline>
									<fo:inline font-weight="bold">una unica rata </fo:inline>
									<fo:inline font-size="6pt" font-style="italic"> rate </fo:inline>
								</fo:block>
								<fo:block font-size="6pt" margin-top="0.7cm" margin-left="1cm" font-style="italic">
									L'importo è aggiornato automaticamente dal sistema e potrebbe
									subire variazioni per eventuali sgravi, note di credito, indennità di
									mora, sanzioni o interessi, ecc. Un operatore, il sito o l’app che userai
									ti potrebbero quindi chiedere una cifra diversa da quella qui indicata.
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:table margin-top="0.7cm" table-layout="fixed" width="10.48cm" border-collapse="separate">    
									<fo:table-column column-width="8.48cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-body>
										<fo:table-row> 
											<fo:table-cell margin-left="1cm">
												<fo:block font-weight="bold">
													PAGA SUL SITO O CON LE APP
												</fo:block>
												<fo:block>
													<fo:inline font-size="6pt" font-style="italic"> del_tuo_ente </fo:inline>
													<fo:inline font-size="6pt" font-style="italic"> di_poste </fo:inline>
													<fo:inline font-size="6pt" width="5cm" font-style="italic"> della tua Banca o
														degli altri canali di pagamento. Potrai pagare con
														carte, conto corrente, CBILL. 
													</fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block>
													<fo:external-graphic src="url('loghi/immagine1.jpg')"  vertical-align="middle" content-height="50" content-width="43" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row> 
											<fo:table-cell margin-left="1cm">
												<fo:block font-weight="bold" margin-top="0.7cm">
													PAGA SUL TERRITORIO
												</fo:block>
												<fo:block font-size="6pt">
													in tutti gli Uffici Postali, in Banca, in Ricevitoria, dal
													Tabaccaio, al Bancomat, al Supermercato.
													Potrai pagare in contanti, con carte o conto corrente.
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block margin-top="0.7cm">
													<fo:external-graphic src="url('loghi/immagine2.jpg')"  vertical-align="middle" content-height="50" content-width="44" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- riga di mezzo -->
				<fo:block margin-left="1cm" margin-top="0.5cm">
					<fo:inline>Utilizza la porzione di avviso relativa </fo:inline>
					<fo:inline font-style="italic"> alla_rata </fo:inline>
					<fo:inline> al canale di pagamento che preferisci. </fo:inline>
				</fo:block>
				
				<!-- 3° parte del bollettino -->
				<fo:block-container left="0mm" width="21cm" height="0.5cm" margin-top="1cm" space-before="0mm" background-color="#ededed">
					<fo:block margin-left="1cm" margin-right="1cm" padding-top="3px" text-align-last="justify">
					  <fo:inline font-weight="bold"> BANCHE E ALTRI CANALI </fo:inline>
					  <fo:leader leader-pattern="space" />
					  <fo:inline font-weight="bold"> RATA UNICA entro il </fo:inline>
					  <fo:inline font-style="italic" font-weight="bold"> data </fo:inline>
					</fo:block>
				</fo:block-container>
				<fo:table margin-right="1cm" margin-top="0.5cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="12cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell margin-left="1cm">
								<fo:block>
									Qui accanto trovi il codice QR e
									il codice interbancario CBILL
									per pagare attraverso il circuito
									bancario e gli altri canali di
									pagamento abilitati.
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									QUI ANDREBBE IL QR CODE
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align-last="justify">
									<fo:inline>Destinatario </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> nome_cognome_destinatario </fo:inline>
									<fo:leader leader-pattern="space" />
									<fo:inline> Euro </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> importo </fo:inline>
								</fo:block>
								<fo:block>
									<fo:inline>Ente Creditore </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> ente_creditore </fo:inline>
								</fo:block>
								<fo:block>
									<fo:inline>Oggetto del pagamento </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> oggetto_del_pagamento </fo:inline>
								</fo:block>
								<fo:table margin-right="1cm" margin-top="0.5cm" table-layout="fixed" width="14.0cm" border-collapse="separate">    
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="6cm" />
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell margin-top="0.3cm">
												<fo:block>
													Codice CBILL
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block>
													Codice Avviso
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block>
													Cod. Fiscale Ente Creditore
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-style="italic" font-weight="bold">
													cbill
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-style="italic" font-weight="bold">
													codice_avviso
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-style="italic" font-weight="bold">
													cf_ente
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
				<!-- 4° parte del bollettino (INTESTAZIONE) -->
				<fo:table margin-top="1cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-weight="bold">BOLLETTINO POSTALE PA </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px">
									IMMAGINE BANCOPOSTA
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align="right">
									<fo:inline font-weight="bold"> RATA UNICA entro il </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> data </fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- 4° parte del bollettino (CORPO) -->
				<fo:table margin-top="1cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="11cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell margin-left="1cm">
								<fo:block>
									IMMAGINE POSTEITALIANE
								</fo:block>
								<fo:block>
									Qui accanto trovi il codice QR e
									il codice interbancario CBILL
									per pagare attraverso il circuito
									bancario e gli altri canali di
									pagamento abilitati.
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									<fo:inline>Intestato a </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> intestatario_conto_corrente_postale </fo:inline>
								</fo:block>
								<fo:block>
									<fo:inline>Destinatario </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> nome_cognome_destinatario </fo:inline>
								</fo:block>
								<fo:block>
									<fo:inline>Oggetto del pagamento </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> oggetto_del_pagamento </fo:inline>
								</fo:block>
								<fo:table margin-right="1cm" margin-top="0.5cm" table-layout="fixed" width="14.0cm" border-collapse="separate">    
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="6cm" />
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell margin-top="0.3cm">
												<fo:block>
													Codice Avviso
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block>
													Tipo
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block>
													Cod. Fiscale Ente Creditore
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-style="italic" font-weight="bold">
													codice_avviso
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-style="italic" font-weight="bold">
													P1
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-style="italic" font-weight="bold">
													cf_ente
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align="right">
									<fo:inline font-weight="bold">Euro </fo:inline>
									<fo:inline font-style="italic" font-weight="bold"> importo </fo:inline>
								</fo:block>
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align="right">
									QUI
									ANDREBBE IL
									DATA MATRIX
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>