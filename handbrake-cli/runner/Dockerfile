FROM handbrakecli

ENV movie "video"
ENV input "/dev/sr0"

COPY runner /runner
RUN chmod +x /runner

VOLUME ["/output"]

ENTRYPOINT []
CMD /runner
