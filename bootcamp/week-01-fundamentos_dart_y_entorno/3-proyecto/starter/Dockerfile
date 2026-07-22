# ponytail: imagen oficial dart:stable trae el SDK completo —
# no reinventamos la instalación manual del SDK.
FROM dart:stable

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .

CMD ["dart", "test"]
