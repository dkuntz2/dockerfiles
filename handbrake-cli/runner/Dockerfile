FROM handbrakecli

ENV movie "video"
ENV input "/dev/sr0"
ENV format "dvd"
ENV preset ""

COPY runner /runner
RUN chmod +x /runner

COPY textme /textme

VOLUME ["/output"]

ENTRYPOINT []
CMD /runner
