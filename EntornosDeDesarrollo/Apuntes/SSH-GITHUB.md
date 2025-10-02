# Cómo crear un nuevo perfil de SSH para acceder al contenido de tu GitHub.

1. Instala SSH -> Usa el comando "sudo apt install ssh".

2. Crea la clave SSH -> Ejecuta "ssh-keygen -t ed25519 -C "correo@tuyo.com"".

3. Darle una contraseña, o darle enter si no quieres darle.

4. Hacer funcionar el gestor de claves -> Usar el comando "eval "$(ssh-agent -s)"".

5. Añadir clave privada al SSH -> Usar "ssh-add ~/.ssh/id\_ed25519".

6. Ejecutar "cat ~/.ssh/id\_ed25519.pub".

7. Ir a la página de de GitHub -> Con lo antes creado, colocarla en la Claves SSH de nuestros ajuste de GitHub.

8. Clonar repositorio de nuestra GitHub.

9. Añadir el nombre de usuario y su respectivo correo (el personal si es público, o el de Git Hub si lo tenemos privado)
git config --global user.name "usuario"
git config --global user.email usuario@example.com
