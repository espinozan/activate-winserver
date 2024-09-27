# activate-winserver
Activator of windowsserver 2022


### Documentación del Programa de Activación de Windows Server

#### **Descripción del Programa**
Este programa es un ejecutable `ACTIVATE-WINSERVER2022.exe` creado a partir de un script en PowerShell que permite activar diversas versiones de Windows Server 2022 (Standard o Datacenter). El programa incluye un menú interactivo que permite al usuario elegir entre activar Windows Server usando un servidor KMS de una lista predefinida o configurar un servidor KMS personalizado.

El programa también desactiva temporalmente el firewall y la ejecución de scripts en PowerShell para asegurar una ejecución correcta y segura. Una vez finalizada la activación, el firewall se reactiva y la ejecución de scripts se desactiva, dejando el sistema protegido.

#### **Flujo de Ejecución**
El proceso de activación incluye dos scripts:
1. **Batch Script "ONOFFON-ACTIVATOR.BAT"(Pre/Post Ejecución del ACTIVATE-WINSERVER2022.exe):**
   - Desactiva el firewall y permite la ejecución de scripts en PowerShell.
   - Después de la ejecución del ACTIVATE-WINSERVER2022.exe, reactiva el firewall y bloquea la ejecución de scripts en PowerShell.
   
2. **ACTIVATE-WINSERVER2022.exe de Activación de Windows (Generado desde PowerShell):**
   - Proporciona un menú para seleccionar la edición de Windows Server a activar (Standard o Datacenter).
   - Da la opción de configurar un servidor KMS personalizado o elegir uno de una lista.
   - Realiza la activación de Windows Server usando la clave proporcionada y el servidor KMS seleccionado.

#### **Pasos de Uso**

1. **Ejecutar el script Batch (ONOFFON-ACTIVATOR.bat):**
   - Este primer script debe ejecutarse con privilegios de administrador.
   - Desactiva el firewall y habilita la ejecución de scripts en PowerShell para que el programa pueda ejecutarse correctamente.


2. **Ejecutar el ACTIVATE-WINSERVER2022.exe para la Activación:**
   - Ejecute el archivo `ACTIVATE-WINSERVER2022.exe` que contiene el script de PowerShell. El usuario será guiado a través de un menú interactivo para seleccionar:
     - La edición de Windows Server a activar.
     - La opción de usar un servidor KMS predefinido o configurado manualmente.
   - La activación se llevará a cabo, y el estado se verificará automáticamente.

3. **Ejecutar el script Batch "ONOFFON-ACTIVATOR.bat" (Post-Ejecución):**
   - Una vez que el `ACTIVATE-WINSERVER2022.exe` finalice, se ejecuta nuevamente el script Batch para:
     - Reactivar el firewall.
     - Desactivar la ejecución de scripts en PowerShell para mayor seguridad.
   - Finalmente, el script solicitará reiniciar el sistema para completar el proceso.

#### **Requisitos**
- **Privilegios de Administrador**: Todos los scripts deben ejecutarse con privilegios de administrador.
- **PowerShell v5.1 o superior**: El ACTIVATE-WINSERVER2022.exe está basado en PowerShell y requiere que esté instalado y habilitado.
- **Firewall**: El firewall se desactiva temporalmente durante la ejecución del .exe para evitar bloqueos con servidores KMS.
  
#### **Importante**
- **Seguridad**: La ejecución de scripts en PowerShell solo se habilita temporalmente y luego se desactiva para evitar riesgos.
- **Reinicio**: Después de ejecutar todos los pasos, el sistema se reinicia automáticamente para aplicar todos los cambios de forma correcta.

### **FAQ**

**¿Qué hacer si la activación falla?**
- Si no se puede conectar a un servidor KMS, asegúrate de que el firewall esté desactivado y que el servidor KMS sea accesible. Puedes intentar con otro servidor KMS desde el menú del programa.

**¿Por qué se desactiva el firewall?**
- Algunos servidores KMS externos pueden requerir la desactivación temporal del firewall para establecer conexión. Una vez terminada la activación, el firewall se reactiva automáticamente para mantener la seguridad del sistema.
