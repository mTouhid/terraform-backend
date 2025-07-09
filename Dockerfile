FROM osrm/osrm-backend:latest
# Copy contents of the data directory to /data in the container
COPY ./data /data

RUN dir -s /data