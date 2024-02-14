# Proyecto Hola Mundo
Este proyecto es una aplicación simple de "Hola Mundo" escrita en Java y desplegada automáticamente en AWS utilizando CodeDeploy.


## Estructura del proyecto
El proyecto sigue la estructura estándar de un proyecto Gradle:

- src/main/java: Contiene el código fuente de la aplicación.
- src/test/java: Contiene los tests de la aplicación.
- build.gradle: Archivo de configuración de Gradle.
- settings.gradle: Archivo de configuración de Gradle para la configuración del proyecto.
- gradlew y gradlew.bat: Scripts de Gradle Wrapper para Unix y Windows respectivamente.
- gradle/wrapper: Contiene el JAR de Gradle Wrapper y el archivo de propiedades.
- codedeploy-scripts: Contiene los scripts utilizados por AWS CodeDeploy para el despliegue de la aplicación.


## Despliegue en AWS
Este proyecto está configurado para desplegarse automáticamente en AWS utilizando CodeDeploy. Los scripts necesarios para el despliegue se encuentran en la carpeta codedeploy-scripts:

- before_install.sh: Se ejecuta antes de la instalación. Compila la aplicación utilizando Gradle y renombra el archivo WAR resultante.
- start.sh: Se ejecuta para iniciar la aplicación. Inicia el servicio Tomcat.
- stop.sh: Se ejecuta para detener la aplicación. Detiene el servicio Tomcat.
 - validation.sh: Se ejecuta para validar que la aplicación se ha desplegado correctamente. Comprueba el estado del servicio Tomcat.
  
La configuración de CodeDeploy se encuentra en el archivo appspec.yml.
