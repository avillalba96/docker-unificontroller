# docker-unificontroller

1. Ejecutar el siguiente script para preparar tu servicio:

```bash
./install_docker.sh
```

2. Para generar el String-43 del DHCP se convierte la IP desde <https://www.miniwebtool.com/ip-address-to-hex-converter/> quedando el ejemplo asi

```bash
192.168.66.50 = HEX:0xC0A84232
```

2.1. Para PFSENSE
Y hay que quedarse con "C0A84232" y agregar 0104 quedando un total "01:04:C0:A8:42:32"

2.2. Para MIKROTIK (<https://serversideup.net/blog/automatic-controller-assignment-unifi-dhcp-option-43-mikrotik-routers/>)
Y hay que quedarse con "0xC0A84232" y agregar 0104 quedando un total "0x0104C0A84232"
