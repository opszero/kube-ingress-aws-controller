FROM alpine:3.5
MAINTAINER Team Teapot @ Zalando SE <team-teapot@zalando.de>

# add scm-source
ADD scm-source.json /

# add binary
ADD build/linux/kube-aws-ingress-controller /

ENTRYPOINT ["/kube-aws-ingress-controller"]
