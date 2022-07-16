# Summary:
1 mgmt / 2 leaf
gloo mesh 2.0.9
All clusters have istio 1.13.4 with revisions
All clusters have north/south and east/west gateways
cert manager deployed in cert-manager namespace on mgmt cluster

## mgmt ingress exposing:
argocd on port 80 at /argo

gloo mesh on port 443 

httpbin on 80 at /get
- this route is rate limited at 20 req/sec
- when you are rate limited, the transformationfilter provides a pretty message
- log4shell waf policy enabled

httpbin on 443 at /get
- this route has no limits
- log4shell waf policy enabled
grafana on port 443 at /grafana

## cluster1 ingress exposing:
argocd on port 80 at /argo

bookinfo on 80 at /productpage
- this route is rate limited at 15 req/sec
- when you are rate limited, the transformationfilter provides a pretty message
- log4shell waf policy enabled

bookinfo on 443 at /productpage
- this route has no limits
- log4shell waf policy enabled

## cluster2 ingress exposing:
argocd on port 80 at /argo

bookinfo on 80 at /productpage
- this route has no limits
- log4shell waf policy enabled

bookinfo on 443 at /productpage
- this route has no limits
- log4shell waf policy enabled
