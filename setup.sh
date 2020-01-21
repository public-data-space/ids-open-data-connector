#Clone adapters
git clone https://github.com/public-data-space/odc-adapter-postgres.git ./adapters/odc-adapter-postgres
git clone https://github.com/public-data-space/odc-adapter-ckan.git ./adapters/odc-adapter-ckan

#Clone backend
git clone https://github.com/public-data-space/odc-config-manager.git ./backend/odc-config-manager
git clone https://github.com/public-data-space/odc-adapter-gateway.git ./backend/odc-adapter-gateway
git clone https://github.com/public-data-space/odc-manager.git ./backend/odc-manager
git clone https://github.com/public-data-space/odc-service-docker.git ./backend/odc-service-docker

#Clone frontend
git clone https://github.com/public-data-space/odc-frontend.git ./frontend/odc-frontend

sh startup.sh
