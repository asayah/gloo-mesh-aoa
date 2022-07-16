Summary:
1 mgmt / 1 leaf
gloo mesh 2.0.8
istio 1.13.4 with revisions
both have north/south and east/west gateways
cert manager deployed in the cert-manager namespace

mgmt ingress exposing:
argocd on port 80 at /argo
gloo mesh on port 443 
httpbin on 80 at /get
- this route is rate limited at 20 req/sec
- when you are rate limited, the transformationfilter provides a pretty message
httpbin on 443 at /get
- this route has no limits
grafana on port 443 at /grafana

cluster1 ingress exposing:
argocd on port 80 at /argo

bookinfo on 80 at /productpage
- this route is rate limited at 15 req/sec
- when you are rate limited, the transformationfilter provides a pretty message
- log4shell waf policy enabled

bookinfo on 443 at /productpage
- this route has no limits
- log4shell waf policy enabled