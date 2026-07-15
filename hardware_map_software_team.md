# 📘 Mapping Matériel pour l'équipe Logicielle (Hardware Handoff)
Généré automatiquement depuis le projet Vivado.

## 1. 🗺️ Registres et Périphériques AXI (Memory Map)

| Périphérique (Instance) | Type d'IP | Adresse de Base | Taille |
|---|---|---|---|
| **processing_system7_0** | `processing_system7` | **0x41200000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x41210000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x41220000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x41230000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x41240000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x41250000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x41260000** | 0x00010000 |
| **processing_system7_0** | `processing_system7` | **0x42C00000** | 0x00010000 |

## 2. ⚙️ Configuration des AXI GPIO

| Instance | Canal | Largeur | Direction | Connecté à (Ports externes) |
|---|---|---|---|---|
| **axi_gpio_0** | 1 | 6 bits | Sortie | `Réseau Interne (Passe par un bloc logique)` |
| **axi_gpio_1** | 1 | 24 bits | Sortie | `Réseau Interne (Passe par un bloc logique)` |
| **axi_gpio_2** | 1 | 1 bits | Sortie | `SPI_WAKE ` |
| **axi_gpio_3** | 1 | 1 bits | Sortie | `SPI_RST ` |
| **axi_gpio_4** | 1 | 1 bits | Entrée | `SPI_INT ` |
| **axi_gpio_5** | 1 | 1 bits | Sortie | `SPI_CS ` |
| **axi_gpio_6** | 1 | 1 bits | Sortie | `Réseau Interne (Passe par un bloc logique)` |

## 3. 🔌 Configuration Zynq EMIO (Routage PS -> PL vers extérieur)

| Interface / Pin Zynq | Type de bus | Connecté au port externe |
|---|---|---|
| `MDIO_ETHERNET_0` | Interface EMIO | **MDIO_ETHERNET_0_0** |
| `CAN1_PHY_RX` | Broche (Pin) | **CAN1_PHY_RX_0** |
| `CAN1_PHY_TX` | Broche (Pin) | **CAN1_PHY_TX_0** |
| `ENET0_GMII_RX_CLK` | Broche (Pin) | **ENET0_GMII_RX_CLK_0** |
| `ENET0_GMII_RX_DV` | Broche (Pin) | **ENET0_GMII_RX_DV_0** |
| `ENET0_GMII_TX_CLK` | Broche (Pin) | **ENET0_GMII_TX_CLK_0** |
| `ENET0_GMII_TX_EN` | Broche (Pin) | **ENET0_GMII_TX_EN_0** |
| `SPI0_MISO_I` | Broche (Pin) | **SPI0_MISO_I_0** |
| `SPI0_MOSI_O` | Broche (Pin) | **SPI0_MOSI_O_0** |
| `SPI0_SCLK_O` | Broche (Pin) | **SPI0_SCLK_O_0** |

## 4. 🔗 Liste Globale des Ports Externes (I/O)

Tableau croisant les ports du Block Design avec les broches physiques extraites des fichiers de contraintes (`.xdc`).

| Nom du Port | Direction | Type | **Broche Physique (FPGA)** |
|---|---|---|---|
| **AU** | Entrée (Input) | undef | *Non trouvée* |
| **CAN1_PHY_RX_0** | Entrée (Input) | undef | **L17** |
| **CAN1_PHY_TX_0** | Sortie (Output) | undef | **L16** |
| **DDR_addr** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_ba** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_cas_n** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_ck_n** | Bidirectionnel (In/Out) | clk | *Non trouvée* |
| **DDR_ck_p** | Bidirectionnel (In/Out) | clk | *Non trouvée* |
| **DDR_cke** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_cs_n** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_dm** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_dq** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_dqs_n** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_dqs_p** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_odt** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_ras_n** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DDR_reset_n** | Bidirectionnel (In/Out) | rst | *Non trouvée* |
| **DDR_we_n** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **DIR_o_0** | Sortie (Output) | undef | **U12** |
| **ENET0_GMII_RX_CLK_0** | Entrée (Input) | clk | **K17** |
| **ENET0_GMII_RX_DV_0** | Entrée (Input) | undef | **K18** |
| **ENET0_GMII_TX_CLK_0** | Entrée (Input) | clk | **L14** |
| **ENET0_GMII_TX_EN_0** | Sortie (Output) | undef | **N16** |
| **FIXED_IO_ddr_vrn** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **FIXED_IO_ddr_vrp** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **FIXED_IO_mio** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **FIXED_IO_ps_clk** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **FIXED_IO_ps_porb** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **FIXED_IO_ps_srstb** | Bidirectionnel (In/Out) | undef | *Non trouvée* |
| **IO_1** | Entrée (Input) | undef | **T11** |
| **IO_2** | Entrée (Input) | undef | **T15** |
| **IO_3** | Entrée (Input) | undef | **T14** |
| **MDIO_ETHERNET_0_0_mdc** | Sortie (Output) | clk | **G14** |
| **MDIO_ETHERNET_0_0_mdio_i** | Entrée (Input) | undef | *Non trouvée* |
| **MDIO_ETHERNET_0_0_mdio_o** | Sortie (Output) | undef | *Non trouvée* |
| **MDIO_ETHERNET_0_0_mdio_t** | Sortie (Output) | undef | *Non trouvée* |
| **PL_UART0_RX** | Entrée (Input) | undef | **F16** |
| **PL_UART0_TX** | Sortie (Output) | undef | **E19** |
| **SPI0_MISO_I_0** | Entrée (Input) | undef | **E17** |
| **SPI0_MOSI_O_0** | Sortie (Output) | undef | **D18** |
| **SPI0_SCLK_O_0** | Sortie (Output) | undef | **H17** |
| **SPI_CS** | Sortie (Output) | undef | *Non trouvée* |
| **SPI_INT** | Entrée (Input) | undef | *Non trouvée* |
| **SPI_RST** | Sortie (Output) | undef | *Non trouvée* |
| **SPI_WAKE** | Sortie (Output) | undef | *Non trouvée* |
| **TEAM** | Entrée (Input) | undef | *Non trouvée* |
| **TIRETTE** | Entrée (Input) | undef | *Non trouvée* |
| **UART_IO** | Bidirectionnel (In/Out) | undef | **V13** |
| **enet0_gmii_rxd** | Entrée (Input) | undef | *Non trouvée* |
| **enet0_gmii_txd** | Sortie (Output) | undef | *Non trouvée* |
| **led_out_0** | Sortie (Output) | undef | **T17** |
