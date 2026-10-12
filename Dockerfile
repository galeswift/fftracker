# Production image for the tracker, deployed by Coolify on every push to master.
# Plain static files served by nginx at www.ff4fedraft.com/tracker.
FROM nginx:1.27.5-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
RUN rm /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/nginx.conf /usr/share/nginx/html/.dockerignore
