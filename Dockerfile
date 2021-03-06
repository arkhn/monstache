####################################################################################################
# Step 1: Build the app
####################################################################################################

FROM rwynn/monstache-builder-cache-rel6:1.0.5 AS build-app

RUN mkdir /app

WORKDIR /app

COPY . .

RUN go mod download

RUN make release

RUN go build -buildmode=plugin -o fhirstore_map_documents.so fhirstore_map_documents.go

####################################################################################################
# Step 2: Copy output build file to an alpine image
####################################################################################################

FROM rwynn/monstache-alpine:3.11.3

COPY --from=build-app /app/build/linux-amd64/monstache /bin/monstache

COPY --from=build-app /app/fhirstore_map_documents.so /lib/fhirstore_map_documents.so

ENTRYPOINT ["/bin/monstache", "-mapper-plugin-path", "/lib/fhirstore_map_documents.so"]
