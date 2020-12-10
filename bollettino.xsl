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
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">AVVISO DI PAGAMENTO</fo:inline>
								</fo:block>
								<fo:block margin-left="1cm" margin-right="0.2cm" text-align-last="justify">
									<fo:leader leader-pattern="space" />
								</fo:block>
								<fo:block margin-left="1cm" margin-right="0.2cm" text-align-last="justify" font-size="14pt">
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="16pt">
										<xsl:value-of select="bollettino/oggetto_del_pagamento" />
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
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">ENTE CREDITORE </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt"> Cod. Fiscale </fo:inline>
									<fo:inline font-family="Roboto Mono" font-weight="normal" font-size="8pt"> <xsl:value-of select="bollettino/ente/cf_ente" /> </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ffffff" height="0.5cm">
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">DESTINATARIO AVVISO </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt"> Cod. Fiscale </fo:inline>
									<fo:inline font-family="Roboto Mono" font-weight="normal" font-size="8pt"> <xsl:value-of select="bollettino/destinatario/cf_destinatario" /></fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
						<fo:table-row> 
							<fo:table-cell>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-family="Titillium Web" font-weight="bold" font-size="12pt">
									<xsl:value-of select="bollettino/ente/ente_creditore" />
								</fo:block>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-family="Titillium Web" font-weight="regular" font-size="12pt">
									<xsl:value-of select="bollettino/ente/settore_ente" />
								</fo:block>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-family="Titillium Web" font-weight="regular" font-size="8pt">
									<xsl:value-of select="bollettino/ente/info_ente" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-family="Titillium Web" font-weight="bold" font-size="12pt">
									<xsl:value-of select="bollettino/destinatario/nome_cognome_destinatario" />
								</fo:block>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-family="Titillium Web" font-weight="regular" font-size="12pt">
									<xsl:value-of select="bollettino/destinatario/indirizzo_destinatario" />
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
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">QUANTO E QUANDO PAGARE? </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt"> <xsl:value-of select="bollettino/pagamento_rateale" /> </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ffffff" height="0.5cm">
								<fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">DOVE PAGARE? </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt"> Lista dei canali di pagamento su </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> www.pagopa.gov.it </fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
						<fo:table-row> 
							<fo:table-cell>
								<fo:block margin-top="0.7cm" margin-left="1cm">
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="16pt"><xsl:value-of select="bollettino/importo" /> </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="16pt"> Euro </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> entro il </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="16pt"> <xsl:value-of select="bollettino/data" /> </fo:inline>
								</fo:block>
								<fo:block margin-left="1cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Puoi pagare con una unica rata </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt">una unica rata </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt"> rate </fo:inline>
								</fo:block>
								<fo:block margin-top="0.7cm" margin-left="1cm" font-family="Titillium Web" font-weight="normal" font-size="8pt">
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
												<fo:block font-family="Titillium Web" font-weight="bold" font-size="10pt">
													PAGA SUL SITO O CON LE APP
												</fo:block>
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													<fo:inline> del_tuo_ente </fo:inline>
													<fo:inline> di_poste </fo:inline>
													<fo:inline width="5cm"> della tua Banca o
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
												<fo:block font-family="Titillium Web" font-weight="bold" font-size="8pt" margin-top="0.7cm">
													PAGA SUL TERRITORIO
												</fo:block>
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
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
				<fo:block margin-left="1cm" margin-top="0.5cm" font-family="Titillium Web" font-weight="normal" font-size="12pt">
					<fo:inline>Utilizza la porzione di avviso relativa </fo:inline>
					<fo:inline> <xsl:value-of select="bollettino/alla_rata" /> </fo:inline>
					<fo:inline> al canale di pagamento che preferisci. </fo:inline>
				</fo:block>
				
				<!-- 3° parte del bollettino INTESTAZIONE-->
				<fo:table margin-top="0cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">BANCHE E ALTRI CANALI </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="2px">
							        <fo:leader leader-pattern="space" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align="left">
									<fo:inline font-family="Titillium Web Black" font-weight="normal" font-size="10pt"> RATA UNICA </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt"> entro il </fo:inline>
									<fo:leader leader-pattern="space" />
									<fo:leader leader-pattern="space" />
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt"> <xsl:value-of select="bollettino/data" /> </fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- 3° parte del bollettino CORPO-->
				<fo:table margin-right="1cm" margin-top="0.5cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="6cm" />
					<fo:table-column column-width="3cm" />
					<fo:table-column column-width="12cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell margin-left="1cm">
								<fo:block font-family="Titillium Web" font-weight="normal" font-size="9pt">
									Qui accanto trovi il codice <fo:inline font-weight="bold">QR</fo:inline>
									e il codice interbancario <fo:inline font-weight="bold">CBILL</fo:inline>
									per pagare attraverso il circuito
									bancario e gli altri canali di
									pagamento abilitati.
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block>
									<fo:external-graphic src="url('barcode/qrcode_codiceAvviso.jpg')" vertical-align="middle"  content-height="90" content-width="90" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align-last="justify" margin-top="0.3cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Destinatario </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> <xsl:value-of select="bollettino/destinatario/nome_cognome_destinatario" /> </fo:inline>
									<fo:leader leader-pattern="space" />
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="10pt"> Euro </fo:inline>
									<fo:inline font-family="Roboto Mono" font-weight="bold" font-size="12pt"> <xsl:value-of select="bollettino/importo" /> </fo:inline>
								</fo:block>
								<fo:block margin-top="0.3cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Ente Creditore </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> <xsl:value-of select="bollettino/ente/ente_creditore" /> </fo:inline>
								</fo:block>
								<fo:block margin-top="0.3cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Oggetto del pagamento </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> <xsl:value-of select="bollettino/oggetto_del_pagamento" /> </fo:inline>
								</fo:block>
								<fo:table margin-right="1cm" margin-top="0.5cm" table-layout="fixed" width="14.0cm" border-collapse="separate">    
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="6cm" />
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell margin-top="0.3cm">
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													Codice CBILL
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													Codice Avviso
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													Cod. Fiscale Ente Creditore
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Roboto Mono" font-weight="bold" font-size="10pt">
													<xsl:value-of select="bollettino/cbill" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-family="Roboto Mono" font-weight="bold" font-size="10pt">
													<xsl:value-of select="bollettino/codice_avviso" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-family="Roboto Mono" font-weight="bold" font-size="10pt">
													<xsl:value-of select="bollettino/ente/cf_ente" />
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
				<fo:external-graphic src="url('loghi/forbici_793_17.jpg')"  vertical-align="bottom" content-height="13" content-width="21.0cm" />
				<fo:table margin-top="0cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="7cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm">
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt">BOLLETTINO POSTALE PA </fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="2px">
									<fo:external-graphic src="url('loghi/bancoposta.jpg')"  vertical-align="middle" content-height="8" content-width="56" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="#ededed" height="0.5cm">
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align="left">
									<fo:inline font-family="Titillium Web Black" font-weight="normal" font-size="10pt"> RATA UNICA </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt"> entro il </fo:inline>
									<fo:leader leader-pattern="space" />
									<fo:leader leader-pattern="space" />
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="10pt"> <xsl:value-of select="bollettino/data" /> </fo:inline>
								</fo:block>
							</fo:table-cell>   
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- 4° parte del bollettino (CORPO) -->
				<fo:table margin-top="1cm" table-layout="fixed" width="21.0cm" border-collapse="separate">    
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="10cm" />
					<fo:table-column column-width="4cm" />
					<fo:table-body>
						<fo:table-row> 
							<fo:table-cell margin-left="1cm" margin-right="1cm">
								<fo:block>
									<fo:external-graphic src="url('loghi/posteitaliane.jpg')"   content-height="66" content-width="124" />
								</fo:block>
								<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
									Bollettino Postale pagabile in tutti 
									gli Uffici Postali e sui canali fisici o 
									digitali abilitati di Poste Italiane e 
									dell’Ente Creditore
								</fo:block>
								<fo:block font-family="Titillium Web" font-weight="normal" font-size="6pt">
									<xsl:value-of select="bollettino/autorizzazione" />
								</fo:block>
							</fo:table-cell>
							<fo:table-cell margin-right="1cm">
								<fo:block >
									<fo:external-graphic src="url('loghi/euro.jpg')" vertical-align="middle"  content-height="20" content-width="20" />
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="10pt"> sul C/C n. </fo:inline>
									<fo:inline font-family="Roboto Mono" font-weight="bold" font-size="12pt"> <xsl:value-of select="bollettino/numero_cc_postale" /> </fo:inline>
								</fo:block>
								<fo:block margin-top="0.3cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Intestato a </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> <xsl:value-of select="bollettino/intestatario_conto_corrente_postale" /> </fo:inline>
								</fo:block>
								<fo:block margin-top="0.3cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Destinatario </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> <xsl:value-of select="bollettino/destinatario/nome_cognome_destinatario" /> </fo:inline>
								</fo:block>
								<fo:block margin-top="0.3cm">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="8pt">Oggetto del pagamento </fo:inline>
									<fo:inline font-family="Titillium Web" font-weight="bold" font-size="8pt"> <xsl:value-of select="bollettino/oggetto_del_pagamento" /> </fo:inline>
								</fo:block>
								<fo:table margin-right="1cm" margin-top="0.5cm" table-layout="fixed" width="14.0cm" border-collapse="separate">    
									<fo:table-column column-width="4cm" />
									<fo:table-column column-width="2cm" />
									<fo:table-column column-width="6cm" />
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell margin-top="0.3cm" >
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													Codice Avviso
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													Tipo
												</fo:block>
											</fo:table-cell>
											<fo:table-cell margin-top="0.3cm">
												<fo:block font-family="Titillium Web" font-weight="normal" font-size="8pt">
													Cod. Fiscale Ente Creditore
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block font-family="Roboto Mono" font-weight="bold" font-size="10pt">
													<xsl:value-of select="bollettino/codice_avviso" />
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-family="Roboto Mono" font-weight="bold" font-size="10pt">
													P1
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-family="Roboto Mono" font-weight="bold" font-size="10pt">
													<xsl:value-of select="bollettino/ente/cf_ente" />
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align-last="left">
									<fo:inline font-family="Titillium Web" font-weight="normal" font-size="10pt">Euro</fo:inline>
									<fo:leader leader-pattern="space" />
									<fo:inline font-family="Roboto Mono" font-weight="bold" font-size="12pt"> <xsl:value-of select="bollettino/importo" /> </fo:inline>
								</fo:block>
								<fo:block padding-top="3px" margin-left="1cm" margin-right="1cm" text-align="right">
									<fo:external-graphic src="url('barcode/datamatrix_codiceAvviso.jpg')" vertical-align="middle"  content-height="75" content-width="75" />
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