FROM grafana/grafana:9.5.2

# Switch to root user to make changes
USER root


## Replace Favicon and Apple Touch
COPY img/fav32.png /usr/share/grafana/public/img
COPY img/fav32.png /usr/share/grafana/public/img/apple-touch-icon.png


# Copy custom logo
COPY grafana_icon.svg /usr/share/grafana/public/img/grafana_icon.svg

# Update Title
RUN sed -i 's|<title>\[\[.AppTitle\]\]</title>|<title>Monotch Dashbaords</title>|g' /usr/share/grafana/public/views/index.html


# Switch back to the default Grafana user
USER grafana