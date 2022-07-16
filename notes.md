Summary:
1 mgmt cluster only (hybrid)
- Since Gloo Mesh and the Gloo Mesh Agent are in the same cluster, we can configure both to communicate over ClusterIP
gloo mesh 2.0.9
istio 1.13.4 with revisions
north/south gateway only

mgmt ingress exposing:

argocd at on port 443 at /argo
host: argocd.glootest.com, argocd-local.glootest.com

gloo mesh on port 443 
host: gmui-local.glootest.com, gmui-local.glootest.com

httpbin on 80 at /get
host: httpbin.glootest.com, httpbin-local.glootest.com
- this route is rate limited at 20 req/sec
- when you are rate limited, the transformationfilter provides a pretty message
- log4j WAF policy enabled on this route

httpbin on 443 at /get
host: httpbin.glootest.com, httpbin-local.glootest.com
- this route has no limits
- this route has OPA policy attached
    - users with @solo.io can access path /get and path with prefix /anything
    - users with @gmail.com can only access exact path /anything/protected
- JWTPolicy enabled - extracts x-email and x-organization claims to headers
- Transformation policy extracts the x-organization header from x-email header using regex
- log4j WAF policy enabled on this route

grafana on port 443 at /grafana
host: grafana.glootest.com, grafana-local.glootest.com

bookinfo on 80 at /productpage
host: bookinfo.glootest.com, bookinfo-local.glootest.com
- this route is rate limited at 15 req/sec
- when you are rate limited, the transformationfilter provides a pretty message
- log4j WAF policy enabled on this route

bookinfo on 443 at /productpage
host: bookinfo.glootest.com, bookinfo-local.glootest.com
- this route has no limits
- log4j WAF policy enabled on this route