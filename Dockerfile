# Usa la imagen oficial de Ruby
FROM ruby:3.0.0

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el Gemfile y el Gemfile.lock al contenedor
COPY Gemfile Gemfile.lock ./

# Instala las gemas
RUN bundle install

# Copia el resto de la aplicación al contenedor
COPY . .

# Expón el puerto 3000 para la aplicación Rails
EXPOSE 3000

# Ejecuta el servidor Rails al iniciar el contenedor
CMD ["rails", "s", "-b", "0.0.0.0"]
