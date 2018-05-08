FROM plexinc/pms-docker:beta
#hardware acceleration (also needs access to /dev/dri)
RUN apt-get update -qqy && \
    apt-get install -qqy i965-va-driver libva1 && \
    #change video group id to match host (for /dev/dri permissions)
    groupmod -g 91 video
